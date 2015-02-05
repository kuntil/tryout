<html>
<head>
<title><?php echo $title; ?></title>

<link rel="shortcut icon" href="<?php echo base_url(); ?>mos-css/img/devil-icon.png"> <!--Pemanggilan gambar favicon-->
<link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>mos-css/mos-style.css"> <!--pemanggilan file css-->
<?php echo link_tag(base_url().'css/jilc.png','shortcut icon','image/ico'); ?>
<script type="text/javascript" src="<?php echo base_url(); ?>script/jquery.min.js"></script>
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
		<li><?php echo anchor('c_soal','list soal');?></li>
		<li><?php echo anchor('c_soal/add_soal','add soal');?></li>
<!--            <li><?php echo anchor('c_berita','list berita');?></li>
		<li><?php echo anchor('c_berita/add_berita','add berita');?></li> -->
	</ul>
	</div>
	<div id="rightContent">
            <?php echo form_open('c_tryout/replace')?>
            <h3>Management Tryout</h3>
              <table>
                <tr>
                    <td><h4>Pengetahuan Dasar</h4></td>
                </tr>
                <tr>
                    <td>Matematika</td>
                    <td>
                        <select name="act_mtk">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($mtk->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active : </td>
                    <td><b> 
                        <?php 
                            foreach ($act_mtk->result() as $row ) :
                                echo $row->kd_mtk;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Bahasa Indonesia</td>
                    <td>
                        <select name="act_ind">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($ind->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_ind->result() as $row ) :
                                echo $row->kd_ind;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Bahasa Inggris</td>
                    <td>
                        <select name="act_ing">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($ing->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_ing->result() as $row ) :
                                echo $row->kd_ing;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <?php foreach ($dll->result()as $row) : ?>
                <tr>
                    <td>Tanggal Tryout</td>
                    <td><input type="date" name="tgl_dasar"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->tgl_dasar ?></b></td>
                </tr>
                <tr>
                    <td>Jam Tryout</td>
                    <td><input type="time" name="jam_dasar"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->jam_dasar ?></b></td>
                </tr>
                <?php endforeach; ?>
                <!-- Batas Kemampuan Dasar -->                             
                <tr>
                    <td><h4>Pengetahuan IPA </h4></td>
                </tr>
                <tr>
                    <td>Biologi</td>
                    <td>
                        <select name="act_bio">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($bio->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_bio->result() as $row ) :
                                echo $row->kd_bio;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Fisika</td>
                    <td>
                        <select name="act_fis">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($fis->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_fis->result() as $row ) :
                                echo $row->kd_fis;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Kimia</td>
                    <td>
                        <select name="act_kim">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($kim->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_kim->result() as $row ) :
                                echo $row->kd_kim;
                            endforeach;
                        ?>
                    </b></td>
                    
                </tr>
                <?php foreach ($dll->result()as $row) : ?>
                <tr> 
                    <td>Tanggal Tryout</td>
                    <td><input type="date" name="tgl_ipa"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->tgl_ipa?></b></td>
                </tr>
                <tr>
                    <td>Jam Tryout</td>
                    <td><input type="time" name="jam_ipa"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->jam_ipa ?></b></td>
                </tr>
                <?php endforeach;?>
                <!-- Batas Kemampuan IPA -->
                <tr>
                    <td><h4>Pengetahuan IPS </h4></td>
                </tr>
                <tr>
                    <td>Geografi</td>
                    <td>
                        <select name="act_geo">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($geo->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_geo->result() as $row ) :
                                echo $row->kd_geo;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Ekonomi</td>
                    <td>
                        <select name="act_eko">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($eko->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_eko->result() as $row ) :
                                echo $row->kd_eko;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <tr>
                    <td>Sejarah</td>
                    <td>
                        <select name="act_sej">
                            <option>-- pilihan --</option>
                            <?php 
                            foreach ($sej->result() as $row) : 
                                echo "<option>".$row->kd_soal."</option>";
                            endforeach;
                            ?>
                        </select>
                    </td>
                    <td> Active :</td>
                    <td><b>
                        <?php 
                            foreach ($act_sej->result() as $row ) :
                                echo $row->kd_sej;
                            endforeach;
                        ?>
                    </b></td>
                </tr>
                <?php foreach ($dll->result()as $row) : ?>
                <tr>
                    <td>Tanggal Tryout</td>
                    <td><input type="date" name="tgl_ips"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->tgl_ips ?></b></td>
                </tr>
                <tr>
                    <td>Jam Tryout</td>
                    <td><input type="time" name="jam_ips"/></td>
                    <td>Active :</td>
                    <td><b><?php echo $row->jam_ips ?></b></td>
                </tr>
                <?php endforeach;?>
            </table>
            
            <input type="submit" name="submit" value="Submit" class="button"/>
            <input type="reset" name="reset" value="reset" class="button"/>
            <?php echo form_close(); ?>
       	</div>
    
<div class="clear"></div>
<div id="footer">
	&copy; 2014 Genetika css template | <a href="#">Nama Website Anda</a> | design <a href="http://arirusmanto.com" target="_blank">duzelaryax@yahoo.com</a><br>
	redesign <a href="#">Tulis nama anda disini</a> | Silahkan baca <a href="lisensi.txt" target="_blank">Lisensi</a>
</div>
</div>
</body>
</html>