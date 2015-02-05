<html>
<head>
<title><?php echo $title;?></title>
<link rel="shortcut icon" href="<?php echo base_url();?>stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<!--<link type="text/css" href="css/smoothness/autocomplete.css" rel="stylesheet" />-->  
<script type="text/javascript" src="<?php echo base_url();?>js/autocomplete.js"></script>
<script type="text/javascript" src="<?php echo base_url();?>application/plugin/ckeditor/ckeditor.js"></script>
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>

</head>
<body>body
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
       <!--     <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>  -->
	</ul>
	</div>
	<div id="rightContent">
        <?php foreach ($hasil->result() as $row ) :?>
        <?php echo form_open('c_tentor/edit/'.$row->id_tentor); ?>
	<h3>Tambah Konsul</h3>
                
		<table width="95%">
<!--                    <tr><td width="125px"><b>ID Soal</b></td><td><input type="text" class="pendek" name="id" value="<?php echo $id?>"></td></tr>-->
                        <tr>
                            <td><b>Nama</b></td>
                            <td><input type="text" name="nama" class="input-small" value="<?php echo $row->nama;?>"/></td>
                        </tr>
                        <tr>
                            <td><b>Username</b></td>
                            <td><input type="text" name="username" class="input-small" value="<?php echo $row->username;?>"/></td>
                        </tr>
                        <tr>
                            <td><b>Password</b></td>
                            <td><input type="password" name="password" value="<?php echo $row->password?>"/></td>
                        </tr>
                        <tr>
                            <td><b>Matapelajaran</b></td>
                            <td><select name="mata_pelajaran">
                                    <option selected value="<?php echo $row->matapelajaran;?>"><?php echo $row->matapelajaran;?></option>
					<option value="matematika">Matematika</option>
					<option value="bahasa indonesia">Bahasa Indonesia</option>
					<option value="bahasa inggris">Bahasa Inggris</option>
					<option value="biologi">Biologi</option>
					<option value="kimia">Kimia</option>
					<option value="fisika">Fisika</option>
					<option value="ekonomi">Ekonomi</option>
					<option value="sejarah">Sejarah</option>
					<option value="geografi">Geografi</option>
				</select></td>
                        </tr>
                        <tr>
                            <td><b>Perndikan Terakhir</b></td>
                            <td><select name="pendidikan">
                                        <option selected value="<?php echo $row->pendidikan?>">
                                        <?php 
                                        switch ($row->pendidikan) :
                                            case 'SMA' :
                                                $tampil = 'Sekolah Menengah Atas';
                                                break;
                                            case 'SMK' :
                                                $tampil = 'Sekolah Menengah Kejuruan';
                                                break;
                                            case 'MAN' :
                                                $tampil = 'Madrayah Aliyah Negeri';
                                                break;
                                            case 'S1' :
                                                $tampil = 'Sarjana Muda';
                                                break;
                                            case 'S2' :
                                                $tampil = 'Magister';
                                                break;
                                            case 'S3' :
                                                $tampil = 'Dokttoral';
                                                break;
                                            default :
                                                $tampil = '';
                                                break;
                                        endswitch;
                                        echo $tampil;
                                        ?>
                                        
                                        </option>
					<option value="SMA">Sekolah Menengah Atas</option>
					<option value="SMK">Sekolah Menengah Kejuruan</option>
					<option value="MAN">Madrasyah Alyah Negeri</option>
					<option value="S1">Sarjana Muda</option>
					<option value="S2">Magister</option>
					<option value="S3">Doktoral</option>
				</select></td>
                        </tr>
                        <tr>
                            <td><b>No. Handphone/Telphone</b></td>
                            <td><input type="number" name="no_hp" value="<?php echo $row->no_hp;?>"/></td>
                        </tr>
                        <td></td><td>
                        <input type="submit" class="button" value="Submit" name="simpan">
			<input type="reset" class="button" value="Reset">
			</td></tr>
		</table>
       <?php echo form_close();?>
        <?php endforeach;?>
	</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html> 