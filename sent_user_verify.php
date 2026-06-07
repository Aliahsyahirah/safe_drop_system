<?php

include 'database/to_connect.php';
include 'database/validation.php';

$user_verify = $_GET['user_verify'] ?? null;

if ($user_verify !== null) {
    
    // INPUT VALIDATION - Status mesti 0 atau 1
    if (validate_status($user_verify)) {
        
        $stmt = $conn->prepare("UPDATE tbl_controller SET user_verify = ?");
        $stmt->bind_param("i", $user_verify);
        
        if ($stmt->execute()) {
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