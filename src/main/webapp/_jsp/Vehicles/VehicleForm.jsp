<%@include file="../Header.jsp" %>
         <h2>REGISTAR VEHICULOS</h2>
             <form action="SubmitVehicleInfo?id=${id}" method="post">
                 <div class="row g-3">
                     <div class="inp1 col"> 
                         <div class="col-md-7">
                             <label for="modelo" class="form-label">Modelo</label>
                             <input type="text" class="form-control" name="modelo" placeholder="Modelo">
                         </div>
                         <div class="col-md-7">
                             <label for="color" class="form-label">Color</label>
                             <input type="text" class="form-control" name="color" placeholder="Color">
                         </div>
                         <div class="col-md-7">
                             <label for="placaVehiculo" class="form-label">Placa del vehículo</label>
                             <input type="text" class="form-control" name="placaVehiculo" placeholder="Placa del vehículo">
                         </div>                            
                     </div>
                     <div class="inp2 col">
                         <div class="col-md-7">
                         	<label for="tipo" class="form-label">Tipo</label>
                            <select name="tipo" class="form-select">
                            	<c:forEach items="${Type}" var="tipo">
									<option value="${tipo.getTipo()}" selected>${tipo.getNameTipo()}</option>					
								</c:forEach>
							</select>
                         </div>
                         <div class="col-md-7">
                             <label for="marca" class="form-label">Marca</label>
                             <input type="text" class="form-control" name="marca" placeholder="marca">                               
                         </div>
                     </div>
                 </div>
                 <div class="inp1 col-12">
                     <button type="submit" class="btn btn-primary mt-4" onclick="stopDefAction(event)">Agregar</button>
                 </div>
             </form>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>