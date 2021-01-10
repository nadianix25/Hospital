
     <section id="dashboard" class="slider" data-stellar-background-ratio="0.5" style="background-color:white;">
          <div class="container">

          <div class="row">
            <h2>Consultas</h2>

            <div class="col-md-6 col-sm-6">
                 <form id="appointment-form" role="form" method="post" action="#">

                      <div class="section-title wow fadeIn col-md-6 col-sm-6" data-wow-delay="0.4s">
                           <h3>Consultas Marcadas</h3>
                      </div>
				
                      <div class="wow fadeIn col-md-6 col-sm-6" data-wow-delay="0.6s">
                        <button type="button" class="btn btn-default" data-toggle="modal" data-target="#ModalConsultas" >Marcar Consultas</button>
                      </div>


                      <div class="panel panel-default" style="clear:both;">

              <!-- Tabela Para mostrar consultas marcadas --> <!-- esta parte eu n„o sei como fazer, se tiverem ideias -->
                        <table class="table">
                          <thead>
                            <tr>
                              <th>Nome</th>
                              <th>M√©dico</th>
                              <th>Data</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>De momento n√£o h√° consultas marcadas</td>

                            </tr>


                          </tbody>
                        </table>

                      </div>
            </div>



                        <div class="col-md-6 col-sm-6"><!-- esta parte eu n„o sei como fazer, se tiverem ideias -->

                             <form id="appointment-form" role="form" method="post" action="#">

                                  <div class="section-title wow fadeIn" data-wow-delay="0.4s">
                                       <h3>Consultas Realizadas</h3>
                                  </div>

                                  <div class="panel panel-default">
                        <!-- Tabela Para mostrar consultas realizadas -->
                                    <table class="table">
                                      <thead>
                                        <tr>
                                          <th>Nome</th>
                                          <th>M√©dico</th>
                                          <th>Data</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>Consulta Otorrino</td>
                                          <td>Manuel Costa</td>
                                          <td>01/10/2020</td>
                                        </tr>
                                        <tr>
                                          <td>Ecografia abdominal </td>
                                          <td>Maria Andrade</td>
                                          <td>01/1/2020</td>
                                        </tr>

                                      </tbody>
                                    </table>

                                  </div>
                        </div>



     </section>




    

<!--  deixamos aqui a parte do pop up e mandamos os dados do pop up para uma controladora que ir· guardar os dados na bd, nomeadamente, na parte das consultas marcadas, depois aqui mesmo temos de 
na parte das consultas realizadas e consultas marcadas pÙr os dados indicados para cada atravÈs de forms para a controladora -->
     <!--  MODAL MARCAR CONSULTAS  o "popup"-->
     <div class="modal fade" id="ModalConsultas" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
       <div class="modal-dialog" role="document">

         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <h4 class="modal-title" id="myModalLabel">Marcar Consultas</h4>

           </div>

           <div class="modal-body">

             <div class="modal-split wow fadeIn" data-wow-delay="0.1s">
               <form action="marcacoes?action=marcar_consulta">
                 <div class="form-group">
                   <label for="nomeMedico">Selecione o m√©dico</label>
                   <select type="select" class="form-control" id="nomeMedico" name="iptConsultaMedico" placeholder="Selecione o m√©dico">
                   <!-- Aqui colocamos o nome dos mÈdicos -->
                     <option>Manuel Antonio</option>
                     <option>Joaquim Dores</option>
                     <option>Cristina Sousa</option>
					</select>
                   <label for="data">Data </label>
              		<input type="date" class="form-control" name="DataConsulta" id="data" >
              		 <label for="hora">Hora</label>
             		 <input type="time" class="form-control" name="DataConsultaHora" id="hora" >
             		  <button class="btn btn-default" id="Marcar" name="submitConsulta">Marcar</button>
             		  </form>
                 </div>
					
        

             

               </div>

           

         
         </div>
       </div>



     <script>


     var btnValidar = document.getElementById('validar');
     var modalSplit = document.getElementsByClassName('modal-split');

     modalSplit[0].style.display="block";
     modalSplit[1].style.display="none";

     btnValidar.addEventListener('click',nextSplit);

     function nextSplit(){
       modalSplit[0].style.display="none";
       modalSplit[1].style.display="block";
     }

     </script>

