<html>
<head>
<title><?php echo $title ?></title>
<link rel="shortcut icon" href="<?php echo base_url();?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
</head>

<body>
<div id="header">
	<div class="inHeader">
		<div class="mosAdmin">
		Hallo, <?php echo $this->session->userdata('username'); ?><br>
                <a href="<?php echo base_url(); ?>">Lihat website</a> | <?php echo anchor('#','about')?> | <?php echo anchor('c_login/logout','keluar');?>
		</div>
	<div class="clear"></div>
	</div>
</div>

<div id="wrapper">
	<div id="leftBar">
	<ul>
		<li><?php echo anchor('c_login/dashboard','Dashboard');?></li>
		<?php 
                if ($this->session->userdata('username')=="admin"){
                ?>
                <li><?php echo anchor('c_soal','list soal');?></li>
		<li><?php echo anchor('c_soal/add_soal','add soal');?></li>
<!--		<li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>-->
                <?php 
                }
                ?>
	</ul>
	</div>
	<div id="rightContent">
	<h3>Dashboard</h3>
	<div class="quoteOfDay">
	<b>Quote of the day :</b><br>
	<i style="color: #5b5b5b;">"If you think you can, you really can"</i>
	</div>
                <?php if($this->session->userdata('username')=="admin"){?>
		<div class="shortcutHome">
                <a href="../c_soal"><img src="<?php echo base_url();?>mos-css/img/soal.png"><br> Management Soal</a>
		</div>
		<div class="shortcutHome">
		<a href="../c_kdsoal"><img src="<?php echo base_url();?>mos-css/img/kdsoal.png"><br>Management Kode Soal</a>
		</div>
		<div class="shortcutHome">
		<a href="../c_user"><img src="<?php echo base_url();?>mos-css/img/user.png"><br>Management Siswa</a>
		</div>
		<div class="shortcutHome">
		<a href="../c_tryout"><img src="<?php echo base_url();?>mos-css/img/paket.png"><br>Management Tryout</a>
		</div>
<!--		<div class="shortcutHome">
		<a href=""><img src="<?php echo base_url();?>mos-css/img/mail.png"><br>Management SMS</a>
		</div>-->
                <div class="shortcutHome">
		<a href="../c_tentor"><img src="<?php echo base_url();?>mos-css/img/guru.png"><br>Management Tentor</a>
		</div>
                <div class="shortcutHome">
		<a href="../c_konsul"><img src="<?php echo base_url();?>mos-css/img/statistic.png"><br>Management Konsultasi</a>
		</div>
                <div class="shortcutHome">
		<a href="../c_universitas"><img src="<?php echo base_url();?>mos-css/img/quote.png"><br>Management Universitas</a>
		</div>
                <?php }else{?>
                <div class="shortcutHome">
		<a href="../c_user"><img src="<?php echo base_url();?>mos-css/img/user.png"><br>Management Siswa</a>
		</div>
                <?php } ?>
                <div class="shortcutHome">
		<a href="../c_result"><img src="<?php echo base_url();?>mos-css/img/hasil.png"><br>Tryout Result</a>
		</div>
<!--                <div class="shortcutHome">
		<a href="../c_print"><img src="<?php echo base_url();?>mos-css/img/download.png"><br>Print Paket Soal</a>
		</div>-->
                <div class="shortcutHome">
		<a href="../c_useronline"><img src="<?php echo base_url();?>mos-css/img/user_list.png"><br>User Sedang Online</a>
		</div>
		
		<div class="clear"></div>
		
		<div id="smallRight"><h3>Informasi web anda</h3>
		<table style="border: none;font-size: 12px;color: #5b5b5b;width: 100%;margin: 10px 0 10px 0;">
			<tr><td style="border: none;padding: 4px;">Jumlah Soal</td><td style="border: none;padding: 4px;"><b><?php echo $soal;?></b></td></tr>
			<tr><td style="border: none;padding: 4px;">Jumlah Kode Soal</td><td style="border: none;padding: 4px;"><b><?php echo $kdsoal;?></b></td></tr>
			<tr><td style="border: none;padding: 4px;">Jumlah Paket Soal</td><td style="border: none;padding: 4px;"><b><?php echo $paket;?></b></td></tr>
			<tr><td style="border: none;padding: 4px;">Jumlah User</td><td style="border: none;padding: 4px;"><b><?php echo $user;?></b></td></tr>
			<tr><td style="border: none;padding: 4px;">Jumlah Tentor</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr><td style="border: none;padding: 4px;">Jumlah Quote</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
		</table>
		</div>
		<div id="smallRight"><h3>Statistik pengunjung web</h3>
		
		<table style="border: none;font-size: 12px;color: #5b5b5b;width: 100%;margin: 10px 0 10px 0;">
			<tr><td style="border: none;padding: 4px;">Pengunjung online</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr><td style="border: none;padding: 4px;">Pengunjung hari ini</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr><td style="border: none;padding: 4px;">Total pengunjung</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr><td style="border: none;padding: 4px;">Hit hari ini</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
			<tr><td style="border: none;padding: 4px;">Total hit</td><td style="border: none;padding: 4px;"><b>12</b></td></tr>
		</table>
		</div>
	</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>