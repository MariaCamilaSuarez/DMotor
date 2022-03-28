<%@include file="../Header.jsp" %>
	<div class="ff">
        <div class="contenedor">
            <div class="container-fluid2">
            <br>
            <h2>Editar</h2>
                <form action="UpdateCustomer?id=${Customers.id }" method="post">
                    <div class="row g-3">
                        <div class="inp1 col">
                        	<div class="col-md-7"><br>
                                <input type="hidden" class="form-control" name="id" id="id" value="${Customers.id}">
                            </div>
                            <div class="col-md-7">
                                <label for="NombreCliente" class="form-label">Nombre(s)</label>
                                <input type="text" class="form-control" name="nombreCliente"  id="nombre" value="${Customers.nombre}">
                            </div><br>
                            <div class="col-md-7">
                                <label for="ApellidoCliente" class="form-label">Apellido(s)</label>
                                <input type="text" class="form-control" name="apellidoCliente"  id="apellido" value="${Customers.apellido}">
                            </div><br>
                            <div class="col-md-7">
                                <label for="Telefono" class="form-label">Teléfono</label>
                                <input type="number" class="form-control" name="telefono" id="telefono" value="${Customers.telefono}">
                            </div><br>
                            
                        </div>
                         <div class="inp2 col"><br>
                            <div class="col-md-7">
                                <label for="Email" class="form-label">Email</label>
                                <input type="email" class="form-control" id="correo" name="email"  id="email" onchange="verificarC()" value="${Customers.correo }">
	                            <div  id="validarC"></div>
                            </div><br>
                            <div class="col-md-7">
                                <label for="numeroDocumento" class="form-label">Número de documento</label>
                                <input type="text" class="form-control" name="numeroDocumento" id="numeroDocumento" onchange="verificarD()" value="${Customers.numeroDocumento }">
                                <div  id="validarD"></div>
                            </div><br>
                            
                        </div>
                    </div>
                    <div class="inp1 col-12">
                        <button type="submit" class="btn btn-primary mt-4">Guardar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <!-- <script>
    var validar=document.getElementById("validarC");
    function verificarC() {
		const correo=document.getElementById("correo").value;
		$.ajax({
			url:"cliente?a=validarCorreo",
			data:{
				correo:correo
			},
			success: function(result){
				if(result ===""){
					validar.className="";
					$("#validarC").html(result);
				}else{
					validar.className="alert alert-danger";
					$("#validarC").html(result);
				}
				
			}
			
		})	
	}
    
    
    
    
    
    
    
    var validarDoc=document.getElementById("validarD");
    function verificarD() {
		const numeroDocumento=document.getElementById("numeroDocumento").value;
		$.ajax({
			url:"cliente?a=validarDocumento",
			data:{
				numeroDocumento:numeroDocumento
			},
			success: function(result){
				if(result ===""){
					validarDoc.className="";
					$("#validarD").html(result);
				}else{
					validarDoc.className="alert alert-danger";
					$("#validarD").html(result);
				}
				
			}
			
		})	
	}
    function stopDefAction(e) {
    	var validar = $("#validarC").attr('class')
    	var validarDocumento = $("#validarD").attr('class')
 	    if(validar !== "" || validarDocumento !== "" ) {
 	    	console.log();
 	    	 e.preventDefault();
 	    }
    	}
    </script> -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>