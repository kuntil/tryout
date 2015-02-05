<html>
<head>
<title><?php echo $title;?></title>
<link rel="shortcut icon" href="<?php echo base_url();?>stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>application/plugin/ckeditor/ckeditor.js"></script>
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
</head>

<body>
<div id="header">
	<div class="inHeader">
		<div class="mosAdmin">
		Hallo, Mas Administrator<br>
		<a href="<?php echo base_url(); ?>">Lihat website</a> | <?php echo anchor('#','about')?> | <?php echo anchor('c_login/logout','keluar');?>
		</div>
	<div class="clear"></div>
	</div>
</div>

<div id="wrapper">
	<div id="leftBar">
	<ul>
		<li><?php echo anchor('c_login/dashboard','Dashboard');?></li>
		<li><?php echo anchor('c_soal','list soal');?></li>
		<li><?php echo anchor('c_soal/add_soal','add soal');?></li>
<!--            <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>-->
	</ul>
	</div>
	<div id="rightContent">
        <?php echo form_open('c_berita/add_berita'); ?>
	<h3>Tambah Berita</h3>
        <table  width="95%">
            <tr>
                <td>Id</td><td>:</td><td><input type="text" class="pendek" disabled/></td>
            </tr>
            <tr>
                <td>Judul</td><td>:</td><td><input type="text" class="sedang" name="judul"/></td>
            </tr>
            <tr>
                <td>Isi</td><td>:</td><td><textarea class="ckeditor"name="isi"></textarea></td>
            </tr>
            <tr>
                <td>Gambar</td><td>:</td><td><input type="file" name="userfile"/></td>
            </tr>
        </table>
        <input type="submit" name="submit" value="Submit" class="button">
        <input type="reset" value="Reset" class="button">
        
        <?php echo form_close();?>
	</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="#" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>