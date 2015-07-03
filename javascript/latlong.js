$(document).ready(function(){
    
});
function getMarker(radius, latlng){
    $.ajax({
        url:'class/latlong',
        method:'post',
        data: "lat=test,+rad=80"
    }).done(function(msg){
        alert(msg);
    });
}


