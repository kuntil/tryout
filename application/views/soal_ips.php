<html lang="en">
    <head>
    <title><?php echo $title ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' /> 
    <script src="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>	
    <link href="<?php echo base_url();?>/css/bootstrap.min.css" rel="stylesheet" media="screen">
	<!-- vex -->
	<script src="<?php echo base_url();?>js/vex/vex.combined.min.js"></script>
	<link rel="stylesheet" href="<?php echo base_url();?>js/vex/css/vex.css" />
	<link rel="stylesheet" href="<?php echo base_url();?>js/vex/css/vex-theme-os.css" />
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
      .sidebar-nav {
        padding: 9px 0;
      }

      @media (max-width: 980px) {
        /* Enable use of floated navbar text */
        .navbar-text.pull-right {
          float: none;
          padding-left: 5px;
          padding-right: 5px;
        }
      }
    </style>
    <script type="text/javascript">
        $(document).ready(function (){
            
            $('.soal_indonesia').hide();
            $('.soal_matematika').hide();
            $('.soal_inggris').hide();
            $('.btn_matematika').click(function (){
               $('.soal_matematika').show();
               $('.soal_indonesia').hide();
               $('.soal_inggris').hide();
            
            });
            $('.btn_indonesia').click(function (){
               $('.soal_indonesia').show();
               $('.soal_matematika').hide();
               $('.soal_inggris').hide();
            });
            $('.btn_inggris').click(function (){
               $('.soal_inggris').show(); 
               $('.soal_indonesia').hide();
               $('.soal_matematika').hide();
            });
        }); 
   
    </script>
    <script type="text/javascript">
    var timeLeft = <?php echo $sisaWaktu?>;
    var menit = Math.floor(timeLeft / 60);
    var sec = timeLeft - menit * 60;
    var elem = document.getElementById('some_div');

    var detik = setInterval(countdown, 1000);

    function countdown() {
    if((menit==0) && (sec == 0)){
        document.getElementById("form_soal").submit();
        clearTimeout(detik);
    }
    if ((menit==0) && (sec == 20)){
        vex.defaultOptions.className = 'vex-theme-os';
		vex.dialog.alert({
			message: 
			'<h2>Perhatian!</h2>'+
			'<img src="<?php echo base_url();?>mos-css/img/guru.png" style="float:left">'+
			'<p style="color:#b73a49;font-size:15px;margin-bottom:95px">Waktu Anda Sisa 20 Detik Lagi, segera tutup dialog ini dan lanjut mengerjakan soal.'+
			'Setelah waktu habis form soal akan segera tertutup otomatis.</p>',
			className: 'vex-theme-os',
			css : {
				'height':'600px',
				'color':'red'
			},
			contentCSS: {'height':'300px'}
		}
		);
        sec--;
    }
    if(sec==0){
        menit--;
        sec=60;
    }
    else {
        document.getElementById("output").innerHTML = 'sisa waktu '+menit+' menit '+sec+' detik ';
        sec--;
    }
    }
    </script>  
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row-fluid">
          <?php echo form_open('c_pengerjaan/simpanIps','name="form_soal" id="form_soal"')?>
          <div class="clearfix"></div>
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Soal IPS</center></h4>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <h4 class="text-success"><center><div id="output"></div></center></h4>
                      </div>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span4">
                      <a href="#" class="btn_matematika">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Ekonomi</center></h4>
                      </div>
                      </a>
                  </li>
                  <li class="span4">
                      <a href="#" class="btn_indonesia">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Geografi</center></h4>
                      </div>
                      </a>
                  </li>                  
                  <li class="span4">
                      <a href="#" class="btn_inggris">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Sejarah</center></h4>
                      </div>
                      </a>
                  </li>
              </ul>
          </div>
          <div class="clearfix"></div>
          <div class="soal_matematika">
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <table cellpadding="10" rowpadding="10" class="table-striped">
                              <?php $i=1; foreach ($soal_eko->result() as $row ) : ?>
                              <tr>
                                  <td valign=top><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td width="5%"><input type="radio" name="jawab[<?php echo $i?>]" value="a"> A </td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td ><input type="radio" name="jawab[<?php echo $i?>]" value="b"> B </td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i?>]" value="c"> C </td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i?>]" value="d"> D </td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i?>]" value="e"> E </td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
							  <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i?>]" value="" checked=""> </td>
                                  <td>Kosongkan</td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td></td>
                                  <td>
                                      <!--<input type="radio" name="jawab[<?php echo $i?>]"> A <br>
                                      <input type="radio" name="jawab[<?php echo $i?>]"> B <br>
                                      <input type="radio" name="jawab[<?php echo $i?>]"> C <br>
                                      <input type="radio" name="jawab[<?php echo $i?>]"> D <br>
                                      <input type="radio" name="jawab[<?php echo $i?>]"> E <br>
                                      <input type="radio" name="jawab[<?php echo $i?>]" value="" checked=""> Kosongkan -->
                                      <input type="hidden" name="soal[<?php echo $i?>]" value="<?php echo $row->id_soal?>"/></td>
                              </tr>
                              <?php $i++; endforeach;?>
                          </table>
                      </div>
                  </li>
              </ul>
          </div>
          </div>
          
          <div class="soal_indonesia">
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <table cellpadding="10" rowpadding="10" class="table-striped">
                              <?php $i=1; foreach ($soal_geo->result() as $row ) : ?>
                              <tr>
                                  <td valign=top><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td width="5%"><input type="radio" name="jawab[<?php echo $i+15?>]" value="a"> A</td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+15?>]" value="b"> B</td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+15?>]" value="c"> C</td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+15?>]" value="d"> D</td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+15?>]" value="e"> E</td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
							  <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+15?>]" value="" checked=""></td>
                                  <td>Kosongkan</td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td></td>
                                  <td>
					<input type="hidden" name="soal[<?php echo $i+15?>]" value="<?php echo $row->id_soal?>"/></td>
                              </tr>
                              <?php $i++; endforeach;?>
                          </table>
                      </div>
                  </li>
              </ul>
          </div>
          </div>
          
          <div class="soal_inggris">
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <table cellpadding="10" rowpadding="10" class="table-striped">
                              <?php $i=1; foreach ($soal_sej->result() as $row ) : ?>
                              <tr>
                                  <td valign=top><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td width="5%"><input type="radio" name="jawab[<?php echo $i+30?>]" value="a"> A</td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+30?>]" value="b"> B</td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+30?>]" value="c"> C</td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+30?>]" value="d"> D</td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+30?>]" value="e"> E</td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
							  <tr>
                                  <td></td>
                                  <td><input type="radio" name="jawab[<?php echo $i+30?>]" value="" checked=""></td>
                                  <td>Kosongkan</td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td></td>
                                  <td>                                        
                                      <input type="hidden" name="soal[<?php echo $i+30?>]" value="<?php echo $row->id_soal?>"/>
								</td>
                              </tr>
                              <?php $i++; endforeach;?>
                          </table>
                      </div>
                  </li>
              </ul>
          </div>
          </div>
          
          <div class="clearfix"></div>
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <input type="submit" class="btn-large btn-info" name="simpan" value="Submit"/>
                          <!--<input type="reset" class="btn-large btn-info" name="simpan" value="Reset"/>-->
                      </div>
                  </li>
              </ul>
          </div>
          <?php echo form_close();?>
      </div>
    </div>
</body>