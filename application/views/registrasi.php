<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
</script>
<div class="main">  
    <section class="post">
        <h2>Form Registrasi</h2>
        <?php echo form_open_multipart('c_user/register')?>
        <div class="video-holder">
            <label>Gambar :</label><br>
            <input name="file" type="file" class="">
        </div>
        <div class="post-cnt">
            <div class="form">
                    <h4>Nama Lengkap :</h4>
                    <span class="field"><input name="nama" type="text" class="field" value="Nama Lengkap ..." title="Nama Lengkap ..." /></span>
                    <h4>Asal Sekolah :</h4>
                    <span class="field"><input name="sekolah" type="text" class="field" value="Asal Sekolah ..." title="Asal Sekolah ..." /></span>
                    <h4>No. Hanphone :</h4>
                    <span class="field"><input name="hp" type="text" class="field" value="No. Handphone ..." title="No. Handphone ..." /></span>
                    <h4>Kelas :</h4>
                    <span class="field"><input name="kelas" type="text" class="field" value="Kelas ..." title="Kelas ..." /></span>
                    <h4>Username :</h4>
                    <span class="field"><input name="username" type="text" class="field" value="Username ..." title="Username ..." /></span>
                    <h4>Password :</h4>
                    <span class="field"><input name="password" type="password" class="field" value="Passwod ..." title="Passwod ..." /></span>
                    <br><br>
                    <input type="submit" name="submit" value="Submit" class="button" title="Simpan"/>
                    <input type="reset" name="submit" value="Reset" class="button" title="Reset"/>
            </div>
        </div>
        <div class="cl">&nbsp;</div>
        <?php echo form_close()?>
    </section>
</div>