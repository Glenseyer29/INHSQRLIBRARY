<?php
require_once 'core/init.php';

if (Input::exists()) {
    if (Token::check(Input::get('token'))) {
        $user = new UserLogin();

        try {
            $user->create(array(
                'username' => Input::get('username'),
                'password' => Hash::make(Input::get('password')),
                'joined' => date('Y-m-d H:i:s'),
                //0 permission is student
                'permission' => 6
            ));

            Session::flash('home', 'Welcome ' . Input::get('username') . '! Your account has been registered. You may now log in.');
            Redirect::to('register.php');
        } catch (Exception $e) {
            echo $e, '<br>';
        }
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>IBA NATIONAL HIGH SCHOOL</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="images/icons/favicon.png" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Bootstrap 3.0.2 -->
    <link href="styles/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- font Awesome -->
    <link href="styles/admin/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="styles/admin/css/all.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="styles/admin/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="styles/admin/css/AdminLTE.css" rel="stylesheet" type="text/css" />
    <!-- Bootstrap Validator CSS -->
    <link href="css/bootstrap-datepicker.min.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" type="text/css" href="css/util.min.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>

<body class="animsition">
    <!-- Header -->
    <header style="background-color: #092190;">
        <!-- Header desktop -->
        <div class="container-menu-desktop">
            <!-- Top Bar -->
            <div class="top-bar">
                <div class="content-topbar flex-sb-m h-full container">
                    <div class="left-top-bar">
                        <span class="fs-13 cl11 pr-10">
                            Welcome to IBA NATIONAL HIGH SCHOOL
                        </span>
                    </div>
                </div>
            </div>

            <!-- Header Mobile -->
            <div class="wrap-header-mobile">
                <!-- Logo -->
                <div class="logo">
                    <a href="index.php"><img src="images/icons/logo-01.png" alt="IMG-LOGO"></a>
                </div>
            </div>

            <!-- Navigation -->
            <div class="wrap-main-nav" style="background-color: #092190;">
                <nav class="main-nav">
                    <!-- Menu desktop -->
                    <ul class="main-menu">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="about.php">About</a></li>
                        <li><a href="contact.php">Contact</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <!-- Breadcrumb -->
    <div class="container">
        <div class="headline bg0 flex-wr-sb-c p-rl-20 p-tb-8">
            <div class="f2-s-1 p-r-30 m-tb-6" align="left">
                <a href="index.php" class="breadcrumb-item f1-s-3 cl9">
                    Home >


                <span class="breadcrumb-item f1-s-3 cl9">
                    Student Registration
                </span>
                  </a>
            </div>
        </div>
    </div>
<br>
    <!-- Page heading -->
    <div class="container p-t-4 p-b-40">
        <h2 class="f1-l-1 cl2" style="text-align:center">
            STUDENT REGISTRATION
        </h2>
    </div>

    <!-- Content -->
    <section class="bg0 p-b-60">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6 col-lg-6 p-b-80">
                    <div class="p-r-10 p-r-0-sr991">
                        <form method="post" action="">
                            <?php if (Session::exists('home')) { ?>
                                <div class="alert alert-success">
                                    <i class="glyphicon glyphicon-ok"></i> &nbsp;<?php echo Session::flash('home'); ?>
                                </div>
                            <?php } ?>

                            <div class="form-group">
                                <label for="username" class="f1-s-13 cl5">Username</label>
                                <input type="text" class="form-control" name="username" id="username" value="<?php echo escape(Input::get('username')); ?>" placeholder="Username" required>
                            </div>

                            <div class="form-group">
                                <label for="password" class="f1-s-13 cl5">Password</label>
                                <input type="password" class="form-control" name="password" id="password" placeholder="Password" required>
                            </div>

                            <div class="form-group">
                                <label for="password_again" class="f1-s-13 cl5">Password Again</label>
                                <input type="password" class="form-control" name="password_again" id="password_again" value="" placeholder="Re-type Password" required>
                            </div>

                            <input type="hidden" name="token" value="<?php echo Token::generate(); ?>">
                            <button type="submit" class="btn btn-primary">
                                Register
                            </button>


                        </form><br>
                              <p class="f1-s-13 cl5">Already have an account? <a href="index.php">Back to Login</a></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Footer -->
    <?php include 'includes/footer.html'; ?>

    <!-- Back to top -->
    <div class="btn-back-to-top" id="myBtn">
        <span class="symbol-btn-back-to-top">
            <span class="fas fa-angle-up"></span>
        </span>
    </div>

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
    </script>
</body>

</html>
