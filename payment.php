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

// Set the default value for amount_input to 150.00
$amount_input = 150.00;

// Check if the payment form is submitted
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $payment_method = $_POST['payment_method'];
    $payment_date = $_POST['payment_date'];
    $amount_input = $_POST['amount_input'];
    $amount_limit = 150.00; // Set the amount limit to 150.00

    // Check if the amount exceeds or is less than the limit
    if ($amount_input > $amount_limit) {
        // Display an error message if the amount exceeds the limit
        $error_message = "Amount entered exceeds the limit.";
    } elseif ($amount_input < $amount_limit) {
        // Display an error message if the amount is less than the limit
        $error_message = "Amount entered is less than the limit.";
    } else {
        // If the amount is valid, insert the payment details into the 'payment' table
        $insert_query = "INSERT INTO payment (Booking_ID, Payment_Method, Payment_Date, Amount) VALUES (?, ?, ?, ?)";
        $stmt = mysqli_prepare($conn, $insert_query);
        mysqli_stmt_bind_param($stmt, 'isss', $booking_id, $payment_method, $payment_date, $amount_input);
        $insert_result = mysqli_stmt_execute($stmt);

        if ($insert_result) {
            // Payment details inserted successfully, redirect to receipt.php
            header("Location: receipt.php?booking_id=$booking_id");
            exit();
        } else {
            // Handle any errors that occurred during the insertion process
            $error_message = "Failed to process the payment. Please try again.";
        }

        // Close the prepared statement
        mysqli_stmt_close($stmt);
    }
}

// Retrieve the payment details if they exist for the specific booking
$query = "SELECT * FROM payment WHERE Booking_ID = ?";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, 'i', $booking_id);
mysqli_stmt_execute($stmt);
$result = mysqli_stmt_get_result($stmt);

// Fetch the payment details from the query result
if ($row = mysqli_fetch_assoc($result)) {
    // Retrieve other details based on the payment
    $payment_method = $row['Payment_Method'];
    $payment_date = $row['Payment_Date'];
    $amount_input = $row['Amount'];
} else {
    // Payment details not found, set default values or handle the case as needed
    $payment_method = ""; // Empty string for user to input their preferred payment method
    $payment_date = date('Y-m-d'); // Assuming the payment date is today's date
    // $amount_input = 150.00; // No need to set this as it is already set earlier
}

// Close the prepared statement
mysqli_stmt_close($stmt);
?>

<!DOCTYPE html>
<html>
<head>
    <title>Payment</title>
    <link rel="stylesheet" type="text/css" href="include/payment.css">
</head>
<body>
    <h1>Payment Details</h1>
    <?php if (isset($error_message)) : ?>
        <p class="error-message"><?php echo $error_message; ?></p>
    <?php endif; ?>

    <div class="payment-form">
        <form action="" method="post">
            <!-- Include payment form fields here -->
            <p><strong>Booking ID:</strong> <?php echo $booking_id; ?></p>
            <input type="hidden" name="booking_id" value="<?php echo $booking_id; ?>">
            <!-- Add payment form fields as needed -->
            <label for="payment_method">Payment Method:</label>
            <input name="payment_method" id="payment_method" required>
            <br>
            <label for="payment_date">Payment Date:</label>
            <input type="date" name="payment_date" id="payment_date" value="<?php echo $payment_details['Payment_Date']; ?>" required>
            <br>
            <label for="amount_input">Amount:</label>
            <input type="number" step="0.01" name="amount_input" id="amount_input" placeholder="Enter amount" required value="<?php echo $payment_details['Amount']; ?>">
            <br>
            
            <!-- Submit button -->
            <input type="submit" value="PAY" class="submit-button">
        </form>
    </div>

    <p><a href="account.php" class="back-button">Back to My Account</a></p>
</body>
</html>
