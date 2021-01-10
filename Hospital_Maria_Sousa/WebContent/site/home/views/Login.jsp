
    
<%  String erro= (String) request.getAttribute("erro");
	erro= erro==null?"":erro;

%>

<br>
<br>
<br>
    
  <div class="col-md-3 col-sm-3">
  </div>
     
 <div class="col-md-6 col-sm-6">
        <form method="post" action="site/home/security?action=login" >
          <div class="form-group" >
            <label for="utilizador">Nome de utilizador: </label>
            <input type="text" class="form-control" id="utilizador" name="iptNomeUtilizador" placeholder="Utilizador">
          </div>
          <div class="form-group">
            <label for="password">Password: </label>
            <input type="password" class="form-control" id="password" name="iptPassword" placeholder="Password">
          </div>
          <input type="submit" name="login" value="Submit" />
          
        </form>
<p style="color:red">
	<strong><%=erro%></strong>
</p>
      </div>
      
 
<br>
<br>
<br>
 
<br>
<br>
<br>

 
<br>
<br>
<br>