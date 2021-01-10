<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  String erro= (String) request.getAttribute("erro");
	erro= erro==null?"":erro;
%>

<h1>Alterar password</h1>
  
<br>

  <div class="col-md-3 col-sm-3">
  </div>
     
 <div class="col-md-6 col-sm-6">
<form method="post" action="/Hospital_Maria_Sousa/account?action=Update_pass"">
	<label>Password atual:</label><br> 
	<input type=""password"" name="_oPass" /><br>

	<label>Nova Password:</label><br> 
	<input type="password" name="_nPass" /><br> 
	
	<label>Confirmar Password:</label><br> 
	<input type="password" name="_cPass" /><br> 
	
	<input type="submit" name="Guardar" value="Submit" /><br>
</form>
 
<p style="color:red">
	<strong><%=erro%></strong>
</p>

<br>
<br>
<br>
<br>

<br>
<br>

</div>

 