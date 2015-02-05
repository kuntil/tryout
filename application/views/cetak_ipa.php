<html lang="en">
    <head>
    <title><?php echo $title ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap -->
    <link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' /> 
    <script src="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>	
    <link href="<?php echo base_url();?>/css/bootstrap.min.css" rel="stylesheet" media="screen">
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
<body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container-fluid">
        </div>
      </div>
    </div>
    <div class="container-fluid">
      <div class="row-fluid">
          <div class="clearfix"></div>
          <div class="row-fluid">
              <ul class="thumbnails">
                  <li class="span12">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Soal Dasar</center></h4>
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
                          <h4 class="text-success"><center>Biologi</center></h4>
                      </div>
                      </a>
                  </li>
                  <li class="span4">
                      <a href="#" class="btn_indonesia">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Kimia</center></h4>
                      </div>
                      </a>
                  </li>                  
                  <li class="span4">
                      <a href="#" class="btn_inggris">
                      <div class="thumbnail">
                          <h4 class="text-success"><center>Fisika</center></h4>
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
                              <?php $i=1; foreach ($soal_bio->result() as $row ) : ?>
                              <tr>
                                  <td><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>a.</td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>b.</td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>c.</td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>d.</td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>e.</td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Jawaban</td>
                                  <td><b><?php echo $row->jwb_soal?></b></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Penjelasan</td>
                                  <td><?php echo $row->penjelasan?></td>
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
                              <?php $i=1; foreach ($soal_kim->result() as $row ) : ?>
                              <tr>
                                  <td><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>a.</td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>b.</td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>c.</td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>d.</td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>e.</td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Jawaban</td>
                                  <td><b><?php echo $row->jwb_soal?></b></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Penjelasan</td>
                                  <td><?php echo $row->penjelasan?></td>
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
                              <?php $i=1; foreach ($soal_fis->result() as $row ) : ?>
                              <tr>
                                  <td><?php echo $i?></td>
                                  <td colspan="2"><?php echo $row->soal; ?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>a.</td>
                                  <td><?php echo $row->plh_a?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>b.</td>
                                  <td><?php echo $row->plh_b?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>c.</td>
                                  <td><?php echo $row->plh_c?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>d.</td>
                                  <td><?php echo $row->plh_d?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>e.</td>
                                  <td><?php echo $row->plh_e?></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Jawaban</td>
                                  <td><b><?php echo $row->jwb_soal?></b></td>
                              </tr>
                              <tr>
                                  <td></td>
                                  <td>Penjelasan</td>
                                  <td><?php echo $row->penjelasan?></td>
                              </tr>
                              <?php $i++; endforeach;?>
                          </table>
                      </div>
                  </li>
              </ul>
          </div>
          </div>
          <div class="clearfix"></div>
      </div>
    </div>
</body>