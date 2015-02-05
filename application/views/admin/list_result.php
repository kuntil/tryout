<html>
<head>
<title><?php echo $title; ?></title>
<link rel="shortcut icon" href="<?php echo base_url(); ?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<script language="javascript">
$(document).ready(function() {
var rows=$('table').find('tbody tr').length;
var no_rec_per_page=20;
var no_pages= Math.ceil(rows/no_rec_per_page);
var $pagenumbers=$('<div id="pages"></div>');
for(i=0;i<no_pages;i++)
{
$('<span class="page">'+(i+1)+'</span>').appendTo($pagenumbers);
}
$pagenumbers.insertAfter('table');
$('.page').hover(
function(){
$(this).addClass('hover');
},
function(){
$(this).removeClass('hover');
}
);
$('table').find('tbody tr').hide();
var tr=$('table tbody tr');
for(var i=0;i<=no_rec_per_page-1;i++)
{
$(tr[i]).show();
}
$('span').click(function(event){
$('table').find('tbody tr').hide();
for(i=($(this).text()-1)*no_rec_per_page;i<=$(this).text()*no_rec_per_page-1;i++)
{
$(tr[i]).show();
}
});
});
</script>

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
                <li><?php  echo anchor('c_soal','list soal');?></li>
		<li><?php echo anchor('c_soal/add_soal','add soal');?></li>
                <?php } ?>
<!--		<li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>-->
	</ul>
	</div>
	<div id="rightContent">
	<h3>Daftar Hasil Tryout</h3>
        
        <?php ?>
	
		<table class="data">
            <thead>
			<tr class="data">
				<th class="data" width="60px">No.</th>
				<th class="data">Nama</th>
				<th class="data">Tgl Ujian</th>
				<th class="data">Mtk</th>
				<th class="data">Ind</th>
				<th class="data">Ing</th>
				<th class="data">Bio</th>
				<th class="data">Kim</th>
				<th class="data">Fis</th>
				<th class="data">Eko</th>
				<th class="data">Geo</th>
				<th class="data">Sej</th>
			</tr>
            </thead>
                    <tbody>
                        <?php
                            $i=1;
                            foreach($query->result() as $row) :
                        ?>
				<tr class="data">
				<td class="data"><center><?php echo $i; ?></center></td>
				<td class="data"><?php echo $row->nama; ?></td>
				<td class="data"><?php echo $row->tgl; ?></td>
                                <td class="data"><span title="<?php echo "Benar : ".$row->benar_mtk." Salah : ".$row->salah_mtk?>"><?php echo ($row->benar_mtk - $row->salah_mtk);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_ind." Salah : ".$row->salah_ind?>"><?php echo ($row->benar_ind - $row->salah_ind);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_ing." Salah : ".$row->salah_ing?>"><?php echo ($row->benar_ing - $row->salah_ing);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_bio." Salah : ".$row->salah_bio?>"><?php echo ($row->benar_bio - $row->salah_bio);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_kim." Salah : ".$row->salah_kim?>"><?php echo ($row->benar_kim - $row->salah_kim);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_fis." Salah : ".$row->salah_fis?>"><?php echo ($row->benar_fis - $row->salah_fis);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_eko." Salah : ".$row->salah_eko?>"><?php echo ($row->benar_eko - $row->salah_eko);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_geo." Salah : ".$row->salah_geo?>"><?php echo ($row->benar_geo - $row->salah_geo);?></span></td>
				<td class="data"><span title="<?php echo "Benar : ".$row->benar_sej." Salah : ".$row->salah_sej?>"><?php echo ($row->benar_sej - $row->salah_sej);?></span></td>
				                            
			</tr>
                    </tbody>
                        <?php $i++;
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