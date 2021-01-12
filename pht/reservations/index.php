<?php

include "../includes/db.html.php";

if (isset($_POST['myfname']) && ($_POST['honeypot'] == "")) {
    $fname = $_POST['myfname'];
    $lname = $_POST['mylname'];
    $email = $_POST['myemail'];
    $phone = $_POST['myphone'];
    $date = $_POST['mydate'];
    $group = $_POST['mygroup'];
    $comments = $_POST['mycomments'];
    $tour = $_POST['tour'];
    
    try {
      $sql = 'INSERT INTO reservations SET
          tour = :tour,
          fname = :fname,
          lname = :lname,
          email = :email,
          phone = :phone,
          date = :date,
          participants = :tour,
          allergies = :allergies';
      $s = $pdo->prepare($sql);
      $s->bindValue(':tour', $tour);
      $s->bindValue(':fname', $fname);
      $s->bindValue(':lname', $lname);
      $s->bindValue(':email', $email);
      $s->bindValue(':phone', $phone);
      $s->bindValue(':date', $date);
      $s->bindValue(':participants', $group);
      $s->bindValue(':allergies', $comments);
      $s->execute();
    }
    catch (PDOException $e)
    {
      $error = 'Error reserving tour: ' . $e->getMessage();
      include '../includes/error.html.php';
      exit();
    }
     include 'success.html.php';
    }
    else {
      include 'reservations.html.php';
  }

?>
