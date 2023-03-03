<?php
require 'vendor/autoload.php';

// Connect to the MongoDB server
$mongoClient = new MongoDB\Client("mongodb://localhost:27017");

// Select the database
$database = $mongoClient->selectDatabase("DB_training");

// Select the collection
$collection = $database->selectCollection("Country");

// Insert a document
$insertResult = $collection->insertOne([{    "name": "United States",    "capital": "Washington, D.C.",    "population": 328200000,    "currency": "US Dollar"  },  {    "name": "Canada",    "capital": "Ottawa",    "population": 37960000,    "currency": "Canadian Dollar"  },  {    "name": "Mexico",    "capital": "Mexico City",    "population": 126200000,    "currency": "Mexican Peso"  }]
);

// Print the result
echo "Inserted document with ID: " . $insertResult->getInsertedId();
?>
