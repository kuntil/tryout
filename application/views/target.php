<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

?>
<html lang="en" style="-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title><?php echo $title?></title>
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url();?>css/images/jilc.ico" />
	<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="<?php echo base_url();?>css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' /> 
</head>
<body>
<!-- wraper -->
<div id="wrapper">
<!-- shell -->
    <div class="shell">
    <!-- container -->
        <div class="container">
           <header id="header">
		<h1 id="logo"><?php echo anchor('home','Simulasi Tryout');?></h1>
		<!-- search -->
		<!-- end of search -->
          </header>
            
          <div class="main">  
    <section class="post">
        <h2>Target Universitas </h2>
        <?php echo form_open('c_target/add')?>
        <br>
        <table width="100%" cellspacing="15px" class="data">
            <tr class="data">
                <th class="data">No.</th>
                <th class="data">Universitas</th>
                <th class="data">Jurusan</th>
                <th class="data">Program Studi</th>
                <th class="data">Point</th>
                <th class="data">Kursi</th>
				<th class="data">Peminat</th>
				<th class="data">Jml Tidak Lulus</th>
                <th class="data">Pilih</th>
            </tr>
            <?php $i=1; foreach ($universitas->result() as $row) :?>
            <tr class="data">
                <td class="data"><center><?php echo $i?></center></td>
                <td class="data"><?php echo $row->universitas?></td>
                <td class="data"><center><?php echo $row->jurusan?></cente></td>
                <td class="data"><?php echo $row->program_studi?></td>
                <td class="data"><center><?php echo $row->kursi?><center></td>
                <td class="data"><center><?php echo $row->point?></center></td>
				<td class="data"><center><?php echo $row->jml_peminat?></center></td>
				<td class="data"><center><?php echo $row->jml_tdk_lulus?></center></td>
                <td class="data"><center><input type="checkbox" name="ceklist[]" value="<?php echo $row->id_universitas?>"/></center></td>
            </tr>
            <?php $i++; endforeach;?>
        </table>
        <br>
        <input type="submit" name="submit" value="Submit" class="button" title="Simpan"/>
        <input type="reset" name="submit" value="Reset" class="button" title="Reset"/>
        <?php echo form_close()?>
        <div class="cl">&nbsp;</div>
        
    </section>
</div>
        </div>
    </div>
</div>

</body>