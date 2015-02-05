<html>
<head>
<title><?php echo $title;?></title>
<link rel="shortcut icon" href="<?php echo base_url();?>stylesheet/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url();?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
<!-- TinyMCE -->
<script type="text/javascript" src="<?php echo base_url();?>application/libraries/tiny_mce/tiny_mce.js"></script>
<script type="text/javascript">
	tinyMCE.init({
		// General options
		mode : "textareas",
		theme : "advanced",
		plugins : "autolink,lists,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,wordcount,advlist,autosave,visualblocks",

		// Theme options
		theme_advanced_buttons1 : "save,newdocument,|,bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,styleselect,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "cut,copy,paste,pastetext,pasteword,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,help,code,|,insertdate,inserttime,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,emotions,iespell,media,advhr,|,print,|,ltr,rtl,|,fullscreen",
		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true,

		// Drop lists for link/image/media/template dialogs
		template_external_list_url : "<?php echo base_url();?>application/libraries/tiny_mce/lists/template_list.js",
		external_link_list_url : "<?php echo base_url();?>application/libraries/tiny_mce/lists/link_list.js",
		external_image_list_url : "<?php echo base_url();?>application/libraries/tiny_mce/lists/image_list.js",
		media_external_list_url : "<?php echo base_url();?>application/libraries/tiny_mce/lists/media_list.js",

		// Style formats
		style_formats : [
			{title : 'Bold text', inline : 'b'},
			{title : 'Red text', inline : 'span', styles : {color : '#ff0000'}},
			{title : 'Red header', block : 'h1', styles : {color : '#ff0000'}},
			{title : 'Example 1', inline : 'span', classes : 'example1'},
			{title : 'Example 2', inline : 'span', classes : 'example2'},
			{title : 'Table styles'},
			{title : 'Table row 1', selector : 'tr', classes : 'tablerow1'}
		],

		// Replace values for the template plugin
		template_replace_values : {
			username : "Some User",
			staffid : "991234"
		}
	});
</script>
<!-- /TinyMCE -->
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
  <!--  <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li> -->
	</ul>
	</div>
	<div id="rightContent">
        <?php echo form_open('c_soal/add_soal'); ?>
	<h3>Tambah Soal</h3>
                
		<table width="95%">
<!--                    <tr><td width="125px"><b>ID Soal</b></td><td><input type="text" class="pendek" name="id" value="<?php echo $id?>"></td></tr>-->
                        <tr><td><b>Mata Pelajaran</b></td><td>
                                <select name="mata_pelajaran">
					<option selected>-- pilihan --</option>
					<option value="matematika">Matematika</option>
					<option value="bahasa indonesia">Bahasa Indonesia</option>
					<option value="bahasa inggris">Bahasa Inggris</option>
					<option value="biologi">Biologi</option>
					<option value="kimia">Kimia</option>
					<option value="fisika">Fisika</option>
					<option value="ekonomi">Ekonomi</option>
					<option value="sejarah">Sejarah</option>
					<option value="geografi">Geografi</option>
                                        
				</select>
			</td>
                        </tr>
                        <tr><td><b>Soal</b></td><td><textarea name="soal"></textarea></td></tr>
                        <tr><td><b>Pilihan A</b></td><td><textarea name="a"></textarea></td></tr>
                        <tr><td><b>Pilihan B</b></td><td><textarea name="b"></textarea></td></tr>
                        <tr><td><b>Pilihan C</b></td><td><textarea name="c"></textarea></td></tr>
                        <tr><td><b>Pilihan D</b></td><td><textarea name="d"></textarea></td></tr>
                        <tr><td><b>Pilihan E</b></td><td><textarea name="e"></textarea></td></tr>
                        <tr><td><b>Jawaban</b></td><td>
                                <select name="jawaban">
					<option selected>-- pilihan --</option>
					<option value="a">A</option>
					<option value="b">B</option>
					<option value="c">C</option>
					<option value="d">D</option>
					<option value="e">E</option>
				</select>
			</td></tr>
                        <tr><td></td><td><textarea name="penjelasan"></textarea></td></tr>
			<tr><td></td><td>
                        <input type="submit" class="button" value="Submit" name="submit">
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