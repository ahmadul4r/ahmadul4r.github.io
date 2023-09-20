<?php
session_start();
include("db.php");

$pagename="“smart basket";                           //Create and populate a variable called $pagename

echo "<link rel=stylesheet type=text/css href=mystylesheet.css>"; //Call in stylesheet

echo "<title>".$pagename."</title>";         //display name of the page as window title

echo "<body>";
include ("headfile.html");                  //include header layout file

echo "<h4>".$pagename."</h4>";              //display name of the page on the web page


if (isset($_POST['h_prodid'])) {
    //Retrieves the product id and quantity
    $newprodid = $_POST['h_prodid'];
    $reququantity = $_POST['quantity'];
    
    echo "<p>Selected product id: " .$newprodid."</p>";
    echo "<p>Quantity of the product: ".$reququantity."</p>";

    $_SESSION['basket'][$newprodid] = $reququantity;
    echo "<p>1 item added</p>";
}

else {
    echo "<p>Basket unchanged</p>";
}

if (isset($_SESSION['basket']))
    $total= 0;
    echo "<table id= baskettable style='border: 0px'>";
    echo "<tr>
            <th>Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Subtotal</th>
        </tr>";

    foreach($_SESSION['basket'] as $index => $value) {
        
        $sql = "select prodName, prodPrice, from product where prodId = $index";
        
        $exeSQL=mysqli_query($conn, $sql) or die (mysqli_error($conn));
        $arrayp=mysqli_fetch_array($exeSQL);

        echo "<tr>
                <p>".$arrayp['prodName']."</p>";
    }

    echo "</table>";

echo "</body>";    

include("footfile.html"); //include head layout

?>

