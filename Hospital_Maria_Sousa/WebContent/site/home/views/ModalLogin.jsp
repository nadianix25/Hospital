<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	  <!-- Modal de Login  -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	  <div class="modal-dialog" role="document">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">Login</h4>
	      </div>
	      <div class="modal-body">
	
	
	        <form method="post" action="account_manager?action=login">
	          <div class="form-group">
	            <label for="utilizador">Nome de utilizador: </label>
	            <input type="text" class="form-control" id="utilizador" name="iptNomeUtilizador" placeholder="Utilizador">
	          </div>
	          <div class="form-group">
	            <label for="password">Password: </label>
	            <input type="password" class="form-control" id="password" name="iptPassword" placeholder="Password">
	          </div>
	          <input  class="btn btn-default" type="submit" value="Login" name="Login"></input>
	        </form>
	
	      </div>
	      <div class="modal-footer">
	
	      </div>
	    </div>
	  </div>
	</div>