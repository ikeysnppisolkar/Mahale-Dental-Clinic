$(document).ready(function(){

$('.submit').click(function(){
   validation();   
});

function validation()
  {
    $("form[name='registration']").validate({
  
    rules:{
      
      full_name:{
        required:true
       
      },
      address:{
        required:true
       
      },
	  city:{
		  
		 required:true 
	  },
	  gender:{
		  
		 required:true 
	  },
	  
	  email:{
		  
		 required:true, 
		  email:true
	  },
	  
	  pwd:{
		  
		 required:true 
	  },
	  
	  cpassword:{
		  
		 required:true 
	  },
    
    },
    
    messages:{
      full_name:{
        required:"Full name  is required."
        
      },
      address:{
        required:"address is required."
        
      },
	   city:{
        required:"city is required."
        
      },
	   gender:{
        required:"gender is required."
        
      },
	   email:{
        required:"email is required."
        
      },
	  password:{
        required: "Please provide a password",
        minlength: "Your password must be at least 5 characters long"
        
      },
	   cpassword:{
        required:"retype passord ."
        
      },
	  
	  
    
    }
  
  });
  }