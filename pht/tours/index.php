<?php
include "../includes/db.html.php";

try
{
  $sql = 'SELECT * FROM tours';
  $result = $pdo->query($sql);
}
catch (PDOException $e)
{
  $error = 'Error fetching content: ' . $e->getMessage();
  include '../includes/error.html.php';
  exit();
}

while ($row = $result->fetch())
{
  $tours[] = array(
    'title' => $row['title'],
    'description' => $row['description'],
    'duration' => $row['duration'],
    'transportation' => $row['transportation'],
    'food' => $row['food'],
    'price' => $row['price'],
    'image' => $row['image']
  );
}

include 'tours.html.php';

?>
