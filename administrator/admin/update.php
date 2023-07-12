<?php
$connection = mysqli_connect("localhost", "root", "", "dbs");

// Retrieve form data
$STUDENTID = $_POST['STUDENTID'];
$TIMEIN = $_POST['TIMEIN'];
$TIMEOUT = $_POST['TIMEOUT'];
$STATUS = $_POST['STATUS'];

// Check the connection
if ($connection->connect_error) {
  die("Connection failed: " . $connection->connect_error);
}

// Check if the form has been submitted
if (isset($_POST['submit'])) {
  // Prepare and execute the update query
  $stmt = $connection->prepare("UPDATE studattendance SET TIMEIN = ?, TIMEOUT = ?, STATUS = ? WHERE STUDENTID = ?");
  $stmt->bind_param("sssi", $TIMEIN, $TIMEOUT, $STATUS, $STUDENTID);
  $stmt->execute();

  // Check if the update was successful
  if ($stmt->affected_rows > 0) {
      echo "Record updated successfully.";
      header("location: admin.php?action=attendanceRecord");
  } else {
      echo "Error updating record: " . $stmt->error;
  }

  // Close the statement
  $stmt->close();
}

// Retrieve the existing student record
$sql = "SELECT * FROM studattendance WHERE STUDENTID = $STUDENTID";
$result = $connection->query($sql);

// Display the form with the current values
if ($result->num_rows > 0) {
  $row = $result->fetch_assoc();
  $currentID = $row['STUDENTID'];
  $currentTIMEIN = $row['TIMEIN'];
  $currentTIMEOUT = $row['TIMEOUT'];
  $currentSTATUS = $row['STATUS'];

  echo "
  <form method='post' action=''>
      Student ID: <input type='text' name='STUDENTID' value='$currentID'><br>
      Time In: <input type='text' name='TIMEIN' value='$currentTIMEIN'><br>
      Time Out: <input type='text' name='TIMEOUT' value='$currentTIMEOUT'><br>
      Status: <input type='text' name='STATUS' value='$currentSTATUS'><br>
      <input type='submit' name='submit' value='update'>
  </form>
  ";

} else {
  echo "No record found for the given student ID.";
}

// Close the database connection
$connection->close();
?>
