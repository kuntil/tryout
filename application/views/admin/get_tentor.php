<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$dbHost="localhost";
$dbUser="root";
$dbPass="";
$dbName="tryout";

$pdo = new PDO("mysql:host=$dbHost;dbname=$dbName", $dbUser, $dbPass);
$query = $pdo->prepare("SELECT * FROM try_tentor");

$query->execute();

while($data = $query->fetch()){
      $list_tentor = $data['nama'];
      echo "$list_tentor \n";
}

