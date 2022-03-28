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
	<link rel="stylesheet" href="_css/Login_Regist/style.css" />
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body background="_img/Login_Regist/F.jpg" style="width:100%; height:100;" class="form-v7">
	<div class="page-content">
		<div class="form-v7-content">
			<div class="form-left ">
				<img src="_img/Login_Regist/pm.jpeg" alt="form">
			</div>
			<form class="form-detail mt-4" action="Login" method="get" id="myform">
				<div class="toggle-button">
					<div class="row align-items-center">
                        <div class="col text-center">
                            <img class="L" src="_img/Login_Regist/L.png"><br>
                            <p class="text-1">INICIO DE SESION</p>
                        </div>
                    </div>
				</div>
				<br>
				<div class="form-row">
					<label for="your_email">CORREO ELECTRONICO</label>
					<input type="text" name="correo" id="your_email" class="input-text" required
						pattern="[^@]+@[^@]+.[a-zA-Z]{2,6}">
				</div>
				<div class="form-row">
					<label for="password">CONTRASEÑA</label>
					<input type="password" name="password" id="password" class="input-text" required>
				</div>
				<div class="form-row-last">
					<input type="submit" name="ingresar" class="ingresar" value="Ingresar">
				</div>
				<div class="form-row">
                    <div class="col text-center">
						<p class="regis">¿Aún no tienes cuenta? <a href="LoginRegister?a=register">Registrate</a></p>
                    </div>
                </div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>
	<script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/additional-methods.min.js"></script>
	<script src="../../_js/Login_Regist/Login.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>