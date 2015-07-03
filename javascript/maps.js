// This example adds a search box to a map, using the Google Place Autocomplete
// feature. People can enter geographical searches. The search box will return a
// pick list containing a mix of places and predicted search terms.
var markers = [];
var circles = [];
var mark = [];
var marker;
var circle;
var map;
var slider;
var radius;
var radId = document.getElementById('radius');
var latlng;
var info = [];
var currentInfoWindow = null;
var icons = 'icon/star-3.png';

$(document).ready(function () {

    console.log("document ready!");
    function initialize() {

        // Create map and set bounds
        map = new google.maps.Map(document.getElementById('map-canvas'), {
            mapTypeId: google.maps.MapTypeId.ROADMAP
        });
        var defaultBounds = new google.maps.LatLngBounds(
            new google.maps.LatLng(5.880241, 95.336574),
            new google.maps.LatLng(-5.469275, 140.852050));
        map.fitBounds(defaultBounds);

        // Create the search box and link it to the UI element.
        var input = /** @type {HTMLInputElement} */(
            document.getElementById('pac-input'));
            map.controls[google.maps.ControlPosition.TOP_LEFT].push(input);

        var searchBox = new google.maps.places.SearchBox(
            /** @type {HTMLInputElement} */(input));

        // [START region_getplaces]
        // Listen for the event fired when the user selects an item from the
        // pick list. Retrieve the matching places for that item.
        google.maps.event.addListener(searchBox, 'places_changed', function () {
            var places = searchBox.getPlaces();

            if (places.length == 0) {
                return;
            }
            for (var i = 0, marker; marker = markers[i]; i++) {
                marker.setMap(null);
            }

            // For each place, get the icon, place name, and location.
            markers = [];
            var bounds = new google.maps.LatLngBounds();
            for (var i = 0, place; place = places[i]; i++) {
                bounds.extend(place.geometry.location);
            }

            map.fitBounds(bounds);
        });
        // [END region_getplaces]

        // Bias the SearchBox results towards places that are within the bounds of the
        // current map's viewport.
        google.maps.event.addListener(map, 'bounds_changed', function () {
            var bounds = map.getBounds();
            searchBox.setBounds(bounds);
        });

        // Add click event to place marker
        google.maps.event.addListener(map, 'click', function (event) {
            deleteMarker();
            marker = new google.maps.Marker({
                map: map,
                position: event.latLng,
            });

            // Set circling area
            circle = new google.maps.Circle({
                map: map,
                radius: slider.getValue() * 1000, // 10 miles in metres
                fillColor: '#AA0000'
            });
            circle.bindTo('center', marker, 'position');

            markers.push(marker);
            circles.push(circle);
            // Set Zoom
            if (map.zoom < 8) map.setZoom(8);
            if (map.getBounds().ra.A < marker.getPosition().A || map.getBounds().za.A > marker.getPosition().A)
            {
                map.setCenter(marker.getPosition());
            }
            latlng=event.latLng;
            radius=slider.getValue()*1000;

            getMarker(radius,latlng);
        });
    }

    function changeRadius()
    {
        // Resize and Reposition Circle
        circle.radius = slider.getValue() * 1000;
        circle.bindTo('center', marker, 'position');

        // Redraw Map
        getMarker(circle.radius,latlng);
    }

    function getMarker(radius, latlng){
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function() {
            if (xmlhttp.readyState==4 && xmlhttp.status==200) {

                deletes();
                var data=JSON.parse(xmlhttp.responseText);
                for(var i=0;i<data.length;i++){
                    mapsProspek(data[i].lat,data[i].lng,data[i].description);
                }
            }
        };
        xmlhttp.open("GET","class/latlong.php?lat="+latlng+"&rad="+radius,true);
        xmlhttp.send();
    };

    function mapsProspek(lat, long, desc){

        // Create infowindow
        var infowindow = new google.maps.InfoWindow({
            content: desc
        });

        var latlng=new google.maps.LatLng(lat,long);
        var markerss=new google.maps.Marker({
            map: map,
            position: latlng,
            icon: icons,
            title: desc
        });

        google.maps.event.addListener(markerss, 'click', function() {

            // Only close if not null
            closeCurrentInfoWindow();

            infowindow.open(map,markerss);
            currentInfoWindow = infowindow;
        });
        mark.push(markerss);
    }

    function closeCurrentInfoWindow(){
        // Close Active Current Info Window
        if(currentInfoWindow!=null){
            currentInfoWindow.close();
        }
    }

    function deletes(){
        if (mark) {
            for (i in mark) {
                mark[i].setMap(null);
            }
            mark.length = 0;
        }
    }

    function deleteMarker() {
        if (markers) {
            for (i in markers) {
                markers[i].setMap(null);
            }
            markers.length = 0;
        }
        if (mark) {
            for (i in mark) {
                mark[i].setMap(null);
            }
            mark.length = 0;
        }
        if (circles) {
            for (i in circles) {
                circles[i].setMap(null);
            }
            circles.length = 0;
        }
    }

    google.maps.event.addDomListener(window, 'load', initialize);
    slider = new Slider('#radius', {
        formatter: function (value) {
            return value + ' Km';
        }
    }).on('change', changeRadius);
});
