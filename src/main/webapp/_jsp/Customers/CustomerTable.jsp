<%@include file="../Header.jsp" %>	
		<div class="Customer container">
			<h1 class="titulo mt-4 mb-5 pt-4">Listado de clientes</h1>
			<table class="table table-bordered table-hover">
				<tr>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Número de Documento</th>
					<th>Correo</th>
					<th>Telefono</th>
					<th colspan="2">Acciones</th>
				</tr>
				<c:forEach items="${clientes}" var="cliente">
					<tr>
						<td>${cliente.getNombre()}</td>
						<td>${cliente.getApellido()}</td>
						<td>${cliente.getNumeroDocumento()}</td>
						<td>${cliente.getCorreo()}</td>
						<td>${cliente.getTelefono()}</td>
						<td>
							<a class="btn btn-secondary" href="Customers?a=getToUpdate&id=${cliente.getId() }"  role="button">Editar</a>
							<a class="btn btn-danger" href="Customers?a=delete&id=${cliente.getId()}" role="button">Borrar</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<div class="d-md-flex justify-content-md-end">
				<a href="Customers?a=submitInformation" class="btn btn-success me-4" role="button">Agregar</a><br>
			</div>
		</div>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>