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
	
	$('#name').focusout(e=>{
		if($('#name').val() === ""){
			$('#error-msg-name').show();
			$('#name').css('border','solid 1px tomato');
		}else{
			$('#error-msg-name').hide();
			$('#name').css('border','solid 1px lightgray');
		}
	});
	$('#telecom').focusout(e=>{
		if($('#telecom').val() === ""){
			$('#error-msg-telecom').show();
			$('#telecom').css('border','solid 1px tomato');
		}else{
			$('#error-msg-telecom').hide();
			$('#telecom').css('border-bottom','none');
		}
	});
	
	$('#birth').focusout(e=>{
		if($('#birth').val() === ""){
			$('#error-msg-birth').show();
			$('#birth').css('border','solid 1px tomato');
		}else{
			$('#error-msg-birth').hide();
			$('#birth').css('border','solid 1px lightgray');
			
			const birth = $('#birth').val();
			if(birth.match(/\d{8}/) === null){
				$('#error-msg-birth-pattern').show();
				$('#birth').css('border','solid 1px tomato');
			}	
		}
		//생년월일은 8자리
	});
	
	$('#telecom').focusout(e=>{
		if($('#telecom').val() === ""){
			$('radio-container').css('border','solid 1px tomato');
			$('#gender-man-lable').css('border','solid 1px tomato');
			$('#gender-woman-lable').css('border','solid 1px tomato');
			$('#error-msg-gender').show();
		}
	});
	
	$('#phone').focusout(e=>{
		if($('#phone').val() === ""){
			$('#error-msg-phone').show();
			$('#phone').css('border','solid 1px tomato');
		}
		else{
			$('#error-msg-phone').hide();
			$('#phone').css('border','solid 1px lightgray');
			
			const phone = $('#phone').val();
			if(phone.match(/\d{3}-\d{4}-\d{4}|\d{11}/) === null){
				$('#error-msg-phone-pattern').show();
				$('#phone').css('border','solid 1px tomato');
			}else{
				if(phone.length === 11){
					const update = `${phone.substr(0,3)}-${phone.substr(3,4)}-${phone.substr(7,4)}`;
					$('#phone').val(update);
				}
				
			}
		}
	});
	
	$('form').submit(e =>{
		e.preventDefault();
		
		const id = $('#id').val();
		const pw = $('#password').val();
		const email = $('#email').val();
		
		const name = $('#name').val();
		const birth = $('#birth').val();
		const telecom = $('#telecom').val();
		
		const gender = e.target.gender;
		const country = e.target.country;
		
		const phone = $('#phone').val();
		
		const agree = $('#agree').prop('checked');
		
		
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
		if(name === ""){
			$('#error-msg-name').show();
			$('#name').css('border','solid 1px tomato');
			isValid = false;
		}
		if(telecom === null){
			$('#error-msg-telecom').show();
			$('#telecom').css('border','solid 1px tomato');
			isValid = false;
		}
		if(birth === ""){
			$('#error-msg-birth').show();
			$('#birth').css('border','solid 1px tomato');
			isValid = false;
		}
		if(gender === ""){
			$('#radio-container').css('border','solid 1px tomato');
			$('#gender-man-lable').css('border','solid 1px tomato');
			$('#gender-woman-lable').css('border','solid 1px tomato');
			$('#error-msg-gender').show();
			isValid = false;
		}
		if(country === ""){
			isValid = false;
			$('#radio-container').css('border','solid 1px tomato');
			$('#country-local-lable').css('border','solid 1px tomato');
			$('#country-foreigner-lable').css('border','solid 1px tomato');
			$('#error-msg-country').show();
		}
		if(phone === ""){
			$('#error-msg-phone').show();
			$('#phone').css('border','solid 1px tomato');
			isValid = false;
		}
		if(agree === ""){
			$('#agree').css('border','solid 1px tomato');
			$('#error-msg-agree').show();
			isValid = false;
		}
		
		if(isValid === true){
			e.target.submit();
		}
		
	})
})