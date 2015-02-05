<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="main">  
    <section class="post">
        <?php foreach ($login_data->result() as $row) :?>
        <?php echo form_open_multipart('c_user/edit_profile/'.$row->id_user)?>
        <div class="video-holder">
            <label>Gambar :</label><br>
            <img src="<?php  echo base_url();?>upload/profile/<?php echo $row->gambar?>" width="260" height="310"/>
            <br>
            <input type="file" name="userfile">  
        </div>
        <div class="post-cnt">
            <div class="form">
                    <h4>Nama Lengkap :</h4>
                    <span class="field"><input name="nama" type="text" class="field" value="<?php echo $row->nama?>" title="Nama Lengkap ..." /></span>
                    <h4>Asal Sekolah :</h4>
                    <span class="field"><input name="sekolah" type="text" class="field" value="<?php echo $row->sekolah?>" title="Asal Sekolah ..." /></span>
                    <h4>No. Handphone :</h4>
                    <span class="field"><input name="telp" type="text" class="field" value="<?php echo $row->no_hp?>" title="No. Handphone ..." /></span>
                    <h4>Kelas :</h4>
                    <span class="field"><input name="kelas" type="text" class="field" value="<?php echo $row->kelas?>" title="Kelas ..." /></span>
                    <h4>Username :</h4>
                    <span class="field"><input name="username" type="text" class="field" value="<?php echo $row->username?>" title="Username ..." /></span>
                    <h4>Password :</h4>
                    <span class="field"><input name="password" type="password" class="field" value="<?php echo $row->password?>" title="Passwod ..." /></span>
                <br>
                <br>
                <input type="submit" name="submit" value="Submit" class="button"/>
                <input type="reset" name="submit" value="Reset" class="button"/>
            </div>
        </div>
        <?php echo form_close(); ?>
        <?php endforeach; ?>
        <div class="cl">&nbsp;</div>
    </section>
</div>
