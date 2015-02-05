<html>
<head>
<title><?php echo $title;?></title>
<link rel="shortcut icon" href="<?php echo base_url();?>stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<script type="text/javascript">
<!--
//initial checkCount of zero
var checkCount=0

//maximum number of allowed checked boxes
var maxChecks=15

function setChecks(obj){
//increment/decrement checkCount
if(obj.checked){
checkCount=checkCount+1
}else{
checkCount=checkCount-1
}
//if they checked a 4th box, uncheck the box, then decrement checkcount and pop alert
if (checkCount>maxChecks){
obj.checked=false
checkCount=checkCount-1
alert('Masimal Jumlah Soal Untuk Satu Kode Soal '+maxChecks+' saja, ok.')
}
}
//-->
</script>

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
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li>  -->
	</ul>
	</div>
	<div id="rightContent">
        <h3>Daftar Soal</h3>
        
        <?php echo form_open('c_kdsoal/add'); ?>
	
		<table class="data">
                    <thead>
			<tr class="data">
				<th class="data" width="60px">No.</th>
				<th class="data">Mata Pelajaran</th>
				<th class="data">Soal</th>
                                <th class="data" width="75px" colspan="3" >Pilihan</th>
			</tr>
                    </thead>
                    <tbody>
                        <?php
                            $i=1;
                            foreach($hasil->result() as $row) :
                        ?>
			<tr class="data">
                            
				<td class="data"><?php echo $i; ?></td>
				<td class="data"><?php echo $row->mata_pelajaran; ?></td>
				<td class="data"><?php echo $row->soal?></td>
                                <td class="data" width="75px">
				<center>
                                    <input type="checkbox" class="select"  name="soalnya[]" value="<?php echo $row->id_soal;?>" onclick="setChecks(this)">
                                    <input type="hidden" name="mata" value="<?php echo $row->mata_pelajaran;?>">
				</center>
				</td>
                            
			</tr>
                        <?php $i++;?>
                        <?php
                            endforeach;
                        ?>
                    </tbody>
		</table>
                <script type="text/javascript">

                //Syntax: checkboxlimit(checkbox_reference, limit)
                checkboxlimit(document.forms.world.asem, 2)

                </script>
                <p>
			
                        <input type="submit" class="button" value="Input" name="submit">
			<input type="reset" class="button" value="Reset">
			
                </p>

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