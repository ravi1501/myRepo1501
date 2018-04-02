$(document).ready(function(){

        





    $("#fname").keypress(function(event){
        var inputValue = event.which;
        // allow letters and whitespaces only.
        if(!(inputValue >= 65 && inputValue <= 120) && (inputValue != 32 && inputValue != 0)) { 
            event.preventDefault();
            //alert('Only Aphabets are allowed ') 
        }
        else{


        //  /   alert('Only Aphabets are allowed ')
        }
    });
});


function sbtSignUP()
{
    //alert('its Working')
    var fnm=$("#fname").val();
    var lnm = $("#lname").val();
    var mail=$("#email").val();
    var pss=$("#pass").val();
    var rpss=$("#repass").val();

    if(fnm.trim()=="")
    {
        alert("First Name is left blank")
    }


}