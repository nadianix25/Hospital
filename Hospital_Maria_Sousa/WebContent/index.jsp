<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% String siteRoot=application.getContextPath();
    String render="";

	render= (String) request.getAttribute("render");
	
	String user= (String) request.getAttribute("userName");
	user = user==null? null:user;
	
	render = render==null? "all":render;

	
%>
<!DOCTYPE html>
<html lang="en">
<head>

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
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50" >

     <section class="preloader" >
          <div class="spinner">

               <span class="spinner-rotate"></span>

          </div>
     </section>


	<jsp:include page="/site/shared/header.jsp"  flush="true"></jsp:include>
 		

 

	<div id="conteudos-contentor">
			 	
			<div id="main">
				<%if(render=="all"){ %>
				
					<jsp:include page="site/home/views/Carrocel.jsp"  flush="true"></jsp:include> 
					<jsp:include page="site/home/views/Historia.jsp"  flush="true"></jsp:include> 
					<jsp:include page="site/home/views/Display_Acordos.jsp"  flush="true"></jsp:include> 
				    <jsp:include page="site/home/views/Display_medicos.jsp"  flush="true"></jsp:include> 
				  	<jsp:include page="site/home/views/Google_Maps.jsp"  flush="true"></jsp:include> 
				  	
				<%}else{ %>	
				
					<jsp:include page="<%=render%>"  flush="true"></jsp:include> 
							
							
				<%}%>			    
			
			</div> 
		</div>
		


     <!-- FOOTER -->
    <jsp:include page="/site/shared/Footer.jsp"  flush="true"></jsp:include>
    
  </div>
  
       <!-- SCRIPTS -->
     <script src="<%=siteRoot%>/js/jquery.js" ></script>
     <script src="<%=siteRoot%>/js/bootstrap.min.js" ></script>
     <script src="<%=siteRoot%>/js/jquery.sticky.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/jquery.stellar.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/wow.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/smoothscroll.js" type="text/javascript"></script>
    
     <script src="<%=siteRoot%>/js/custom.js" type="text/javascript"></script>
  

</body>



</html>
