$(document).ready(function(){
	//for firstname
	$(":input:not('#fname,#submit')").focusin(function(){
		var firstname =$("#fname").val();
		var letters = /^[0-9]+$/;  
		if(firstname==""){
		$("#fname").css("border-color", "red");
		$("p[id=name_error]").addClass('red_error');
		$("p[id=name_error]").text("Enter your name");
		return false;
	   }
	    else if(firstname.match(letters)){
		  $("#fname").css("border-color", "red");
		  $("p[id=name_error]").addClass('red_error');
		  $("p[id=name_error]").text("Please enter text field");
		  return false;
	   }else{
		   $("#fname").css("border-color", "#ccc");
			$("p[id=name_error]").removeClass('red_error');
			$("p[id=name_error]").text(" ");
			return true;
	   }
		
	});
	//for emailadd
	$(":input:not('#emailadd,#fname,#submit')").focusin(function(){
		var emailadd =$("#emailadd").val();
		var validEmail = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		
		if(emailadd==""){
		$("#emailadd").css("border-color", "red");
		$("p[id=email_error]").addClass('red_error');
		$("p[id=email_error]").text("Please enter your email address");
		return false;
		}else if(validEmail.test(emailadd)== false){
			$("#emailadd").css("border-color", "red");
			$("p[id=email_error]").addClass('red_error');
			$("p[id=email_error]").text("Please enter valid email address");
			return false;				
		}else{
			$(this).css("border-color", "#ccc");
			$("p[id=email_error]").text(" ");
			$("p[id=email_error]").removeClass('red_error');
			return true;
		}
	});
	//for phone number
	$(":input:not('#emailadd,#fname,#phoneno,#submit')").focusin(function(){
		var phoneno =$("#phoneno").val();
		if(phoneno==""){
		$("#phoneno").css("border-color", "red");
		$("p[id=mobno_error]").addClass('red_error');
		$("p[id=mobno_error]").text("Please enter your mob no.");
		return false;	
		}
		 else if(!/^[0-9]+$/.test(phoneno)){
			$("#phoneno").css("border-color", "red");
			$("p[id=mobno_error]").addClass('red_error');
			$("p[id=mobno_error]").text("Please enter only numbers");
			return false;
	     }
		 else if(phoneno.length!=10){
			$("#phoneno").css("border-color", "red");
			$("p[id=mobno_error]").addClass('red_error');
			$("p[id=mobno_error]").text("Please enter valid 10 digit mob no");
			return false;
		}else{
			$("#phoneno").css("border-color", "#ccc");
			$("p[id=mobno_error]").text(" ");
			$("p[id=mobno_error]").removeClass('red_error');
			return true;
		}
			
	});
	//keyup function for all input for remove error box while user enter in input
	$("#fname").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=name_error]").removeClass('red_error');
		$("p[id=name_error]").text(" ");
	});
	$("#emailadd").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=email_error]").text(" ");
		$("p[id=email_error]").removeClass('red_error');
	});
	$("#phoneno").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=mobno_error]").text(" ");
		$("p[id=mobno_error]").removeClass('red_error');
	});
	$("#message").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=msg_error]").text(" ");
		$("p[id=msg_error]").removeClass('red_error');
	});
});

/* onsubmit */
function validate(){
	var firstname =  document.getElementById("fname").value;
	var emailadd  =  document.getElementById("emailadd").value;
	var phoneno   =  document.getElementById("phoneno").value;
	var message   =  document.getElementById("message").value;
	var letters   =   /^[0-9]+$/; 
	var validEmail =  /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	
	//focusin and focusout color for each input
	$(":input:not('#submit')").focusin(function(){
		$(this).css("border-color", "#66afe9");
		});
	$(":input:not('#submit')").focusout(function(){
		$(this).css("border-color", "#css");
	});
	
	//keyup function for each input for remove error box while user enter in input
	$("#fname").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=name_error]").removeClass('red_error');
		$("p[id=name_error]").text(" ");
	});
	$("#emailadd").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=email_error]").text(" ");
		$("p[id=email_error]").removeClass('red_error');
	});
	$("#phoneno").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=mobno_error]").text(" ");
		$("p[id=mobno_error]").removeClass('red_error');
	});
	$("#message").keyup(function(){
		$(this).css("border-color", "#ccc");
		$("p[id=msg_error]").text(" ");
		$("p[id=msg_error]").removeClass('red_error');
	});
	
	//if condition start
	if(firstname==""){
		$("#fname").css("border-color", "red");
		$("p[id=name_error]").addClass('red_error');
		$("p[id=name_error]").text("Enter your name");
		return false;
	}
	 else if(firstname.match(letters)){
		  $("#fname").css("border-color", "red");
		  $("p[id=name_error]").addClass('red_error');
		   $("p[id=name_error]").text("Please enter text field");
		   return false;
	}
	 else if(emailadd==""){
		$("#emailadd").css("border-color", "red");
		$("p[id=email_error]").addClass('red_error');
		$("p[id=email_error]").text("Please enter your email id");
		return false;
	}else if(validEmail.test(emailadd)== false){
		$("#emailadd").css("border-color", "red");
		$("p[id=email_error]").addClass('red_error');
		$("p[id=email_error]").text("Please enter valid email");
		return false;				
	}
	 else if(phoneno==""){
		$("#phoneno").css("border-color", "red");
		$("p[id=mobno_error]").addClass('red_error');
		$("p[id=mobno_error]").text("Please enter your mob no.");
		return false;	
	}
	else if(!letters.test(phoneno)){
		$("#phoneno").css("border-color", "red");
		$("p[id=mobno_error]").addClass('red_error');
		$("p[id=mobno_error]").text("Please enter only numbers");
		return false;
	}
	 else if(phoneno.length!=10){
		$("#phoneno").css("border-color", "red");
		$("p[id=mobno_error]").addClass('red_error');
		$("p[id=mobno_error]").text("Please enter valid 10 digit mob no");
		return false;
	}
	 else if(message==""){
		$("#message").css("border-color", "red");
		$("p[id=msg_error]").addClass('red_error');
		$("p[id=msg_error]").text("Please enter your message");
		return false;
	}
	 else{
		return true;
	}
}




