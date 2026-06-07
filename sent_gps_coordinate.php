<?php
include 'database/to_connect.php';
include 'database/validation.php';

$parcel_lat = $_GET['parcel_lat'] ?? null;
$parcel_long = $_GET['parcel_long'] ?? null;

if ($parcel_lat !== null && $parcel_long !== null) {
    
    // INPUT VALIDATION - Check latitude & longitude
    if (validate_latitude($parcel_lat) && validate_longitude($parcel_long)) {
        
        $stmt = $conn->prepare("UPDATE tbl_controller SET parcel_lat = ?, parcel_long = ?");
        $stmt->bind_param("dd", $parcel_lat, $parcel_long);
        
        if ($stmt->execute()) {
            echo "OK";
        } else {
            echo "Database error";
        }
        $stmt->close();
        
    } else {
        echo "Invalid coordinates. Latitude must be -90 to 90, Longitude -180 to 180";
    }
    
} else {
    echo "Missing parameters";
}

$conn->close();
?>