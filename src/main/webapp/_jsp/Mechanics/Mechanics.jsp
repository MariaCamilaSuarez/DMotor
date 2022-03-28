	<div class="page-content-wrapper">
        <div class="page-content">
            <div class="page-bar">
                <div class="page-title-breadcrumb">
                    <div class=" pull-left">
                        <div class="page-title">Dashboard</div>
                    </div>
                    <ol class="breadcrumb page-breadcrumb pull-right">
                        <li><i class="fa fa-home"></i>&nbsp;<a class="parent-item" href="index.html">Home</a>&nbsp;<i class="fa fa-angle-right"></i>
                        </li>
                        <li class="active">Dashboard</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>	
	<div class="container">
	<div class="tools">
	<a class="fa fa-repeat btn-color box-refresh" href="javascript:;"></a>
	<a class="t-collapse btn-color fa fa-chevron-down" href="javascript:;"></a>
	<a class="t-close btn-color fa fa-times" href="javascript:;"></a>
	</div>
		<table id="tableGroup" class="display full-width">
			<thead >
				<tr>
					<th>Nombre</th>
					<th>Apellido</th>
					<th>Correo</th>
					<th colspan="2">Acciones</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${Users}" var="user">
					<tr>
						<td>${user.getNombre()}</td>
						<td>${user.getApellido()}</td>
						<td>${user.getCorreo()}</td>
						<td>
							<a class="${user.getEstado() eq 1 ? 'State btn btn-success' : 'State btn btn-secondary'}" id="${user.getId()}" role="button">${user.getEstado() eq 1 ? "Activo":"Inactivo"}</a>
							<a class="btn btn-danger" href="Mechanics?a=delete&id=${user.getId()}" role="button">Borrar</a>
						</td>
					</tr>			
				</c:forEach>			
			</tbody>
		</table>
	</div>
	<script type="text/javascript" src="_js/Mechanics/Mechanics.js"></script>
	
</body>
</html>