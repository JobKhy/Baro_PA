  function valreg2(){
    var Gas_transN=parseInt(document.getElementById('Gas_trans').value);
    var Gas_comN=parseInt(document.getElementById('Gas_com').value);
    var Gas_telN=parseInt(document.getElementById('Gas_tel').value);
    var Gas_trans="El gasto es demasiado grande, verifique si coloco la cantidad correctamente."
    var Gas_com="El gasto es demasiado grande, verifique si coloco la cantidad correctamente."
    var Gas_tel="El gasto es demasiado grande, verifique si coloco la cantidad correctamente."

    const validacion = {
		Gas_transs:/^\d{1,4}$/,
		Gas_comm:/^\d{1,4}$/
	}
        
   
    if(validacion.Gas_transs.test(Gas_transN)){
			Gas_trans=Gas_transN;
		}
    if(validacion.Gas_comm.test(Gas_comN)){
			Gas_com=Gas_comN;
		}
    if(validacion.Gas_comm.test(Gas_comN)){
			Gas_tel=Gas_telN;
		}
        
    var Gas_tellN=document.getElementsByName('Gas_tel');
          
            for(var i=0;i< Gas_tellN.length;i++){
                if(Gas_tellN[i].checked==true){
                    var Gas_tell=Gas_tellN[i].value;
                }
            }

}  
   function valreg(){
    var newname=document.getElementById('name').value;
    var newgenero=document.getElementsByName('genero');
    var newcorreo=document.getElementById('correo').value;
    var newcontr=document.getElementById('contr').value;
    var newcontrc=document.getElementById('contrc').value;
    var name="Verifica si colocaste tu nombre correctamente"
    var correo="El correo no es valído "
    var contr="La contraseña debe ser de entre 8 y 20 caracteres "
    var flag = true;

    const validacion = {
      nombre:/^[a-zA-ZáéíóúÁÉÍÓÚ]{4,20}$/,
      correo:/^[\da-z]+@[a-z]{5,7}.[.a-z]{2,6}$/,
      contra:/^.{8,20}$/
	  }
     
    if(validacion.nombre.test(newname)){
			name=newname;
		}


    if(validacion.correo.test(newcorreo)){
			correo=newcorreo;
		}
               
    if(validacion.contra.test(newcontr)){    
      if(newcontr===newcontrc){
        contr="La contraseña es valida y conincide";             
        }
      else{
        contr="Las contraseñas colocadas no coinciden"
        flag = false;
      }
      alert(contr)    
    }
            
    for(var i=0;i< newgenero.length;i++){
        if(newgenero[i].checked==true){
            var genero=newgenero[i].value;
        }
    }
                 
}

   function valini(){
    var newcorreo=document.getElementById('user').value;
    var newcontr=document.getElementById('password').value;
    var exito="El correo o la contraseña son incorrectos"
    const validacion = {
                correo:/^[\da-z]+@[a-z]{5,7}.[.a-z]{2,6}$/,
                contra:/^.{8,20}$/
	}
        if(validacion.correo.test(newcorreo)){
		if(validacion.contra.test(newcontr)){
                    
               if(validacion.contra.test(newcontr)){
                        exito="<--------SE HA INICIADO SESIÓN CON EXITÓ-------->"; 
                }   
                }	
		}

}