<?php
	//Connection
	$servername = "localhost:3308";
	$username = "root";
	$password = "Pass@123";
	$dbname = "bdata";

	$conn = mysqli_connect($servername, $username, $password, $dbname);

	if(!$conn){
		die("Could not connect to the database due to the following error --> ".mysqli_connect_error());
	}

?>