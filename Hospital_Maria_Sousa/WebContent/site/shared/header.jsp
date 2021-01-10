<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <% String siteRoot=application.getContextPath();
    String render="";
    
    String user= (String) request.getAttribute("userName");
	user = user==null? null:user;
	
	boolean isLogged = user==null? false:true;
	
	%>
   
     <section class="navbar navbar-default navbar-static-top" role="navigation">
          <div class="container">
          
         
               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="/index.jsp" class="navbar-brand"><i class="fa fa-h-square"></i>ospital Maria De Sousa</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-right">
                         <li><a href="index.jsp" class="smoothScroll">Home</a></li>
                         <%if(isLogged){ %>
                         <li><a href="/Hospital_Maria_Sousa/account?action=Home" class="smoothScroll">Marcações</a></li> <!-- isto não existe!! -->
                         <%} else{ %>
                          <li><a href="#about" class="smoothScroll">Sobre</a></li>
                          <%}%>
                         <li><a href="#team" class="smoothScroll">Médicos</a></li>
                         <li><a href="#news" class="smoothScroll">Acordos</a></li>
                         <li><a href="#google-map" class="smoothScroll">Apoio ao cliente</a></li>
                         <!-- Single button -->
                         <%if(isLogged){ %>
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
						 <%} else{ %>
						 	 <li class="appointment-btn"><a class="btn btn-primary btn-lg btn-default" href="Home?action=login" >Área do Utente</a></li>
						   <%}%>
                    </ul>
               </div>
         
     </section>
     
     
           <!-- SCRIPTS -->
     <script src="<%=siteRoot%>/js/jquery.js" ></script>
     <script src="<%=siteRoot%>/js/bootstrap.min.js" ></script>
     <script src="<%=siteRoot%>/js/jquery.sticky.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/jquery.stellar.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/wow.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/smoothscroll.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/owl.carousel.min.js" type="text/javascript"></script>
     <script src="<%=siteRoot%>/js/custom.js" type="text/javascript"></script>