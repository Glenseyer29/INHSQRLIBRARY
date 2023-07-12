<?php
if (Input::exists()) {
			$book = new QRStudents();

            try {
                $book->update(array(
					'fname' => Input::get('fname'),
					'midname' => Input::get('midname'),
					'lname' => Input::get('lname'),
					'grade' => Input::get('grade'),
					'section' => Input::get('section'),
					'contact' => Input::get('contact'),
					'LRN' => Input::get('LRN'),
                ), $_GET['id']);

			Session::flash('Updated', 'Book Info has been successfully updated.');
			Redirect::to('admin.php?action=listQrStudents');
            } catch(Exception $e) {
                $error;
            }
}
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
                        Student Qr Code Information
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="admin.php"><i class="fa fa-tachometer-alt"></i> Home</a></li>
                        <li><a href="admin.php?action=listQrStudents">Generate Student QR-Code</a></li>
                        <li class="active">Edit Student Information</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <div class="col-xs-12">
                        <div class="box box-primary">
                            <div class="box-header">
                                <h3 class="box-title">Edit Student Information - <small><font color="#EC0003">*</font> required fields</small></h3>
                                <div class="pull-right box-tools">
                                    <button class="btn btn-primary btn-sm" data-widget='collapse' data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                    <button class="btn btn-primary btn-sm" data-widget='remove' data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                </div><!-- /. tools -->
                            </div><!-- /.box-header -->
                            <div class="box-body">
								<?php if(Session::exists('studentUpdated')){ ?>
									<div class="alert alert-success">
										<i class="glyphicon glyphicon-ok"></i> &nbsp;<?php echo Session::flash('studentUpdated'); ?>
                                    </div>
								<?php }?>
                                <?php
									$qr_students = DB:: getInstance()->get('qr_students', array('id','=',$_GET['id']));
									foreach($qr_students->results() as $qr_students){
									?>
								<form id="editStudent" action="" method="post">

									<div class="row">
								<div class="col-lg-3 col-md-3">
									<label class="control-label" for="fname"><font color="#EC0003">*</font> First Name</label>
									<div class="form-group">
										<input type="text" class="form-control" id="fname" name="fname" value="<?php echo $qr_students->fname; ?>" >
									</div>
								</div>




											<div class="row">
										<div class="col-lg-3 col-md-3">
											<label class="control-label" for="midname"><font color="#EC0003">*</font> Middle Name</label>
											<div class="form-group">
												<input type="text" class="form-control" id="midname" name="midname" value="<?php echo $qr_students->midname; ?>" >
											</div>
										</div>
									</div>
										</div>

									<div class="row">
										<div class="col-lg-3 col-md-3">
											<label class="control-label" for="lname"><font color="#EC0003">*</font> Last Name</label>
											<div class="form-group">
												<input type="text" class="form-control" id="lname" name="lname" value="<?php echo $qr_students->lname; ?>" required>
											</div>
										</div>

										<div class="row">
											<div class="col-lg-3 col-md-3">
												<label class="control-label" for="grade"><font color="#EC0003">*</font>Grade </label>
												<div class="form-group">
													<input type="text" class="form-control" id="grade" name="grade" value="<?php echo $qr_students->grade; ?>" required>
												</div>
											</div>

											<div class="row">
												<div class="col-lg-3 col-md-3">
													<label class="control-label" for="section"><font color="#EC0003">*</font> Section</label>
													<div class="form-group">
														<input type="text" class="form-control" id="section" name="section" value="<?php echo $qr_students->section; ?>" required>
													</div>
												</div>
											</div>
										</div>
									</div>


											<div class="row">
											<div class="col-lg-3 col-md-3">
												<label class="control-label" for="contact"><font color="#EC0003">*</font> Contact</label>
												<div class="form-group">
												<input type="text" class="form-control" id="contact" name="contact" value="<?php echo $qr_students->contact; ?>" required>
												</div>
											</div>


											<div class="row">
										<div class="col-lg-3 col-md-3">
											<label class="control-label" for="LRN"><font color="#EC0003">*</font> LRN</label>
											<div class="form-group">
												<input type="text" class="form-control" id="LRN" name="LRN" value="<?php echo $qr_students->LRN; ?>"required>
											</div>
										</div>
										</div>
											</div>
												</div>


                                    <div class="clearfix"></div><hr />
                                    <div class="form-actions">
                                        <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
                                        <button type="submit" class="btn btn-primary">
                                            <i class="fa fa-edit fa-fw"></i>&nbsp;Save Edits
                                        </button>
                                        <button type="button" class="btn btn" onclick="window.location='admin.php?action=listQrStudents'">Cancel</button>
                                    </div>
                                    <br />

																			</div>
																				</div>

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
																	<input type="text" class="form-control" id="newIsbn" name="newIsbn" value="<?php echo $qr_students->isbn; ?>">
																</div>
																<input type="hidden" name="newID" value="<?php echo $qr_students->id; ?>">
														</div>
														<div class="modal-footer">
															<button type="submit" class="btn btn-success" value="save"><i class="glyphicon glyphicon-edit"></i> Save</button>
															<button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
															</form>
														</div>
														</div>
													</div>
													</div>
								<?php }?>
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
			fields : {
				username : {
					message : "This field is required",
					validators : {
						notEmpty :{
							message : "Username cannot be empty.",
						},
					}
				},
				userRole : {
					message : "This field is required",
					validators : {
						notEmpty :{
							message : "Please select a User Role.",
						},
					}
			}
		});
    });
</script>
</body>
</html>
