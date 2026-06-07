<?php

include 'database/to_connect.php';
include 'database/validation.php';

$status_vibrate = $_GET['status_vibrate'] ?? null;

if ($status_vibrate !== null) {
    
    // INPUT VALIDATION - Status mesti 0 atau 1
    if (validate_status($status_vibrate)) {
        
        $stmt = $conn->prepare("UPDATE tbl_controller SET status_vibrate = ?");
        $stmt->bind_param("i", $status_vibrate);
        
        if ($stmt->execute()) {
            
            // Log fall detection to file
            if ($status_vibrate == 1) {
                error_log("FALL DETECTED - " . date('Y-m-d H:i:s'));
            }
            
            echo "OK";
        } else {
            echo "Database error";
        }
        $stmt->close();
        
    } else {
        echo "Invalid status. Use 0 or 1 only";
    }
    
} else {
    echo "Missing parameter";
}

$conn->close();
?>