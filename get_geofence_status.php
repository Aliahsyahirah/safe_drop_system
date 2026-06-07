<?php
//include file to_connect
include "database/to_connect.php";

$stmt = $conn->prepare("SELECT geofence_status FROM tbl_controller LIMIT 1");
$stmt->execute();
$result = $stmt->get_result();
$data = $result->fetch_assoc();

if ($data) {
    echo json_encode(['geofence_status' => (int)$data['geofence_status']]);
} else {
    echo json_encode(['geofence_status' => 0]);
}
?>