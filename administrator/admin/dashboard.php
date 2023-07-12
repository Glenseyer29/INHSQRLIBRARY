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
<!-- bootstrap wysihtml5 - text editor -->
<link href="styles/admin/css/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="styles/admin/css/AdminLTE.css" rel="stylesheet" type="text/css" />
<!-- DATA TABLES -->
<link href="styles/admin/css/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css" />
<SCRIPT LANGUAGE="Javascript" SRC="styles/admin/js/FusionCharts.js"></SCRIPT>
<title>IBA NATIONAL HIGH SCHOOL</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="images/icons/favicon.png"/><script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/webrtc-adapter/3.3.3/adapter.min.js"></script>
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js"></script>
  <script src="https://rawgit.com/schmich/instascan-builds/master/instascan.min.js"></script>
  <script src="https://rawgit.com/davidshimjs/qrcodejs/gh-pages/qrcode.min.js"></script>
  <script type="text/javascript" src="instascan.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

</head>
<body class="skin-blue">
        <!-- header logo: style can be found in header.less -->
        <?php include_once('navigation.php'); ?>

            <!-- Right side column. Contains the navbar and content of the page -->
            <aside class="right-side">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li class="active">Home or Dashboard</li>
                    </ol>
                </section>

               <h1> Welcome Administrator

                 <div class="container">
                       <nav class="navbar navbar-inverse">
                         <div class="container-fluid">
                             <div class="navbar-header">
                                 <a class="navbar-brand" href="#">INHS LIBRARY ATTENDANCE SYSTEM</a>
                             </div>
                             <ul class="nav navbar-nav">
                               <li class="active"><a href="#">HOME</a></li>
                               <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">PAGE1 <span class="caret"></span></a>
                                 <ul class="dropdown-menu">
                                   <li><a href="#">PAGE1-1</a></li>
                                   <li><a href="#">PAGE1-2</a></li>
                                   <li><a href="#">PAGE1-3</a></li>
                                 </ul>
                               </li>
                               <li><a href="#">PAGE2</a></li>
                             </ul>
                               <ul class="nav navbar-nav navbar-right">
                                 <li><a href="#"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
                                 <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>Login</a></li>
                               </ul>
                         </div>
                       </nav>





                       <div class="row">
                           <div class="col-md-6">
                              <video id="preview" width="100%"></video>

                              <?php

                              if (isset($_SESSION['error'])) {

                                 echo "
                                     <div class='alert alert-danger'>
                                     <h4>Error</h4>
                                     ".$_SESSION['error']."
                                     </div>
                                 ";
                              }
                              if (isset($_SESSION['success'])) {

                                 echo "
                                     <div class='alert alert-primary'>
                                     <h4>Success</h4>
                                     ".$_SESSION['success']."
                                     </div>
                                 ";
                              }





                               ?>

                           </div>
                           <div class="col-md-6">
                             <form action="insert.php" method="post" class="form-horizontal">
                               <label>SCAN QR CODE</label>
                               <input type="text" name="text" id="text" readonly="" class="form-control">
                             </form>
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

                                   <td>STUDENT ID</td>
                                   <td>TIME IN</td>
                                   <td>TIME OUT</td>
                                   <td>LOGDATE</td>
                                   <td>STATUS</td>

                                 </tr>
                               </th>
                               <tbody>
                                 <?php

                                 $server ="localhost";
                                 $username ="root";
                                 $password ="";
                                 $dbname ="dbs";

                                 $conn = new mysqli($server,$username,$password,$dbname);

                                  if($conn->connect_error){
                                    die("Connection failed" .$conn ->connect_error);
                                  }
                                  $sql ="SELECT * FROM studattendance WHERE DATE(LOGDATE)=CURDATE()";
                                  $query =$conn->query($sql);
                                  while($row=$query->fetch_assoc()){


                                  ?>
                                  <tr>

                                    <td><?php echo $row['STUDENTID']; ?></td>
                                    <td><?php echo $row['TIMEIN']; ?></td>
                                    <td><?php echo $row['TIMEOUT']; ?></td>
                                    <td><?php echo $row['LOGDATE']; ?></td>
                                    <td><?php echo $row['STATUS']; ?></td>
                                  </tr>



                                  <?php
                                   }
                                   ?>
                               </tbody>

                             </table>



                           </div>
                       </div>

                       <button type="submit" class="btn btn-success pull-right" onclick="Export()">

                         <i class="fa fa-file-excel-o fa-fw"></i> Export to Excel
                       </button>




                     </div>
                     <script>
                       function Export()
                       {
                         var conf = confirm("Please Confirm if you wish to proceed in exporting the attendance in to Excel file");
                         if(conf == true){
                           window.open("exports.php", '_blank');
                         }
                       }
                     </script>
                     <script src="instascan.min.js"></script>
                     <script type="text/javascript">
                       let scanner=new Instascan.Scanner({video:document.getElementById('preview')});
                         Instascan.Camera.getCameras().then(function(cameras){
                           if(cameras.length>0) {
                               scanner.start(cameras[0]);
                           }
                           else{
                             alert("No cameras found");
                           }

                         }).catch(function (e){
                           console.error(e);
                         });
                         scanner.addListener('scan',function(c){
                           document.getElementById("text").value=c;
                           document.forms[0].submit();//automatic trigger the qr code when scanning
                         });
                     </script>




<!-- jQuery 2.0.2 -->
<script src="styles/admin/js/jquery.min.js"></script>
<!-- jQuery UI 1.10.3 -->
<script src="styles/admin/js/jquery-ui-1.10.3.min.js" type="text/javascript"></script>
<!-- Bootstrap -->
<script src="styles/admin/js/bootstrap.min.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5 -->
<script src="styles/admin/js/plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>
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
