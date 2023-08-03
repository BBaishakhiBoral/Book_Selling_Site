function validLogin(){
    	if (forms.username.value == ""){
        	alert ( "Please enter your username." );
        	forms.username.focus();
        	return false;
        }
    	if (forms.password.value == ""){
        	alert ( "Please enter password." );
        	forms.password.focus();
        	return false;
        	}
    	return true;
    }