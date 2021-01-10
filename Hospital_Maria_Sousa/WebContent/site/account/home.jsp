<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <% String siteRoot=application.getContextPath();
    String render="";

	render= (String) request.getAttribute("render");
	render= (String) render==null? "/site/account/views/index.jsp":render;
	
	String user= (String) request.getAttribute("userName");
	user = user==null? null:user;
	
	boolean tentativa = true;
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
     <title>Health - Medical Website Template</title>
<!--

Template 2098 Health

http://www.tooplate.com/view/2098-health
https://bootstrapdocs.com/v3.3.6/docs/javascript/#modals
-->
    <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="Tooplate">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="<%=siteRoot%>/css/bootstrap.min.css">
     <link rel="stylesheet" href="<%=siteRoot%>/css/font-awesome.min.css">
     <link rel="stylesheet" href="<%=siteRoot%>/css/animate.css">
     <link rel="stylesheet" href="<%=siteRoot%>/css/owl.carousel.css">
     <link rel="stylesheet" href="<%=siteRoot%>/css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="<%=siteRoot%>/css/tooplate-style.css">

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50" style="background-image:url(images/slider3.jpg);">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">

               <span class="spinner-rotate"></span>

          </div>
     </section>




         <section class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">
          
         
               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="/Hospital_Maria_Sousa/index.jsp" class="navbar-brand"><i class="fa fa-h-square"></i>ospital Maria De Sousa</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="index.jsp" class="smoothScroll">Home</a></li>
                        
                         <li><a href="/Hospital_Maria_Sousa/account?action=Home" class="smoothScroll">Marcações</a></li> <!-- isto não existe!! -->

                         <li><a href="index.jsp#team" class="smoothScroll">Médicos</a></li>
                         <li><a href="index.jsp#news" class="smoothScroll">Acordos</a></li>
                         <li><a href="index.jsp#google-map" class="smoothScroll">Apoio ao cliente</a></li>
                         <!-- Single button -->
                      
                        <div class="btn-group" style="overflow: inherit !important;" >
                          <button type="button smoothScroll"
                           class="btn btn-default dropdown-toggle"
                           data-toggle="dropdown"
                          
                           aria-haspopup="true"
                           aria-expanded="false" style="margin-top:5px;">
                            <%=user %> <span class="caret"></span>
                          </button>
                          <ul class="dropdown-menu">
                            <li><a href="/Hospital_Maria_Sousa/account?action=Home">Home</a></li>
                            <li><a href="/Hospital_Maria_Sousa/account?action=Exames">Exames</a></li>
                            <li><a href="/Hospital_Maria_Sousa/account?action=Consultas">Consultas</a></li>
                            <li><a href="/Hospital_Maria_Sousa/account?action=Receitas">Receitas</a></li>
                            <li><a href="/Hospital_Maria_Sousa/account?action=Historico">Histórico</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="/Hospital_Maria_Sousa/account?action=Definicoes">Definições</a></li>
                            <li><a href="#">Sair</a></li>
                            </ul>
                            </div>
					
                    </ul>
               </div>
         
     </section>

     <br>
     <br>
     <br>
     <br>

	<!-- Main View o render-->
	

	<jsp:include page="<%=render%>"  flush="true"></jsp:include>



   
     <!-- FOOTER -->
    <jsp:include page="/site/shared/Footer.jsp"  flush="true"></jsp:include>



     </footer>

     <!-- SCRIPTS -->
     <script src="<%=siteRoot%>/js/jquery.js" ></script>
     <script src="<%=siteRoot%>/js/bootstrap.min.js" ></script>
     <script src="<%=siteRoot%>/js/jquery.sticky.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/jquery.stellar.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/wow.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/smoothscroll.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/owl.carousel.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/custom.js" type="text/javascript"></script>
  

</body>

</html>