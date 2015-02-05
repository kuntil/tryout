<html>
<head>
<title><?php echo $title; ?></title>

<link rel="shortcut icon" href="<?php echo base_url(); ?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>

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
		<?php if($this->session->userdata('username')=="admin"){?>
                <li><?php echo anchor('c_soal','list soal');?></li>
		<li><?php echo anchor('c_soal/add_soal','add soal');?></li>
                <?php } ?>
    <!--        <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>  -->
	</ul>
	</div>
	<div id="rightContent">
	<h3>Nilai Tryout Yang Terkahir Dilakukan</h3>
        <div class="main">  
        <section class="post">
        <?php echo form_open('home/roster')?>
        <br>
        <?php 
        foreach ($compare->result() as $row) :
        ?>
        <table width="100%">
            <tr>
                <td><u><b>Matapelajaran Dasar</b></u></td>
                <td></td>
                <td><u><b>Matapelajaran Ipa</b></u></td>
                <td></td>
                <td><u><b>Matapelajaran Ips</b></u></td>  
                <td></td>
            </tr>
            <tr>
                <td>Matematika</td><td>: <?php echo $row->benar_mtk?> Benar <?php echo $row->salah_mtk?> Salah</td>
                <td>Biologi</td><td>: <?php echo $row->benar_bio?> Benar <?php echo $row->salah_bio?> Salah</td>
                <td>Ekonomi</td><td>: <?php echo $row->benar_eko?> Benar <?php echo $row->salah_eko?> Salah</td>
            </tr>
            <tr>
                <td>Bahasa Indonesia</td><td>: <?php echo $row->benar_ind?> Benar <?php echo $row->salah_ind?> Salah</td>
                <td>Kimia</td><td>: <?php echo $row->benar_kim?> Benar <?php echo $row->salah_kim?> Salah</td>
                <td>Geografi</td><td>: <?php echo $row->benar_geo?> Benar <?php echo $row->salah_geo?> Salah</td>
            </tr>
            <tr>
                <td>Bahasa Inggris</td><td>: <?php echo $row->benar_ing?> Benar <?php echo $row->salah_ing?> Salah</td>
                <td>Fisika</td><td>: <?php echo $row->benar_fis?> Benar <?php echo $row->salah_fis?> Salah</td>
                <td>Sejarah</td><td>: <?php echo $row->benar_sej?> Benar <?php echo $row->salah_sej?> Salah</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><b>Total</b></td>
                <td><b>: <?php echo ($row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej);?> Benar
                      <?php echo ($row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej);?> Salah
                    </b></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><b>Point</b></td>
                <td><b>: <?php $point = (((($row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej)*4)- ($row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej))/(90*4)*100); echo $point?></b></td>
            </tr>
        </table>
        <br>
        <br>
        <u><b>Target Universitas</b></u>
        <?php $i=1;foreach ($target->result() as $row) : ?>
        <p><?php echo $i.".  ".$row->universitas." ".$row->program_studi." Pasing Grade : ".$row->point;
        
        if($row->point >= $point){
            echo ' <b> gagal</b>';
        }else{
            echo ' <b>Status : berhasil</b>';
        }?></p>
        <?php $i++;endforeach;?>
        <?php
        endforeach;
        ?>
        
    </section>
</div>

	</div>
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>