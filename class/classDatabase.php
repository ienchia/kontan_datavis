<?php

class database{

    private $dbhost ="localhost";
    private $dbpass="yggdrasil";
    private $dbuser="root";
    private $dbdata="kontan";

   public function dbconnect(){
         mysqli_connect($this->dbhost, $this->dbuser, $this->dbpass, $this->dbdata);
        if (mysqli_connect_errno())
            {
            return "Failed to connect to MySQL: " . mysqli_connect_error();
            }
    }

    function insert($query){
        $con=mysqli_connect($this->dbhost, $this->dbuser, $this->dbpass, $this->dbdata);
        $insert=  mysqli_query($con, $query);
        return $insert;
    }
    function update($query){
        $con=mysqli_connect($this->dbhost, $this->dbuser, $this->dbpass, $this->dbdata);
        $insert=  mysqli_query($con, $query);
        return $insert;
    }
    function select($query){
        $con=mysqli_connect($this->dbhost, $this->dbuser, $this->dbpass, $this->dbdata);
        $insert=  mysqli_query($con, $query);
        return $insert;
    }
}
?>
