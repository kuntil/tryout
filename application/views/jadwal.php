<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="main">  
    <section class="post">
        <h2 class="testimonial">Jadwal Tryout & Tambahan</h2>
        <table class="data">
            <tr class="data">
                <th class="data"><center>Matapelajaran</center></th>
                <th class="data"><center>Tanggal</center></th>
                <th class="data"><center>Jam</center></th>
            </tr>
            <?php foreach ($jadwal->result() as $row) :?>
            <tr class="data">
                <td class="data"><center>Kemampuan Dasar</center></td>
                <td class="data"><center><?php echo $row->tgl_dasar?></center></td>
                <td class="data"><center><?php echo $row->jam_dasar?></center></td>
            </tr>
            <tr class="data">
                <td class="data"><center>Kemampuan IPA</center></td>
                <td class="data"><center><?php echo $row->tgl_ipa?></center></td>
                <td class="data"><center><?php echo $row->jam_ipa?></center></td>
            </tr>
            <tr class="data">
                <td class="data"><center>Kemampuan IPS</center></td>
                <td class="data"><center><?php echo $row->tgl_ips?></center></td>
                <td class="data"><center><?php echo $row->jam_ips?></center></td>
            </tr>
            <?php endforeach;?>
        </table>
        <div class="cl">&nbsp;</div>
    </section>
</div>