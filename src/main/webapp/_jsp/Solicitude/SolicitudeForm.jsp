<%@include file="../Header.jsp" %>
	<div class="ff">
		<div class="contenedor">
			<div class="container-fluid2">
				<h2>REGISTAR SOLICITUD</h2>
				<form action="SubmitSolicitude" method="post">
					<div class="row g-3">
						<div class="inp1 col">
							<div class="col-md-7">
								<br> <label for="Fecha" class="form-label">Fecha</label> <input
									type="date" class="form-control" name="Fecha"
									placeholder="Fecha">
							</div>
							<br>
							<div class="col-md-7">
								<label for="Id_Usuario" class="form-label">Responsable</label> <input
									type="text" class="form-control" name="Id_Usuario"
									placeholder="Responsable">
							</div>
							<br>
							<div class="col-md-7">
								<label for="Id_Cliente" class="form-label">Cliente</label> <input
									type="text" class="form-control" name="Id_Cliente"
									placeholder="Cliente">
							</div>
							<br>
							<div class="col-md-7">
								<label for="Id_Vehiculo" class="form-label">Vehiculo</label> <input
									type="text" class="form-control" name="Id_Vehiculo"
									placeholder="Vehiculo">
							</div>
							<br>
							<div class="col-md-7">
								<label for="Parte" class="form-label">Parte</label> <input
									type="text" class="form-control" name="Parte"
									placeholder="Parte">
							</div>
						</div>
						<div class="inp2 col">
							<br>
							<div class="col-md-7">
								<label for="Repuesto" class="form-label">Repuesto</label> <input
									type="text" class="form-control" name="Repuesto"
									placeholder="Repuesto">
							</div>
							<br>
							<div class="col-md-7">
								<select class="form-textbox" name="Servicio" onchange="cambia()"
									required>
									<option class="txtGrey" value="" id="Servicio" selected
										disabled>Seleccione un Servicio</option>
									<option value="Mantenimiento preventico">Mantenimiento
										Preventivo</option>
									<option value="Mantenimiento Correctivo">Mantenimiento
										Correctivo</option>
									<option value="Mantenimiento Periodico">Mantenimiento
										Periodico</option>
								</select>
								
							</div><br>
							<div class="mb-3">
								<label for="Observacion" class="form-label">Observaciones</label>
								<textarea class="form-control" id="Observacion" name="Observacion"
									rows="3"></textarea>
							</div>

							<div class="col-md-7">
								<label for="Precio" class="form-label">Precio</label> <input
									type="number" class="form-control" name="Precio"
									placeholder="Precio">
							</div>
							<br>
						</div>
					</div>
					<div class="inp1 col-12">
						<button type="submit" class="btn btn-success mt-4"
							onclick="stopDefAction(event)">Guardar</button>
		
					</div>
				</form>
			</div>
		</div>
	</div>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>