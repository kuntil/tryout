<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<div class="main">  
    <section class="post">
        <?php echo form_open('home/roster')?>
        <h2>Tambahan & Bimbingan yang Dapat Diambil</h2>
        <br>
        <table width="100%" cellspacing="15px" class="data">
            <tr class="data">
                <th class="data">No.</th>
                <th class="data">Tentor</th>
                <th class="data">Matapelajaran</th>
                <th class="data">Jenis</th>
                <th class="data">Tanggal</th>
                <th class="data">Jam</th>
                <th class="data">Ambil</th>
            </tr>
            <?php $i=1; foreach ($tambahan->result() as $row) :?>
            <tr class="data">
                <td class="data"><center><?php echo $i?></center></td>
                <td class="data"><?php echo $row->nama?></td>
                <td class="data"><?php echo $row->matapelajaran?></td>
                <td class="data"><center><?php echo $row->jenis?></center></td>
                <td class="data"><?php echo $row->tanggal?></td>
                <td class="data"><center><?php echo $row->jam?><center></td>
                        <td class="data"><center><input type="checkbox" name="ceklist[]" value="<?php echo $row->id_jadwal?>"><center></td>
                </tr>
            <?php $i++; endforeach;?>
        </table>
        <br>
        <input type="submit" name="simpan" value="Buat" class="button">
        <div class="cl">&nbsp;</div>
        </form>
    </section>
</div>
