$(document).ready(function(){
	$("#Mechanics").addClass('active');
})
	document.querySelectorAll(".State").forEach(el => {
	  el.addEventListener("click", e => {
	    const id = e.target.getAttribute("id");
	    const data = document.getElementById(id);
	    console.log(id , data);
	    $.ajax(
			console.log(id,data),
			{
			url:"Mechanics?a=changeState",
			data:{
				id:id,
				data:data.text
			},
			success: function(){
				console.log("mai");
				$('.container').load('Mechanics?a=list&id=1');
				//location.href ="Mechanics?a=list"
			}
		});
	  });
	});