<%-- 
    Document   : index
    Created on : Nov 24, 2016, 11:29:27 AM
    Author     : kalenin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Creative One Page Parallax Template">
	<meta name="keywords" content="Creative, Onepage, Parallax, HTML5, Bootstrap, Popular, custom, personal, portfolio" />
	<meta name="author" content="">
	<title>HIMU - OnePage HTML Parallax template</title>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/prettyPhoto.css" rel="stylesheet">
	<link href="css/font-awesome.min.css" rel="stylesheet">
	<link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
	<!--[if lt IE 9]> <script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script> <![endif]-->
	<link rel="shortcut icon" href="images/ico/favicon.png">
	<link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
	<link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
	<link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->
<body>
	<div class="preloader">
		<div class="preloder-wrap">
			<div class="preloder-inner">
				<div class="ball"></div>
				<div class="ball"></div>
				<div class="ball"></div>
				<div class="ball"></div>
				<div class="ball"></div>
				<div class="ball"></div>
				<div class="ball"></div>
			</div>
		</div>
	</div><!--/.preloader-->
	<header id="navigation">
		<div class="navbar navbar-inverse navbar-fixed-top" role="banner">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
						<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="index.html"><h1><img style="width:200px" src="images/logo.png"></h1></a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="scroll active"><a href="#navigation">Home</a></li>
						<li class="scroll"><a href="#about-us">Sobre nós</a></li>
						<li ><a href="reg.jsp">Cadastrar</a></li>
						<li ><a href="loginform.jsp">Entrar</a></li>
						<!-- <li class="scroll"><a href="#services">Services</a></li>
						<li class="scroll"><a href="#our-team">Our Team</a></li>
						<li class="scroll"><a href="#portfolio">Portfolio</a></li>
						<li class="scroll"><a href="#clients">Clients</a></li>
						<li class="scroll"><a href="#blog">Blog</a></li>
						<li class="scroll"><a href="#contact">Contact</a></li> -->
					</ul>
				</div>
			</div>
		</div><!--/navbar-->
	</header> <!--/#navigation-->

	<section id="home">
		<div class="home-pattern"></div>
		<div id="main-carousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#main-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#main-carousel" data-slide-to="1"></li>
				<li data-target="#main-carousel" data-slide-to="2"></li>
			</ol><!--/.carousel-indicators-->
			<div class="carousel-inner">
				<div class="item active" style="background-image: url(images/books.png)">
					<div class="carousel-caption">
						<div>
							<h2 class="heading animated bounceInDown">USPAdvisor</h2>
							<p class="animated bounceInUp">Avalie as matérias da USP</p>
							<a class="btn btn-default slider-btn animated fadeIn" href="reg.jsp">Cadastre-se</a>
							<a class="btn btn-default slider-btn animated fadeIn" href="loginform.jsp">Entrar</a>
						</div>
					</div>
				</div>
				<div class="item" style="background-image: url(images/books.png)">
					<div class="carousel-caption"> <div>
						<h2 class="heading animated bounceInDown">Dê nota aos professores</h2>
						<p class="animated bounceInUp"> Não se preocupe, é inteiramente anônimo </p>
						<a class="btn btn-default slider-btn animated fadeIn" href="reg.jsp">Cadastre-se</a>
						<a class="btn btn-default slider-btn animated fadeIn" href="loginform.jsp">Entrar</a>
					</div>
				</div>
			</div>
			<div class="item" style="background-image: url(images/books.png)">
				<div class="carousel-caption">
					<div>
						<h2 class="heading animated bounceInRight">Faça comentários sobre a disciplina</h2>
						<p class="animated bounceInLeft">Elogie ou critique. A escolha é sua!</p>
						<a class="btn btn-default slider-btn animated fadeIn" href="reg.jsp">Cadastre-se</a>
						<a class="btn btn-default slider-btn animated fadeIn" href="loginform.jsp">Entrar</a>
					</div>
				</div>
			</div>
		</div><!--/.carousel-inner-->

		<a class="carousel-left member-carousel-control hidden-xs" href="#main-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
		<a class="carousel-right member-carousel-control hidden-xs" href="#main-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
	</div>

</section><!--/#home-->

<section id="about-us">
	<div class="container">
		<div class="text-center">
			<div class="col-sm-10 col-sm-offset-1">
				<h2 class="title-one">Sobre Nós</h2>
				<p>Esta plataforma foi desenvolvida para a matéria PMR-3304 - Sistemas de Informação - pelos alunos da Turma 2 de 2016.<br>
				O objetivo deste sistema é dar a possibilidade para os alunos da comunidade USP de avaliar as matérias de acordo com suas siglas, assim como professores, dificuldade, etc. <br>
				Ao mesmo tempo esta plataforma serve para consulta da reputação das matérias e dos professores, a fim de auxiliar o aluno a escolher as melhores matérias possíveis, e de dar um feedback aos professores e gestores da USP sobre as matérias ministradas.</p>
			</div>
		</div>
	</div>
	</section><!--/#about-us-->

	<footer id="footer">
		<div class="container">
			<div class="text-center">
				<p>Copyright &copy; 2016 - PMR3304-T2-2016 | All Rights Reserved</p>
			</div>
		</div>
	</footer> <!--/#footer-->

	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/smoothscroll.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.min.js"></script>
	<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script>
	<script type="text/javascript" src="js/jquery.parallax.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
