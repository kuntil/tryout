<html>
<head>
<title><?php echo $title; ?></title>

<link rel="shortcut icon" href="<?php echo base_url(); ?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>

</head>

<body>
<div id="header">
	<div class="inHeader">
		<div class="mosAdmin">
		Hallo, Administrator<br>
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
 <!--           <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>  -->
	</ul>
	</div>
	<div id="rightContent">
	<h3><b> Data Lengkap</b></h3>

        <table cellspacing="20" cellpadding="20">
        
        <?php foreach ($hasil->result() as $row ) : ?>
            <tr><td>Nama </td><td>:</td><td><p><?php echo $row->nama;?></p></td></tr>
            <tr><td>Asal Sekolah </td><td>:</td><td><p><?php echo $row->sekolah;?></p></td></tr>
            <tr><td>Kelas </td><td>:</td><td><p><?php echo $row->kelas;?></p></td></tr>
            <tr><td>No. Handphone </td><td>:</td><td><p><?php echo $row->no_hp;?></p></td></tr>
            <tr><td>Password </td><td>:</td><td><p><?php echo $row->password;?></p></td></tr>
            <tr><td>Status User </td><td>:</td><td><p><?php echo $row->status;?></p></td></tr>
	<?php endforeach;?>
        </table>
        <?php echo form_open('c_user')?>
        <table cellspacing="20" cellpadding="20">
            <tr>
                <td>
                    <input type="submit" name="Back" value="back" class="button">
                </td>
            </tr>
        </table>
        
        <?php echo form_close();?>
        </div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryaxx@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>