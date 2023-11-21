<?php
require_once './library/config.php';
require_once './library/functions.php';

$errorMessage = '&nbsp;';
if (isset($_POST['name']) && isset($_POST['pwd'])) {
	$result = doLogin();
	if ($result != '') {
		$errorMessage = $result;
	}
}

?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Login</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="<?php echo WEB_ROOT;?>bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?php echo WEB_ROOT;?>dist/css/AdminLTE.css">
    <link rel="stylesheet" href="<?php echo WEB_ROOT;?>dist/css/style_log.css">
    <link href="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.css" rel="stylesheet"
        type="text/css" />
    <script src="<?php echo WEB_ROOT; ?>library/spry/textfieldvalidation/SpryValidationTextField.js"
        type="text/javascript"></script>

    <link href="<?php echo WEB_ROOT; ?>library/spry/passwordvalidation/SpryValidationPassword.css" rel="stylesheet"
        type="text/css" />
    <script src="<?php echo WEB_ROOT; ?>library/spry/passwordvalidation/SpryValidationPassword.js"
        type="text/javascript"></script>
</head>

<body class="hold-transition login-page" id="body-login">
    <!-- Banner -->
    <div class="banner-login">
        <img src="./bootstrap/img/banner_pd.png" alt="">
    </div>
    <!-- slides -->
    <!-- <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="width: 700px; margin-left: 160px;">
     
        <ol class="carousel-indicators">
            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>

      
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="./bootstrap/img/slide2.png" alt="..." style="height:300px;">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="./bootstrap/img/slide1.jpg" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
            <div class="item">
                <img src="./bootstrap/img/truong-dai-hoc-phuong-dong1.webp" alt="...">
                <div class="carousel-caption">
                    ...
                </div>
            </div>
        </div>

       
        <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div> -->
    <!-- End slide -->

    <div class="login-box">
        <div class="login-box-body">
            <h2 class="text-center" >QUẢN LÝ GIẢNG VIÊN</h2>
           
            <?php if($errorMessage != "&nbsp;" ) {?>
            <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h4><i class="icon fa fa-ban"></i> Alert!</h4><?php echo $errorMessage; ?>
            </div>
            <?php } ?>
            <form action="" method="post" id="form_login">
                <div class="form-group has-feedback">
                    <span id="sprytf_name">
                        <input type="text" name="name" class="form-control" placeholder="Username"
                            style="margin-top: 30px;">
                        <span class="glyphicon glyphicon-user form-control-feedback"></span>
                        <span class="textfieldRequiredMsg">Username is required.</span>
                        <span class="textfieldMinCharsMsg">Username must specify at least 4 characters.</span>
                    </span>
                </div>
                <div class="form-group has-feedback">
                    <span id="sprytf_pwd">
                        <input type="password" name="pwd" class="form-control" placeholder="Password">
                        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
                        <span class="passwordRequiredMsg">Password is required.</span>
                        <span class="passwordMinCharsMsg">You must specify at least 6 characters.</span>
                        <span class="passwordMaxCharsMsg">You must specify at max 10 characters.</span>
                    </span>
                </div>
                <div class="row">
                    <div class="col-xs-8">

                    </div><!-- /.col -->
                    <div class="col-xs-4">
                        <button type="submit" class="btn btn-flat btn-log">Đăng nhập</button>
                    </div><!-- /.col -->
                </div>
            </form>

        </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

</body>
<script>

var sprytf_name = new Spry.Widget.ValidationTextField("sprytf_name", "none", {
    minChars: 4,
    validateOn: ["blur", "change"]
});
var sprytf_pwd = new Spry.Widget.ValidationPassword("sprytf_pwd", {
    minChars: 4,
    maxChars: 12,
    validateOn: ["blur", "change"]
});
//

</script>

</html>