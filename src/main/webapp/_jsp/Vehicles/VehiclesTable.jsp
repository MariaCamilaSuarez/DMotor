<%@include file="../Header.jsp" %>
	<div class="container">
		<table class="table table-striped mt-5" id="Mech">
			<thead class="table-dark">
				<tr>
					<th>Modelo</th>
					<th>Color</th>
					<th>Tipo</th>
					<th>Marca</th>
					<th>Placa</th>
					<th>Cliente</th>
					<th colspan="2">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Vehicles}" var="vehicle">
					<tr>
						<td>${vehicle.getModelo()}</td>
						<td>${vehicle.getColor()}</td>
						<td>${vehicle.getNameTipo()}</td>
						<td>${vehicle.getMarca()}</td>
						<td>${vehicle.getPlaca()}</td>
						<td>${vehicle.getNameCliente()}</td>
						<td>
							<!-- <a class="btn btn-secondary" href="">Editar</a>-->
							<a class ="btn btn-danger" href="Vehicles?a=delete&id=${vehicle.getId()}" type="button">Borrar</a>
						</td>
					</tr>			
				</c:forEach>			
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="_js/Mechanics/Mechanics.js"></script>