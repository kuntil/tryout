<html>
<head>
<title><?php echo $title; ?></title>

<link rel="shortcut icon" href="<?php echo base_url(); ?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>

<style>
.hover { background-color: #106166; color: #fff; cursor:pointer; }
.page{ margin:5px;}
    
tbody tr:nth-of-type(even){

}

tbody tr:nth-of-type(odd){

}
thead th{

}
</style>
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
    <!--        <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li> -->
	</ul>
	</div>
	<div id="rightContent">
	<h3>Daftar Berita</h3>
        
        <?php ?>
	
		<table class="data">
                    <thead>
			<tr class="data">
				<th class="data" width="60px">No.</th>
				<th class="data">Judul</th>
				<th class="data">Tgl Posting</th>
                                <th class="data" width="75px" colspan="3" >Pilihan</th>
			</tr>
                    </thead>
                    <tbody>
                        <?php
                            $i=1;
                            foreach($hasil->result() as $row) :
                        ?>
			<tr class="data">
                            
				<td class="data"><center><?php echo $i; ?></center></td>
				<td class="data"><?php echo $row->judul; ?></td>
				<td class="data"><?php echo $row->tgl?></td>
                                <td class="data" width="75px">
				<center>
				<a href="./c_berita/delete/<?php echo $row->id ?>"><img src="<?php echo base_url(); ?>mos-css/img/oke.png"></a>&nbsp;&nbsp;&nbsp;
				<a href="./c_berita/list_all/<?php echo $row->id ?>"><img src="<?php echo base_url(); ?>mos-css/img/detail.png"></a>
				</center>
				</td>
                            
			</tr>
                    </tbody>
                        <?php
                            endforeach;
                        ?>
			
		</table>
</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>