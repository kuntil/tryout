<html>
<head>
<title><?php echo $title; ?></title>

<link rel="shortcut icon" href="<?php echo base_url();?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
</head>

<body>
<div id="header">
	<div class="inHeaderLogin"></div>
</div>
    

<?php echo form_open('c_login/cek_login');?>
<div id="loginForm">
	<div class="headLoginForm">
	Login Administrator
	</div>
	<div class="fieldLogin">

	<label>Username</label><br>
        <input type="text" class="login" name="username"><br>
	<label>Password</label><br>
        <input type="password" class="login"  name="password"><br>
        <input type="radio" name="akses" value="admin"> Admin <input type="radio" name="akses" value="tentor"> Tentor <br><br>
        <input type="submit" class="button" value="Login" ><label></label><br>
        <?php echo form_close(); ?>
	</div>
</div>
    <div>
        <?php if($this->session->flashdata('message')):?>
        <?php echo $this->session->flashdata('message');?>
        <?php endif;?>
    </div>
    
</body>
</html>