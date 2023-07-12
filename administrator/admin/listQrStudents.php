<?php
if (Input::exists()) {
		$PNG_TEMP_DIR =  dirname(__FILE__).DIRECTORY_SEPARATOR.'admin'.DIRECTORY_SEPARATOR.'studentQRCodes'.DIRECTORY_SEPARATOR;

		$qr_students = DB::getInstance()->get('qr_students', array('id','=',Input::get('id')));
		foreach($qr_students->results() as $qr_students){
			unlink($PNG_TEMP_DIR.$qr_students->qrcode);
		}

		$contents = DB:: getInstance()->delete('qr_student', array('id','=',Input::get('id')));
		Session::flash('Deleted', 'Record has been successfully deleted.');
		Redirect::to('admin.php?action=listQrStudents');
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
<!-- DATA TABLES -->
<link href="styles/admin/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
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
                        Student QR-Code List
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="admin.php"><i class="fa fa-tachometer-alt"></i> Home</a></li>
                        <li class="active">Student QR-Code List</li>
                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                        <div class="col-xs-12">
                            <div class="box box-primary">
                                <div class="box-header">
                                    <h3 class="box-title">Student QR-Code List</h3>
                                    <div class="pull-right box-tools">
                                        <button class="btn btn-primary btn-sm" data-widget='collapse' data-toggle="tooltip" title="Collapse"><i class="fa fa-minus"></i></button>
                                        <button class="btn btn-primary btn-sm" data-widget='remove' data-toggle="tooltip" title="Remove"><i class="fa fa-times"></i></button>
                                    </div><!-- /. tools -->
                                </div><!-- /.box-header -->
                                <div class="box-body table-responsive">
                                    <?php if(Session::exists('Deleted')){ ?>
                                             <div class="alert alert-danger">
                                                <i class="glyphicon glyphicon-ok"></i> &nbsp;<?php echo Session::flash('Deleted'); ?>
                                             </div>
                                    <?php }?>
                                    <?php if(Session::exists('Updated')){ ?>
                                             <div class="alert alert-success">
                                                <i class="glyphicon glyphicon-ok"></i> &nbsp;<?php echo Session::flash('Updated'); ?>
                                             </div>
                                    <?php }?>
									<?php if(Session::exists('Added')) { ?>
										<div class="alert alert-success">
											<i class="glyphicon glyphicon-ok"></i> &nbsp;<?php echo Session::flash('Added'); ?>
										</div>
									<?php }?>
                                    <table class="table table-bordered table-hover" id="articles">
                                        <thead>
                                            <tr>
												<th>First Name</th>
												<th>Middle Name</th>
                        <th>Last Name</th>
												<th>Grade</th>
												<th>Section</th>
												<th>Contact</th>
                        <th>LRN</th>
												 <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
											<?php
												$qr_students = DB::getInstance()->query("SELECT * FROM qr_students");
												foreach($qr_students->results() as $qr_students){ ?>
														<tr>
															<td><?php echo $qr_students->fname ; ?></td>
															<td><?php echo $qr_students->midname ; ?></td>
															<td><?php echo $qr_students->lname ; ?></td>
															<td><?php echo $qr_students->grade ; ?></td>
															<td><?php echo $qr_students->section ; ?></td>
															<td><?php echo $qr_students->contact ; ?></td>
																<td><?php echo $qr_students->LRN ; ?></td>

															<td align="center">
																<button type="button" class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal_<?php echo ucwords($qr_students->id); ?>" >View QRCODE</button>
																<!-- Modal -->
																<div id="myModal_<?php echo ucwords($qr_students->id); ?>" class="modal fade" role="dialog">
																	<div class="modal-dialog">

																	<!-- Modal content-->
																		<div class="modal-content">
																			<div class="modal-header">
																				<h4 class="modal-title"><?php echo ucwords($qr_students->fname . ' ' . $qr_students->lname . ' ' . $qr_students->LRN); ?></h4>
																			</div>
																			<div class="modal-body" >
																				<image src="admin/studentQRCodes/<?php echo ucwords($qr_students->qrcode) ?>"/>
																			</div>
																			<div class="modal-footer">

																				<button type="button" class="btn btn-primary" onclick="printImg('admin/studentQRCodes/<?php echo ucwords($qr_students->qrcode) ?>')">Print</button>
																				<button type="button" class="btn btn-danger" onclick="downloadImg('admin/studentQRCodes/<?php echo ucwords($qr_students->qrcode) ?>')">Download</button>
																				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																			</div>
																		</div>

																	</div>
																</div>

																<form method="POST" action="admin.php?action=deleteQrStudent" style="display:inline">
																	<input type="hidden" name="ID" value="<?php echo $qr_students->id;  ?>">
																<button class="btn btn-xs btn-danger" type="button" data-toggle="modal" data-target="#confirmDelete" data-title="Confirm Delete" data-message="Are you sure you want to delete this?">
																		<i class="glyphicon glyphicon-trash"></i> Delete
																	</button>

																	<?php require_once ('delete-confirm.php');?>

																</form>
																<form method="POST" action="admin.php?action=editQrStudents&id=<?php echo $qr_students->id; ?>" style="display:inline">
																	<button class="btn btn-xs btn-primary" type="submit">
																		<i class="glyphicon glyphicon-edit"></i> Edit
																	</button>
																</form>
															</td>
														</tr>
												<?php
												}
												?>
                                        </tbody>
                                    </table>
                                </div><!-- /.box-body -->
								<div class="box-footer">
                                	<button type="button" class="btn btn-success" data-toggle="modal" data-target="#exampleModal">
									Add New Student
									</button>
									<!-- Modal -->
									<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
									<div class="modal-dialog modal-lg" role="document">
										<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h3 class="modal-title" id="exampleModalLabel">Add New Student</h3>
										</div>
										<div class="modal-body">
											<form enctype="multipart/form-data" method="post" action="admin.php?action=addQrStudents">

												<label class="control-label" for="fname"><font color="#EC0003">*</font>First Name</label>
												<div class="form-group">
													<input type="text" class="form-control" id="fname" name="fname" placeholder="Input First Name" required >
												</div>

												<label class="control-label" for="midname"><font color="#EC0003">*</font>Middle Name</label>
												<div class="form-group">
													<input type="text" class="form-control" id="midname" name="midname" placeholder="Input Middle Name" required >
												</div>

												<label class="control-label" for="lname"><font color="#EC0003">*</font> Last Name</label>
												<div class="form-group">
													<input type="text" class="form-control" id="author" name="lname" placeholder="Input Last Name" required >
												</div>

												<label class="control-label" for="grade"><font color="#EC0003">*</font> Grade</label>
												<div class="form-group">
														<input type="text" class="form-control" id="grade" name="grade" placeholder="Grade">
												</div>

						                        <label class="control-label" for="section"><font color="#EC0003">*</font> Section</label>
												<div class="form-group">
														<input type="text" class="form-control" id="section" name="section" placeholder="Section">
												</div>

                        						<label class="control-label" for="contact"><font color="#EC0003">*</font> Contact</label>
												<div class="form-group">
														<input type="text" class="form-control" id="contact" name="contact" placeholder="Contact">
												</div>

						                        <label class="control-label" for="LRN"><font color="#EC0003">*</font> LRN</label>
												<div class="form-group">
														<input type="text" class="form-control" id="LRN" name="LRN" placeholder="LRN">
												</div>



										</div>
										<div class="modal-footer">
											<button type="submit" class="btn btn-lg btn-success" value="save"><i class="glyphicon glyphicon-floppy-disk"></i> Save</button>
											<button type="button" class="btn btn-lg btn-danger" data-dismiss="modal">Cancel</button>
											</form>
										</div>
										</div>
									</div>
									</div>
                                </div>
                            </div><!-- /.box -->

                        </div><!-- /.col -->
                    </div><!-- /.row (main row) -->

                </section><!-- /.content -->
            </aside><!-- /.right-side -->
        </div><!-- ./wrapper -->

<!-- jQuery 2.0.2 -->
<script src="styles/admin/js/jquery.min.js"></script>
<!-- jQuery UI 1.10.3 -->
<script src="styles/admin/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
<!-- Bootstrap -->
<script src="styles/admin/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Bootstrap Datepicker -->
<script src="js/bootstrap-datepicker.min.js"></script>
<!-- DATA TABES SCRIPT -->
<script src="styles/admin/js/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script>
<script src="styles/admin/js/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script>
<!-- AdminLTE App -->
<script src="styles/admin/js/AdminLTE/app.js" type="text/javascript"></script>
<!-- page script -->
<script type="text/javascript">
    $(function() {
        $("#articles").dataTable();
    });
	function printImg(url) {
	  var win = window.open('');
	  win.document.write('<img src="' + url + '" onload="window.print();window.close()" />');
	  win.focus();
	}

	function downloadImg(link) {
  fetch(link, { mode: 'cors' })
    .then(response => response.blob())
    .then(blob => {
      // Create a temporary anchor element
      const a = document.createElement('a');
      document.body.appendChild(a);
      a.style.display = 'none';

      // Create a URL object from the Blob
      const imageURL = URL.createObjectURL(blob);

      // Set the anchor's href attribute and filename
      a.href = imageURL;
      a.download = 'image.png';

      // Trigger a click event on the anchor element to initiate the download
      a.click();

      // Clean up resources
      URL.revokeObjectURL(imageURL);
      document.body.removeChild(a);
    })
    .catch(error => {
      console.error('Error downloading image:', error);
    });
}

</script>
<script type="text/javascript">
  $('#confirmDelete').on('show.bs.modal', function (e) {
	  var $message = $(e.relatedTarget).attr('data-message');
	  $(this).find('.modal-body p').text($message);
	  $title = $(e.relatedTarget).attr('data-title');
	  $(this).find('.modal-title').text($title);

	  // Pass form reference to modal for submission on yes/ok
	  var form = $(e.relatedTarget).closest('form');
	  $(this).find('.modal-footer #confirm').data('form', form);
  });
//    Form confirm (yes/ok) handler, submits form
  $('#confirmDelete').find('.modal-footer #confirm').on('click', function(){
	  $(this).data('form').submit();
  });
</script>
</body>

</html>
