<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
?>
<!--<script typ e="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>-->
<script src="<?php echo base_url()?>js/highcharts.js"></script>
<script src="<?php echo base_url()?>js/modules/exporting.js"></script>
<script type="text/javascript">
$(function () {
        $('#container').highcharts({
            chart: {
                type: 'line'
            },
            title: {
                text: 'Perkembangan Nilai User'
            },
            subtitle: {
                text: 'Tryout JILC'
            },
            xAxis: {
                categories: [
                <?php
                $i=1;
                foreach ($nilai->result() as $row):
                echo $i.",";
                $i++;
                endforeach;
                ?>
                ]
            },
            yAxis: {
                title: {
                    text: 'Nilai (Grade)'
                }
            },
//            tooltip: {
//                headerFormat: '<b>{series.name}</b><br />',
//                valueSuffix: '',
//            },
//            
//            legend: {
//                layout: 'vertical',
//                align: 'right',
//                verticalAlign: 'middle',
//                borderWidth: 0
//            },
            tooltip: {
                headerFormat: 'Tryout {point.x}<br>',
                crosshairs: true,
                shared: true
            },
            plotOptions: {
                spline: {
                    marker: {
                        radius: 4,
                        lineColor: '#666666',
                        lineWidth: 1
                    }
                }
            },
            series: [{
                name: 'Nilai',
                data: [
                    <?php 
                        foreach ($nilai->result() as $row) :
                            $salah = $row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej;
                            $benar = $row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej;      
                            $point = (($benar*4)-($salah*1))/(90*4)*100;       
                            echo round($point,2).",";
                        endforeach; 
                    ?>
                ]
            },{
                name: 'Benar',
                data: [
                    <?php 
                        foreach ($nilai->result() as $row) :
                            $salah = $row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej;
                            $benar = $row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej;      
                            $point = (($benar*4)-($salah*1))/(90*4)*100;       
                            echo $benar.",";
                        endforeach; 
                    ?>
                ]
            },{
                name: 'Salah',
                data: [
                    <?php 
                        foreach ($nilai->result() as $row) :
                            $salah = $row->salah_mtk+$row->salah_ind+$row->salah_ing+$row->salah_bio+$row->salah_kim+$row->salah_fis+$row->salah_geo+$row->salah_eko+$row->salah_sej;
                            $benar = $row->benar_mtk+$row->benar_ind+$row->benar_ing+$row->benar_bio+$row->benar_kim+$row->benar_fis+$row->benar_geo+$row->benar_eko+$row->benar_sej;      
                            $point = (($benar*4)-($salah*1))/(90*4)*100;       
                            echo $salah.",";
                        endforeach; 
                    ?>
                ]
            }]
        });
    });
    
</script>
<div class="main">
    <?php ?>
    <section class="cols">
        <br>
        <center><h2><?php include'time.php'; ?></h2></center>
        <br>
        <?php foreach ($waktu->result() as $row) :?>
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img1.png" alt="" />
            <div class="col-cnt">
                <h2>Kemampuan Dasar</h2>
                <p>Pengerjaan soal dimulai pada tanggal <?php echo $row->tgl_dasar;?></p>
                <p>pada jam <?php echo $row->jam_dasar;?></p>
                <?php 
                if($cetak_dasar == 'kerjakan'){
                    echo anchor('c_tryout/dasar','Kerjakan','class=more');
                }else{
                    echo anchor('c_cetak/dasar','Cetak','target=_blank');
                }
                ?>
            </div>
        </div>
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img2.png" alt="" />
            <div class="col-cnt">
                <h2>Kemampuan IPA</h2>
                <p>Pengerjaan soal dimulai pada tanggal <?php echo $row->tgl_ipa;?></p>
                <p>pada jam <?php echo $row->jam_ipa;?></p>
                
		<?php
                if($cetak_dasar=='kerjakan'){
                    echo anchor('c_tryout/ipa','Kerjakan','class=more');
                }else{
                    if($cetak_ipa == 'kerjakan'){
                        echo anchor('c_tryout/ipa','Kerjakan','class=more');
                    }else{
                        echo anchor('c_cetak/ipa','Cetak','target=_blank');
                    }
                }
                ?>
            </div>
        </div>
        <div class="col">
            <img src="<?php echo base_url();?>css/images/col-img3.png" alt="" />
            <div class="col-cnt">
                <h2>Kemampuan IPS</h2>
                <p>Pengerjaan soal dimulai pada tanggal <?php echo $row->tgl_ips;?></p>
                <p>pada jam <?php echo $row->jam_ips;?></p>
		<?php
                if($cetak_dasar=='kerjakan'){
                    echo anchor('c_tryout/ips','Kerjakan','class=more');
                }else{
                    if($cetak_ips == 'kerjakan'){
                        echo anchor('c_tryout/ips','Kerjakan','class=more');
                    }else{
                        echo anchor('c_cetak/ips','Cetak','target=_blank');
                    }
                }
                
                ?>
            </div>
        </div>
        <div class="cl">&nbsp;</div>
        <?php endforeach;?>
    </section>
    <?php 
    if($this->session->flashdata('galat')!=null){
    echo '<script language="javascript">';
    echo 'alert("'.$this->session->flashdata('galat').'")';
    echo '</script>';
    }
    ?>
    <section class="post">
        <div class="video-holder">
            <div id="container" style="min-width: 435px; height: 243px; margin: 0 auto"></div>
       <!--<img src="<?php echo base_url();?>css/images/video-img.png" alt="" />-->
            <div id="container"><p>*Untuk melihat hasil tryout terakhir dapat dilihat <?php echo anchor('home/compare','disini'); ?></p></div>
        </div>

        <div class="post-cnt">
            <h2>Target Universitas</h2>
            <?php $i=1; foreach ($target->result() as $row) : ?>
            <p><?php echo $i.".  ".$row->universitas." ".$row->program_studi." Pasing Grade : ".$row->point;?> <?php echo anchor('c_target/delete/'.$this->session->userdata('id').'/'.$row->id_universitas,'Hapus')  ?></p>
            <?php $i++; endforeach;?>
            <?php 
            if($i>3){ 
                echo "<input type='submit' name='submit' value='Tambah' class='button' disable/>";
            }else{
                echo form_open('c_target/add','target=_blank');
                echo "<input type='submit' name='add' value='Tambah' class='button' />";
                echo form_close();
            } ?>
            <br>
        </div>
        <div class="cl">&nbsp;</div>
    </section>
</div>