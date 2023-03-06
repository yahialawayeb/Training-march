<?php
// Connect to the MongoDB server
$mongo = new MongoDB\Driver\Manager("mongodb://10.0.0.100:27017");

// Select the database and collection
$database = "test";
$collection = "countries";

// Construct the query
$query = new MongoDB\Driver\Query([]);

// Execute the query
$countries = $mongo->executeQuery("$database.$collection", $query);

// Loop through the list of countries and output each one
// Output a table header
echo "<table>";
echo "<tr><th>Name</th><th>Capital</th><th>Population</th><th>Currency</th></tr>";
foreach ($countries as $country) {
    echo "<tr>";
    echo "<td>" . $country->name . "</td>";
    echo "<td>" . $country->capital . "</td>";
    echo "<td>" . $country->population . "</td>";
    echo "<td>" . $country->currency . "</td>";
    echo "</tr>";
}
"</table>";
?>