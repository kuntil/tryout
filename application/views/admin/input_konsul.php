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

<script type="text/javascript">
    
    $(document).ready(function(){
        $("#nama_tentor").autocomplete("get_tentor.php",{width:135});
    }
</script>
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
   <!--         <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>  -->
	</ul>
	</div>
	<div id="rightContent">
        <?php echo form_open('c_konsul/add'); ?>
	<h3>Tambah Konsul</h3>
                
		<table width="95%">
<!--                    <tr><td width="125px"><b>ID Soal</b></td><td><input type="text" class="pendek" name="id" value="<?php echo $id?>"></td></tr>-->
                        <tr><td><b>Tentor</b></td>
                         <td><select name="tentor">
                                 <option selected>-- pilihan --</option>
                                 <?php foreach ($tentor->result() as $row ) :?>
                                 <option value="<?php echo $row->id_tentor?>"><?php echo $row->nama;?></option>
                                 <?php endforeach; ?>
                         </select></td>
                         </tr>
                        <tr><td><b>Jenis</b></td>
                            <td>
                                <select name="jenis">
                                    <option selected>-- pilihan --</option>
                                    <option value="tambahan">Tambahan</option>
                                    <option value="konseling">Konseling</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                        <input type="hidden" name="kd_mtk" value="<?php echo $row->matapelajaran;?>">
                            <td><b>Tanggal</b></td>
                            <td><input type="date" name="tanggal"/></td>
                        </tr>
                        <tr>
                            <td><b>Jam</b></td>
                            <td><input type="time" name="jam"/></td>
                        </tr>
                        <tr><td></td><td>
                        <input type="submit" class="button" value="Submit" name="simpan">
			<input type="reset" class="button" value="Reset">
			</td></tr>
		</table>
       <?php echo form_close();?>
	</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html> 