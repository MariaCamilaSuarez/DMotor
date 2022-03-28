/* just for the demos, avoids form submit
		jQuery.validator.setDefaults({
			debug: true,
			success: function (label) {
				label.attr('id', 'valid');
			},
		});
		$("#myform").validate({
			rules: {
				your_email: {
					required: true,
					email: true
				},
				password: "required",
				comfirm_password: {
					equalTo: "#password"
				}
			},
			messages: {
				your_email: {
					required: "Please provide an email"
				},
				password: {
					required: "Please provide a password"
				},
				comfirm_password: {
					required: "Please provide a password",
					equalTo: "Wrong Password"
				}
			}
		});*/