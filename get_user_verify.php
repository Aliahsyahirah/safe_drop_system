<?php
include "database/to_connect.php";

$stmt = $conn->prepare("SELECT user_verify FROM tbl_controller LIMIT 1");
$stmt->execute();

$user_verify = null;
$stmt->bind_result($user_verify);
$stmt->fetch();
$stmt->close();

echo $user_verify !== null ? (int)$user_verify : 0;
?>