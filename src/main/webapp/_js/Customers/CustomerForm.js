var validar=document.getElementById("validarC");
    function verificarC() {
		const correo=document.getElementById("correo").value;
		$.ajax({
			url:"Customers?a=validateEmail",
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
			url:"Customers?a=validateDocument",
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