<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>DMOTOR</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="_css/Login_Regist/Icons/line-awesome.min.css">
	<!-- Jquery -->
	<link rel="stylesheet" href="https://jqueryvalidation.org/files/demo/site-demos.css">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="_css/Login_Regist/style.css"/>
	<!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body background="_img/Login_Regist/F.jpg"
style="width:100%;
height:100;" class="form-v7">
	<div class="page-content">
		<div class="form-v7-content">
			<div class="form-left mt-5">
				<img src="_img/Login_Regist/pm.jpeg" alt="form">
			</div>
			<form class="form-detail" action="Register" method="post" id="myform">
				<div class="toggle-button">
					<div class="row align-items-center">
                        <div class="col text-center">
							<img class="L" src="_img/Login_Regist/L.png">                            
							<p class="text-1">REGISTRO</p>
                        </div>
                    </div>
				</div>
				<br>
				<div class="form-row">
					<div class="row">
						<div class="col">
							<label for="nombre">NOMBRE</label>
							<input type="text" name="nombre" id="nombre" class="input-text">
							<label for="correo">CORREO ELECTRONICO</label>
							<input type="text" name="correo" id="correo" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
							<label for="password">CONTRASEÑA</label>
							<input type="password" name="password" id="clave" class="input-text" required>
						</div>
						<div class="col">
							<label for="username">APELLIDO</label>
							<input type="text" name="apellido" id="apellido" class="input-text">
							<label for="confCorreo">CONFIRMAR CORREO ELECTRONICO</label>
							<input type="text" name="confCorreo" id="your_email" class="input-text" required pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
							<label for="comfPassword">CONFIRMAR CONTRASEÑA</label>
							<input type="password" name="confPassword" id="clave" class="input-text" required>
						</div>
					</div>
                </div>
				<div class="form-row">
					<label for="rol">ROL</label>
                    <div class="col text-center" style="padding-left: 1%">
					 <select class="form-select" name="rol" style="max-width: 98%;">
						 <c:forEach items="${Rol}" var="rol">
						 	<option value="${rol.getRol()}">${rol.getNomRol()}</option>
						 </c:forEach>
					 </select>
                    </div>
				</div>
				<div class="form-row-last">
					<input type="submit" name="register" class="register" value="Registrar">
				</div>
				<div class="form-row">
                    <div class="col text-center">
						<p class="regis">¿Ya tienes una cuenta? <a href="LoginRegister?a=login">Inicia Sesion</a></p>
                    </div>
                </div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script src="../../_js/Login_Regist/Register.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>