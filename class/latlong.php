<?php
include 'classDatabase.php';
if(isset($_GET['lat']) && isset($_GET['rad'])){
    $myDb=new database();
    $var=  str_replace(["(",")"], "", $_GET['lat']);
    $lat=  explode(", ", $var)[0];
    $long= explode(", ", $var)[1];
    $radius= ($_GET['rad']/1000);
    $sql="SELECT DISTINCT `ADDRESS`,lat, `long`, ( 6371 * ACOS( COS( RADIANS($lat) ) * COS( RADIANS( lat ) ) * COS( RADIANS( `LONG` ) - RADIANS($long) ) + SIN( RADIANS($lat) ) * SIN( RADIANS( lat ) ) ) ) AS distance FROM `address_lat_long` HAVING distance < $radius ORDER BY distance;";
    //$sql="SELECT DISTINCT `ADDRESS`,lat, `long`, ( 3959 * ACOS( COS( RADIANS(-6.323258) ) * COS( RADIANS( lat ) ) * COS( RADIANS( `LONG` ) - RADIANS(106.669443) ) + SIN( RADIANS(-6.323258) ) * SIN( RADIANS( lat ) ) ) ) AS distance FROM `address_lat_long` HAVING distance < 1 ORDER BY distance LIMIT 0 , 20;";
    $results = [];
    $res=$myDb->select($sql);
        while($row=  mysqli_fetch_array($res)){
            $results[] = array(
                'description' => $row[0],
                'lat' => $row[1],
                'lng' => $row[2]
        );
    }

    header('Content-Type: application/json');
    $json = json_encode($results);
    echo $json;
}
