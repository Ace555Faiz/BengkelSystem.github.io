<?php
session_start();
// DB Configuration
require_once 'config.php';

// Check if the booking_id is passed as a query parameter
if (isset($_GET['booking_id'])) {
    $booking_id = $_GET['booking_id'];
} else {
    // If the booking_id is not passed, redirect to the booking page or display an error message (based on your requirements)
    // For example:
    header("Location: booking.php");
    exit();
}

// Retrieve booking details from the 'booking' table for the specific booking_id
$query = "SELECT * FROM booking WHERE Booking_ID = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, 'i', $booking_id);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

// Fetch the booking details from the query result
if ($booking_row = mysqli_fetch_assoc($result)) {
    // Retrieve other details based on the booking
    $user_id = $booking_row['User_ID'];
    $workshop_id = $booking_row['Workshop_ID'];
    // ... (Retrieve other details based on your database schema)
} else {
    // If the booking details are not found, handle the error (optional)
    $error_message = "Booking details not found.";
}

// Retrieve payment details from the 'payment' table for the specific booking_id
$query = "SELECT * FROM payment WHERE Booking_ID = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, 'i', $booking_id);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

// Fetch the payment details from the query result
if ($payment_row = mysqli_fetch_assoc($result)) {
    // Retrieve other details based on the payment
    $payment_method = $payment_row['Payment_Method'];
    $payment_date = $payment_row['Payment_Date'];
    $amount = $payment_row['Amount'];
} else {
    // If the payment details are not found, set default values or handle the case as needed
    $payment_method = "Unknown";
    $payment_date = "Unknown";
    $amount = "Unknown";
}

// Close the prepared statement
mysqli_stmt_close($stmt);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <link rel="stylesheet" type="text/css" href="include/receiptstyle.css">
</head>
<body>
    <h1>Receipt</h1>

    <?php if (isset($error_message)) : ?>
        <p class="error-message"><?php echo $error_message; ?></p>
    <?php else : ?>
        <div class="receipt-container">
            <div class="booking-details">
                <p><strong>Booking ID:</strong> <?php echo $booking_id; ?></p>
                <!-- Display other booking details based on your database schema -->
                <p><strong>User ID:</strong> <?php echo $user_id; ?></p>
                <p><strong>Workshop ID:</strong> <?php echo $workshop_id; ?></p>
                <!-- ... (Display other booking details based on your database schema) -->
            </div>

            <div class="payment-details">
                <h2>Payment Details</h2>
                <p><strong>Payment Method:</strong> <?php echo $payment_method; ?></p>
                <p><strong>Payment Date:</strong> <?php echo $payment_date; ?></p>
                <p><strong>Amount:</strong> <?php echo $amount; ?></p>
                <p><a href="account.php" class="back-button">Back to My Account</a></p>
            </div>
        </div>
    <?php endif; ?>


</body>
</html>