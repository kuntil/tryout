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
        <h2>Nilai Tryout Yang Terakhir Dilakukan</h2>
        <br>
        <?php 
        foreach ($compare->result() as $row) :
        ?>
        <table width="100%">
            <tr>
                <td><u><b>Matapelajaran Dasar</b></u></td>
                <td></td>
                <td><u><b>Matapelajaran IPA</b></u></td>
                <td></td>
                <td><u><b>Matapelajaran IPS</b></u></td>  
                <td></td>
            </tr>
            <tr>
                <td>Matematika</td><td>: <?php echo $row->benar_mtk?> Benar <?php echo $row->salah_mtk?> Salah</td>
                <td>Biologi</td><td>: <?php echo $row->benar_bio?> Benar <?php echo $row->salah_bio?> Salah</td>
                <td>Ekonomi</td><td>: <?php echo $row->benar_eko?> Benar <?php echo $row->salah_eko?> Salah</td>
            </tr>
            <tr>
                <td>Bahasa Indonesia</td><td>: <?php echo $row->benar_ind?> Benar <?php echo $row->salah_ind?> Salah</td>
                <td>Kimia</td><td>: <?php echo $row->benar_kim?> Benar <?php echo $row->salah_kim?> Salah</td>
                <td>Geografi</td><td>: <?php echo $row->benar_geo?> Benar <?php echo $row->salah_geo?> Salah</td>
            </tr>
            <tr>
                <td>Bahasa Inggris</td><td>: <?php echo $row->benar_ing?> Benar <?php echo $row->salah_ing?> Salah</td>
                <td>Fisika</td><td>: <?php echo $row->benar_fis?> Benar <?php echo $row->salah_fis?> Salah</td>
                <td>Sejarah</td><td>: <?php echo $row->benar_sej?> Benar <?php echo $row->salah_sej?> Salah</td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><b>Total</b></td>
                <td><b>: <?php echo ($row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej);?> Benar
                      <?php echo ($row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej);?> Salah
                    </b></td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td><b>Point</b></td>
                <td><b>: <?php $point = (((($row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej)*4)- ($row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej))/(90*4)*100); echo number_format($point,2)?></b></td>
            </tr>
        </table>
        <br>
        <br>
        <u><b>Target Universitas</b></u>
        <?php $i=1;foreach ($target->result() as $row) : ?>
        <p><?php echo $i.".  ".$row->universitas." ".$row->program_studi." Pasing Grade : ".$row->point;
        
        if( $row->point >= $point){
            echo " Satus :<b style='color:red'> gagal</b>";
        }else{
            echo " Status :<b style='color:green'> berhasil</b>";
        }?></p>
        <?php $i++;endforeach;?>
		<br>
        <u><b>Alternatif Universitas</b></u>
        <?php $i=1; $jmlAlt = 0; foreach ($alt->result() as $row) : ?>
		<?php if($row->point<$point){
			$jmlAlt++;
		?>
        <p><?php echo $i.".  ".$row->universitas." ".$row->program_studi." Pasing Grade : ".$row->point;
        
        if( $row->point >= $point){
            echo " Satus :<b style='color:red'> gagal</b>";
        }else{
            echo " Status :<b style='color:green'> berhasil</b>";
        }?></p>
        <?php }
			$i++; 
			if($jmlAlt>4) break;
			endforeach;
			
			if($jmlAlt<1){
				echo "<p>Hasil anda belum bisa mencapai jurusan Alternatif yang lain.<br/>";
				echo "Berusaha lebih giat lagi..</p>";
			}
		?>
        <?php
        endforeach;
        ?>
        
    </section>
</div>
