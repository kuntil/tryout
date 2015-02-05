<!DOCTYPE html>
<html lang="en" style="-webkit-text-size-adjust: 100%; -ms-text-size-adjust: 100%;">
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=0" />
	<title><?php echo $title?></title>
	<link rel="shortcut icon" type="image/x-icon" href="<?php echo base_url();?>css/images/jilc.ico" />
	<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="<?php echo base_url();?>css/flexslider.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,500,700' rel='stylesheet' type='text/css' /> 
	<script src="<?php echo base_url();?>js/jquery-1.8.0.min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>js/jquery.flexslider-min.js" type="text/javascript"></script>
	<script src="<?php echo base_url();?>js/functions.js" type="text/javascript"></script>
</head>
<body>
	<!-- wraper -->
	<div id="wrapper">
		<!-- shell -->
		<div class="shell">
			<!-- container -->
			<div class="container">
				<!-- header -->
				<header id="header">
					<h1 id="logo"><?php echo anchor('home','Simulasi Tryout');?></h1>
					<!-- search -->
					<div class="search">
						<form method="post">
							<span class="field"><input type="text" class="field" value="keywords here ..." title="keywords here ..." /></span>
							<input type="submit" class="search-btn" value="" />
						</form>
					</div>
					<!-- end of search -->
				</header>
				<!-- end of header -->
				<!-- navigation -->
				<nav id="navigation">
					<ul>
                                            <?php if($this->session->userdata('username')!=null){?>
                                            <li><?php echo anchor('home','Home');?></li>
                                            <li><?php echo anchor('home/informasi','Informasi SBM-PTN');?></li>
                                            <li><?php echo anchor('home/profile','Profile');?></li>
                                            <li><?php echo anchor('home/tryout','Tryout')?></li>
                                            <li><?php echo anchor('home/tambahan','Jadwal')?></li>
                                            <li><?php echo anchor('c_login/logout','Logout')?></li>
                                            <?php }else { ?>
                                            <li><?php echo anchor('home','Home');?></li>
                                            <li><?php echo anchor('home/informasi','Informasi SBM-PTN');?></li>
                                            <li><?php echo anchor('home/jadwal','Jadwal');?></li>
                                            <li><?php echo anchor('home/kontak','Kontak');?></li>
                                            <?php }?>
					</ul>
				</nav>
                                <div class="m-slider">
                                    <div class="slider-holder">
                                        <span class="slider-shadow"></span>
                                        <span class="slider-b"></span>
                                        <div class="slider flexslider">
                                            <ul class="slides">
                                                <li>
                                                    <div class="img-holder">
                                                        <img src="<?php echo base_url();?>css/images/g1.png" alt="" />
                                                    </div>
                                                    <div class="slide-cnt">
                                                        <h2>Profile JILC</h2>
                                                        <div class="box-cnt">
                                                            <p>JILC merupakan salah satu tempat bimbingan belajar yang dianjurkan bagi anda yang ingin belajar. JILC sebagai salah satu bimbingan belajar yang berpusat di Kendari ikut mengambil andil dalam mencerdaskan kehidupan bangsa.</p>
                                                        </div>
                                                        <?php echo anchor('home/jilc','Selengkapnya','class=grey-btn');?>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="img-holder">
                                                        <img src="<?php echo base_url();?>css/images/g2.png" alt="" />
                                                    </div>
                                                    <div class="slide-cnt">
                                                        <h2>Program Bimbel</h2>
                                                        <div class="box-cnt">
                                                            <p>Berbagai program bimbingan yang ditawarkan guna membantu adik-adik dalam meraih prestasi, persiakan UN dan SBM-PTN adalah prioritas kami. Selain itu kami membuka kelas khusus untuk adik-adik.</p>
                                                        </div>
                                                        <?php echo anchor('home/bimbel','Selengkapnya','class=grey-btn');?>
                                                    </div>
                                                </li>
                                                <li>
                                                    <div class="img-holder">  
                                                        <img src="<?php echo base_url();?>css/images/g3.png" alt="" />
                                                    </div>
                                                    <div class="slide-cnt">
                                                        <h2>Pembelajaran Interaktif</h2>
                                                        <div class="box-cnt">
                                                            <p>Konsep accelerated Learning telah dikembangkan di JILC sejak tahun 1995. Banyak yang heran sekaligus kagum, bagaimana mungkin pelajaran sekolah yang selama ini dipelajara selama 3 tahun, ternyata dapat dikuasai hanya dalam waktu 2 bulan di JILC?</p>
                                                        </div>
                                    			<?php echo anchor('home/pembelajaran','Selengkapnya','class=grey-btn');?>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>				
                                <!-- end of navigation -->
				<?php require_once 'menu_home.php';?>				
				<div class="socials">
					<div class="socials-inner">
						<h3>Follow us</h3>
						<ul>
							<li><a href="#" class="facebook-ico"><span></span>Facebook</a></li>
							<li><a href="#" class="twitter-ico"><span></span>Twitter</a></li>
							<li><a href="#" class="rss-feed-ico"><span></span>Rss-feed</a></li>
							<li><a href="#" class="myspace-ico"><span></span>myspace</a></li>
							<li><a href="#" class="john-doe-123-ico"><span></span>genetika</a></li>
						</ul>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
				<div id="footer">
					<div class="footer-cols">
						<div class="cl">&nbsp;</div>
					</div>
					<!-- end of footer-cols -->
					<div class="footer-bottom">
						<nav class="footer-nav">
							<ul>
                                                            <li><?php echo anchor('home','Home');?></li>
                                                            <li><?php echo anchor('home','Informasi SBM-PTN');?></li>
                                                            <li><?php echo anchor('home','Jadwal Tryout');?></li>
                                                            <li><?php echo anchor('home','Kontak');?></li>
							</ul>
						</nav>
						<p class="copy">&copy; Copyright 2014 JILC <span>|</span> <strong>Design by <a href="#" target="_blank">Genetika</a></strong></p>
						<div class="cl">&nbsp;</div>
					</div>
				</div>
			</div>
			<!-- end of container -->	
		</div>
		<!-- end of shell -->	
	</div>
	<!-- end of wrapper -->
</body>
</html>