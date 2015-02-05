<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<!-- main -->
<div class="main">
    <section class="cols">
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img1.png" alt="" />
            <div class="col-cnt">
                <h2>Petunjuk</h2>
                <p>Berisi informasi tentang cara penggunaan aplikasi ini.</p>
		<?php echo anchor('home/petunjuk','Selengkapnya','class=more');?>
            </div>
        </div>
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img2.png" alt="" />
            <div class="col-cnt">
                <h2>Registrasi</h2>
                <p>Di lakukan untuk mendapatkan user dan password.</p>
		<?php echo anchor('home/registrasi','Selengkapnya','class=more');?>
            </div>
        </div>
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img3.png" alt="" />
            <div class="col-cnt">
                <h2>Login</h2>
                <p>Halaman login untuk penggunaan aplikasi</p>
		<?php echo anchor('home/login','Selengkapnya','class=more');?>
            </div>
        </div>
        <div class="cl">&nbsp;</div>
    </section>
    <section class="post">
        <div class="video-holder">
            <video width="435" height="243" controls>
                <source src="movie.mp4" type="video/mp4">
                <source src="<?php echo base_url();?>upload/video/profile.mp4" type="video/mp4">
            </video>
       <!--<img src="<?php echo base_url();?>css/images/video-img.png" alt="" />-->
        </div>

        <div class="post-cnt">
            <h2>Kenapa tryout itu penting ?</h2>
            <p>Tryout dalam bahasa indonesia berarti uji coba atau percobaan. Tryout dilakukan untuk melatih seseorang dalam melakukan ujian sebelum menghadapi ujian yang sesungguhnya.</p>
            <p>Tryout sendiri sangat penting terutama bagi siswa/siswi yang akan menghadapi ujian, dalam hal ini ujian masuk perguruan tinggi. Siswa/siswi perlu melakukan tryout agar mereka lebih terbiasa dalam mengerjakan soal-soal serta dapat mengefisienkan waktu pengerjaan soal yang mereka lakukan agar tidak kecolongan pada saat ujian yang sesungguhnya nanti</p>
        </div>
        <div class="cl">&nbsp;</div>
    </section>
</div>
