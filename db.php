<?php
$dbhost = 'phpmyadmin.ecs.westminster.ac.uk';
$dbuser = 'w1828015';
$dbpass = 'ztH2LrGGSQK8';
$dbname = 'w1828015_0';

//create a DB connection
$conn = mysqli_connect($dbhost, $dbuser, $dbpass, $dbname);
//if the DB connection fails, display an error message and exit
if (!$conn)
{
 die('Could not connect: ' . mysqli_connect_error());
}
//select the database
mysqli_select_db($conn, $dbname);
?>