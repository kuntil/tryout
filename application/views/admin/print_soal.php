<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<html>
    <head>
        <title></title>
    </head>
    <body>
        <h2><center><b>JAKARTA INTENSIF LEARNING CENTER</b></center></h2>
        <h2><center><b>Jln. Syeh Yusuf No. 123 Kendari</b></center></h2>
        <hr>
        <table>
            <tr>
                <td><h4>Kode Soal</h4></td>
                <td><h4>:</h4></td>
                <td><h4><?php echo $this->uri->segment(3)?></h4></td>
            </tr>
            <tr>
                <td><h4>Matapelajaran</h4></td>
                <td><h4>:</h4></td>
                <?php 
                
                if (preg_match("/^kding/", $this->uri->segment(3))) {
                    $pelajaran = "Bahasa Inggris";
                }
                if (preg_match("/^kdmtk/", $this->uri->segment(3))){
                    $pelajaran = "Matematika";
                }
                if (preg_match("/^kdbio/", $this->uri->segment(3))){
                    $pelajaran = "IPA Biologi";
                }
                if (preg_match("/^kdkim/", $this->uri->segment(3))){
                    $pelajaran = "IPA Kimia";
                }
                if (preg_match("/^kdind/", $this->uri->segment(3))){
                    $pelajaran = "Bahasa Indonesia";
                }
                if (preg_match("/^kdfis/", $this->uri->segment(3))){
                    $pelajaran = "IPA Fisika";
                }
                if (preg_match("/^kdeko/", $this->uri->segment(3))){
                    $pelajaran = "IPS Ekonomi";
                }
                if (preg_match("/^kdgeo/", $this->uri->segment(3))){
                    $pelajaran = "IPS Geografi";
                }
                if (preg_match("/^kdsej/", $this->uri->segment(3))){
                    $pelajaran = "IPS Sejarah";
                }
                ?>
                <td><h4><?php echo $pelajaran;?></h4></td>
            </tr>
            <tr>
                <td><h4>Waktu</h4></td>
                <td><h4>:</h4></td>
                <td><h4>45 Menit</h4></td>
            </tr>
        </table>
        <br>
        <br>
        <table cellspacing="5" cellpadding="5">
        <?php $i =0;?>
        <?php foreach ($hasil->result() as $row ) : ?>
            <?php $i++; ?>
            <tr><td><?php echo $i; ?>.</td><td colspan="2"><p><?php echo $row->soal; ?></p></td></tr>
            <tr><td></td><td>A.</td><td><?php echo $row->plh_a;?></td></tr>
            <tr><td></td><td>B.</td><td><?php echo $row->plh_b;?></td></tr>
            <tr><td></td><td>C.</td><td><?php echo $row->plh_c;?></td></tr>
            <tr><td></td><td>D.</td><td><?php echo $row->plh_d;?></td></tr>
            <tr><td></td><td>E.</td><td><?php echo $row->plh_e;?></td></tr>
            <?php endforeach;?>
        </table>
    </body>
</html>
