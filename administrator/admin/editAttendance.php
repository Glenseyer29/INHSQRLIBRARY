<?php
// if (Input::exists()) {
// 			$book = new Books();
//             try {
//                 $book->update(array(
// 					'bookTitle' => Input::get('bookTitle'),
// 					'author' => Input::get('author'),
// 					'datePublished' => Input::get('datePublished'),
//                 ), $_GET['id']);
// 			Session::flash('Updated', 'Book Info has been successfully updated.');
// 			Redirect::to('admin.php?action=listBooks');
//             } catch(Exception $e) {
//                 $error;
//             }
// }

$server = "localhost";
$username = "root";
$password = "";
$dbname = "dbs";

$conn = new mysqli($server, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

	if (isset($_POST['STUDENTID']) && isset($_POST['TIMEIN']) && isset($_POST['TIMEOUT']) && isset($_POST['LOGDATE'])&& isset($_POST['STATUS'])) {

		$id = $_POST['ID'];
		$studentId = $_POST['STUDENTID'];
		$timeIn = $_POST['TIMEIN'];
    $timeOut = $_POST['TIMEOUT'];
    $logDate = $_POST['LOGDATE'];
		$status = $_POST['STATUS'];

		$updateQuery = "UPDATE studattendance SET STUDENTID = '$studentId', TIMEIN = '$timeIn', TIMEOUT = '$timeOut', LOGDATE = '$logDate', STATUS = '$status' WHERE ID = $id";

		if ($conn->query($updateQuery) === TRUE) {
			echo "Attendance updated successfully.";
		} else {
			echo "Error updating attendance: " . $conn->error;
		}

		header('Location: admin.php?action=attendanceRecord');

	}
}


    $id = $_POST['ID'];

    $selectQuery = "SELECT * FROM studattendance WHERE ID = $id";
    $result = $conn->query($selectQuery);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        $studentId = $row['STUDENTID'];
        $timeIn = $row['TIMEIN'];
        $timeOut = $row['TIMEOUT'];
        $logDate = $row['LOGDATE'];
        $status = $row['STATUS'];
    } else {
        echo "Attendance record not found.";
    }



$conn->close();

?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap 3.0.2 -->
<link href="styles/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- font Awesome -->
<link href="styles/admin/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="styles/admin/css/all.css" rel="stylesheet" type="text/css" />
<!-- Ionicons -->
<link href="styles/admin/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="styles/admin/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<!-- Bootstrap Validator CSS -->
<link href="styles/admin/css/bootstrapValidator.min.css" rel="stylesheet">
<link href="css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />
<title>IBA NATIONAL HIGH SCHOOL</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
</head>
<body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <?php include_once('navigation.php'); ?>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Student Attendance Information
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href=""><i class="fa fa-tachometer-alt"></i> Home</a></li>
                        <li><a href="">Student Lists</a></li>
                        <li class="active">Edit Attendance Information</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">Edit Attendance</h3>
                                <div class="pull-right box-tools">
                                    <button class="btn btn-primary btn-sm" data-widget='collapse' data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                    <button class="btn btn-primary btn-sm" data-widget='remove' data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                </div><!-- /. tools -->
                            </div><!-- /.box-header -->
                            <div class="box-body">


								<form id="editUser" action="admin.php?action=editAttendance" method="POST">

								<input type="text" name="ID" value="<?php echo $id; ?>" hidden>

								<div class="row">
									<div class="col-lg-6 col-md-6">
										<label class="control-label" for="studentId"><font color="#EC0003">*</font> Student ID</label>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-8 col-md-8">
													<input type="text" class="form-control" id="studentId" name="STUDENTID" value="<?php echo $studentId; ?>">
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="row">
									<div class="col-lg-6 col-md-6">
										<label class="control-label" for="timeIn"><font color="#EC0003">*</font> Time In</label>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-8 col-md-8">
													<input type="text" class="form-control" id="timeIn" name="TIMEIN" value="<?php echo $timeIn; ?>">
												</div>
											</div>
										</div>
									</div>
								</div>

                <div class="row">
                  <div class="col-lg-6 col-md-6">
                    <label class="control-label" for="timeOut"><font color="#EC0003">*</font> Time Out</label>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-lg-8 col-md-8">
                          <input type="text" class="form-control" id="timeOut" name="TIMEOUT" value="<?php echo $timeOut; ?>">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="row">
                  <div class="col-lg-6 col-md-6">
                    <label class="control-label" for="logDate"><font color="#EC0003">*</font> LOG DATE</label>
                    <div class="form-group">
                      <div class="row">
                        <div class="col-lg-8 col-md-8">
                          <input type="text" class="form-control" id="logDate" name="LOGDATE" value="<?php echo $logDate; ?>">
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

								<div class="row">
									<div class="col-lg-6 col-md-6">
										<label class="control-label" for="status"><font color="#EC0003">*</font> Attendance</label>
										<div class="form-group">
											<div class="row">
												<div class="col-lg-8 col-md-8">
													<input type="text" class="form-control" id="status" name="STATUS" value="<?php echo $status; ?>">
												</div>
											</div>
										</div>
									</div>
								</div>

                                    <div class="clearfix"></div><hr />
                                    <div class="form-actions">
                                        <input type="hidden" name="token" value="">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fa fa-edit fa-fw"></i>&nbsp;Save Edits
                                        </button>
                                        <button type="button" class="btn btn" onclick="window.location='admin.php?action=attendanceRecord'">Cancel</button>
                                    </div>
                                    <br />
                                </form>
								<!-- Modal -->
										<div class="modal fade" id="editBookTitle" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
										<div class="modal-dialog modal-lg" role="document">
											<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal">&times;</button>
												<h3 class="modal-title" id="exampleModalLabel">Edit Book ISBN</h3>
											</div>
											<div class="modal-body">
												<form enctype="multipart/form-data" method="post" action="editBookQR.php">
													<label class="control-label" for="newIsbn"><font color="#EC0003">*</font> International Stardand Book Number</label>
													<div class="form-group">
														<input type="text" class="form-control" id="newIsbn" name="newIsbn" value="">
													</div>
													<input type="hidden" name="newID" value="">
											</div>
											<div class="modal-footer">
												<button type="submit" class="btn btn-success" value="save"><i class="glyphicon glyphicon-edit"></i> Save</button>
												<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
												</form>
											</div>
											</div>
										</div>
										</div>
								<?php

								?>
                            </div><!-- /.box-body -->
                        </div><!-- /.box -->

                    </div><!-- /.col -->
                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->
<!-- jQuery 2.0.2 -->
<script src="styles/admin/js/jquery.min.js"></script>
<!-- Bootstrap -->
<script src="styles/admin/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Bootstrap Datepicker -->
<script src="js/bootstrap-datepicker.min.js"></script>
<!-- AdminLTE App -->
<script src="styles/admin/js/AdminLTE/app.js" type="text/javascript"></script>
<!-- Bootstrap Validator JS -->
<script src="styles/admin/js/bootstrapValidator.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
    var validator = $("#editUser").bootstrapValidator({
        fields: {
            STUDENTID: {
                message: "This field is required",
                validators: {
                    notEmpty: {
                        message: "Student ID cannot be empty."
                    }
                }
            },
            TIMEIN: {
                message: "This field is required",
                validators: {
                    notEmpty: {
                        message: "Time in cannot be empty."
                    }
                }
            },
            STATUS: {
                message: "This field is required",
                validators: {
                    notEmpty: {
                        message: "Status cannot be empty."
                    }
                }
            }
        }
    });
});

</script>
</body>
</html>
