<?php
$host = "localhost";
$port = 3306;
$database = "mykalle";
$username = "root";
$password = "";

$connection = new mysqli($host, $username, $password, $database, $port);

if ($connection->connect_error) {
    die("Anslutningen misslyckades:" . $connection->connect_error);
}

$sql = "SELECT Orders.OrderID, Orders.OrderDate, Orders.Status, Customers.FirstName,
 Customers.LastName
        FROM Orders
        JOIN Customers ON Orders.CustomerID = Customers.CustomerID
        ORDER BY Orders.OrderDate ";

$result = $connection->query($sql);

if ($result->num_rows > 0) {
    echo "<h2> Alla ordrar: </h2>";
    echo "<table border='1'>
    <tr>
      
    <td style='padding: 10px;'>Order ID</td>
    <td style='padding: 10px;'>Order Datum</td>
    <td style='padding: 10px;'>Status</td>
    <td style='padding: 5px;'>Kund</td>
     </tr>";
      
        

    while ($row = $result->fetch_assoc()) {
        echo "<tr>
              <td style='padding: 3px;'>{$row['OrderID']}</td>
                <td style='padding: 3px;'>{$row['OrderDate']}</td>
                <td style='padding: 6px;'>{$row['Status']}</td>
                <td style='padding: 3px;'>{$row['FirstName']} {$row['LastName']}</td>
            </tr>";
    }
    echo "</table>";
} else {
    echo "<p> Inga ordrar hittades. </p>";
}

if (isset($_POST['delete'])) {
    $orderIdToDelete = $_POST['orderIdToDelete'];
    $deleteOrderSql = "DELETE FROM Orders WHERE OrderID = $orderIdToDelete";
    $connection->query($deleteOrderSql);
    echo "<p>Order raderad! </p>";
}

if (isset($_POST['updateStatus'])) {
    $orderIdToUpdate = $_POST['orderIdToUpdate'];
    $newStatus = $_POST['newStatus'];
    $updateStatusSql = "UPDATE Orders SET Status = '$newStatus' WHERE OrderID = $orderIdToUpdate";
    $connection->query($updateStatusSql);
    echo "<p>Status uppdaterad!</p>";
}

$connection->close();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Admin</title>
</head>

<body>

    <h1>Admin</h1>



    <form method="post" action="">
        <h2>Uppdatera status :</h2>
        Order ID: <input type="text" name="orderIdToUpdate" required>
        Ny status: <input type="text" name="newStatus" required>
        <button style='background-color:aquamarine' type="submit" name="updateStatus">Uppdatera </button>
    </form>

    <form method="post" action="">
        <h2>Ta bort :</h2>
        Order ID: <input  type="text" name="orderIdToDelete" required>
        <button style='background-color:red' type="submit" name="delete">Ta bort </button>
    </form>

    
    <form method="get" action="index.php">
        <button type="submit"> produkt-Sidan</button>
    </form>

</body>

</html>
