<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

     <!-- Primeira vista do utente, tem links para exames e consultas..." -->
     <section id="dashboard" class="slider" data-stellar-background-ratio="0.5" style="background-color:white;">
          <div class="container">

               <div class="row">
                 <h2>Bem-vindo, utilizador</h2>

                    <div class="col-md-4 col-sm-6">
                                          <!-- Exames Marcados -->
                          <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <a href="news-detail.html">
                                <h3> Exames marcados</h3>

                              </a>
                              <div class="news-info">
                                <h3>Não tem exames marcados</h3>
                                <p> </p>
                                <div class="author">
                                  <div class="author-info">
                                      <h5><a href="/Hospital_Maria_Sousa/account?action=Exames">Marcar exames</a></h5>
                                  </div>
                                </div>
                             </div>
                          </div>
                       </div>




                       <div class="col-md-4 col-sm-6">

                             <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                                 <a href="news-detail.html">
                                   <h3> Consultas Marcadas</h3>

                                 </a>
                                 <div class="news-info">
                                   <h3>Não tem consultas marcadas</h3>
                                   <p> </p>
                                   <div class="author">
                                     <div class="author-info">
                                         <h5><a href="/Hospital_Maria_Sousa/account?action=Consultas">Marcar consultas</a></h5>
                                     </div>
                                   </div>
                                </div>
                             </div>
                        </div>


                        <div class="col-md-4 col-sm-6">

                              <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                                  <a href="news-detail.html">
                                    <h3> Histórico</h3>
                                  </a>
                                  <div>
                                    <ul class="list-group">
                                      <li class="list-group-item">Endoscopia    11/02/2020</li>
                                      <li class="list-group-item">Tac aos Seios nasais    11/02/2020</li>
                                    </ul>
                                  </div>
                                    <div class="author-info">
                                        <h5><a href="/Hospital_Maria_Sousa/account?action=Historico">Ver mais</a></h5>
                                    </div>
                              </div>
                         </div>
              </div>
          </div>
     </section>
    