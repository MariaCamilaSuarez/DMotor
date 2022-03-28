<%@include file="../Header.jsp"%>
<div class="Customer container">
	<h1 class="titulo mt-4 mb-5 pt-4">Listado de solicitudes</h1>
	<table class="table table-bordered table-hover">
		<tr>

			<th>Fecha</th>
			<th>Responsable</th>
			<th>Cliente</th>
			<th>Vehiculo</th>
			<th>Repuesto</th>
			<th>Servicio</th>
			<th>Parte</th>
			<th>Observación</th>
			<th>Precio</th>

		</tr>

		<c:forEach items="${solicitud}" var="solicitud">

			<tr>

				<td>${solicitud.getFecha()}</td>
				<td>${solicitud.getId_Usuario()}</td>
				<td>${solicitud.getId_Cliente()}</td>
				<td>${solicitud.getId_Vehiculo()}</td>
				<td>${solicitud.getRepuesto()}</td>
				<td>${solicitud.getServicio()}</td>
				<td>${solicitud.getParte()}</td>
				<td>${solicitud.getObservacion()}</td>
				<td>${solicitud.getPrecio()}</td>

			</tr>

		</c:forEach>

	</table>
	<div class="d-md-flex justify-content-md-end">
	<a href="Solicitude?a=Form" class="btn btn-success me-4" role="button">Agregar</a>
			
		</div>
</div>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>
</html>