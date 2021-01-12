<?php
include "includes/db.html.php";

try
{
  $sql = 'SELECT title, description, image FROM content';
  $result = $pdo->query($sql);
}
catch (PDOException $e)
{
  $error = 'Error fetching content: ' . $e->getMessage();
  include 'includes/error.html.php';
  exit();
}

while ($row = $result->fetch())
{
  $contents[] = array(
    'title' => $row['title'],
    'description' => $row['description'],
    'image' => $row['image']
  );
}

include 'home/home.html.php';
