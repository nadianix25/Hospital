
     <section id="dashboard" class="slider" data-stellar-background-ratio="0.5" style="background-color:white;">
          <div class="container">

          <div class="row">
            <h2>Exames</h2>

            <div class="col-md-6 col-sm-6">
                 <form id="appointment-form" role="form" method="post" action="#">

                      <!-- SECTION TITLE -->
                      <div class="section-title wow fadeIn col-md-6 col-sm-6" data-wow-delay="0.4s">
                           <h3>Exames Marcados</h3><!-- esta parte eu n�o sei como fazer, se tiverem ideias -->
                      </div>

                      <div class="wow fadeIn col-md-6 col-sm-6" data-wow-delay="0.6s">
                        <button type="button" class="btn btn-default" href="#appointment" data-toggle="modal" data-target="#ModalExames">Marcar Exames</button>
                      </div>


                      <div class="panel panel-default" style="clear:both;">
                        <!-- Table dos exames marcados -->
                        <table class="table">
                          <thead>
                            <tr>
                              <th>Nome</th>
                              <th>Médico</th>
                              <th>Data</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr>
                              <td>De momento não há exames marcadas</td>

                            </tr>


                          </tbody>
                        </table>

                      </div>
            </div>



                        <div class="col-md-6 col-sm-6">

                             <form id="appointment-form" role="form" method="post" action="#">
                                  <div class="section-title wow fadeIn" data-wow-delay="0.4s">
                                       <h3>Exames Realizados</h3><!-- esta parte eu n�o sei como fazer, se tiverem ideias -->
                                  </div>

                                  <div class="panel panel-default">
                                    <!-- Table exames já realizados-->

                                    <table class="table">
                                      <thead>
                                        <tr>
                                          <th>Nome</th>
                                          <th>Médico</th>
                                          <th>Data</th>
                                        </tr>
                                      </thead>
                                      <tbody>
                                        <tr>
                                          <td>Endoscopia ao Nariz</td>
                                          <td>Antonio José</td>
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




     <!--  MODAL MARCAR EXAMES -->
     <div class="modal fade" id="ModalExames" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
       <div class="modal-dialog" role="document">

         <div class="modal-content">
           <div class="modal-header">
             <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             <h4 class="modal-title" id="myModalLabel">Marcar Exames</h4>

           </div>

           <div class="modal-body">

             <div class="modal-split wow fadeIn" data-wow-delay="0.1s">
               <form action="marcacoes?action=marcar_exame">
                 <div class="form-group">
                   <label for="nomeExame">Introduza o Nome do Exame</label>
                   <select type="select" class="form-control" id="nomeExame" name="iptExameNome" placeholder="Selecione o exame pretendido">
                    <!-- Aqui colocamos o nome dos m�dicos -->
                     <option>[4] Prova de esforço</option>
                     <option>[5] Ecocardiograma</option>
                     <option>[6] Eletrocardiograma</option>
                   </select>
                   <label for="codigoExame">Código</label>
                   <input type="number" class="form-control" id="codigoExame" name="iptExameCodigo" placeholder="Introduza o codigo do exame">
                   <label for="data">Data </label>
              		<input type="date" class="form-control" name="DataExame" id="data" >
              		<label for="hora">Hora</label>
              		<input type="time" class="form-control" name="DataExameHora" id="hora" >
             		 <button class="btn btn-default" id="Marcar" name="submitConsulta">Marcar</button>
					  </div>
               </form>

     		      </div>

     		
            


          

     		</div>

         </div>
       </div>
     </div>


