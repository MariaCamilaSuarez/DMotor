<%@include file="../Header.jsp" %>
	<div class="ff">
        <div class="contenedor">
            <div class="container-fluid2">
            <h2>REGISTAR CLIENTES</h2>
                <form action="SubmitCustomerInfo" method="post">
                    <div class="row g-3">
                        <div class="col ms-3">
                            <div class="col-md-7 mb-3">
                                <label for="NombreCliente" class="form-label">Nombre(s)</label>
                                <input type="text" class="form-control" name="nombreCliente" placeholder="Nombre Cliente">
                            </div>
                            <div class="col-md-7 mb-3">
                                <label for="ApellidoCliente" class="form-label">Apellido(s)</label>
                                <input type="text" class="form-control" name="apellidoCliente" placeholder="Apellido Cliente">
                            </div>
                            <div class="col-md-7 mb-3">
                                <label for="Telefono" class="form-label">Teléfono</label>
                                <input type="number" class="form-control" name="telefono" placeholder="Teléfono">
                            </div>
                            
                        </div>
                        <div class="col">
                            <div class="col-md-7 mb-3">
                                <label for="Email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="correo" name="email" placeholder="Email" onchange="verificarC()">
	                            <div  id="validarC"></div>
                            </div>
                            <div class="col-md-7 mb-3">
                                <label for="numeroDocumento" class="form-label">Número de documento</label>
                                <input type="text" class="form-control" id="numeroDocumento" name="numeroDocumento" placeholder="Número de documento" onchange="verificarD()">
                                <div  id="validarD"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary mt-4" onclick="stopDefAction(event)">Agregar</button>
                        <a type="button" class="btn btn-secondary mt-4" href="Customers?a=list">Cancelar</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript" src="_js/Customers/CustomerForm.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>