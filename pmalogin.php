<?php // pmalogin.php
  $host = 'localhost';    // Change as necessary
  $data = 'member'; // Change as necessary
  $user = 'publications';         // Change as necessary
  $pass = 'kristie123';        // Change as necessary
  $chrs = 'utf8mb4';
  $attr = "mysql:host=$host;dbname=$data;charset=$chrs";
  $opts =
  [
    PDO::ATTR_ERRMODE            => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
    PDO::ATTR_EMULATE_PREPARES   => false,
  ];
?>
