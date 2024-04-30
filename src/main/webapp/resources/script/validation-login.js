$(document).ready(() =>{
	
	$('#id').focusout(e=>{
		if($('#id').val() === ""){
			$('#error-msg-id').show();
			$('#id').css('border','solid 1px tomato');
		}else{
			$('#error-msg-id').hide();
			$('#id').css('border','solid 1px lightgray');
		}
	});
	
	$('#password').focusout(e=>{
		if($('#password').val() === ""){
			$('#error-msg-password').show();
			$('#password').css('border','solid 1px tomato');
		}else {
			$('#error-msg-password').hide();
			$('#password').css('border','solid 1px lightgray');
		}
		
	});
	
	$('form').submit(e =>{
		e.preventDefault();
		
		const id = $('#id').val();
		const pw = $('#password').val();
		
		let isValid = true;
		
		if(id === ""){
			$('#error-msg-id').show();
			$('#id').css('border','solid 1px tomato');
			isValid = false;
		}
		if(password === ""){
			$('#error-msg-password').show();
			$('#password').css('border','solid 1px tomato');
			isValid = false;
		}
		
		if(isValid === true){
			e.target.submit();
		}
		
	})
})