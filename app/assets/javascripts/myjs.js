//alert('ok')

//alert('Its Working Y



$(document).ready(function(){

   // alert("<%=session[:user_id]%>")


   var queryString =getParameterByName('error')
   //alert(queryString)

   if(queryString=='5')
   {

    $("#AlertMsg").html("<center><div class='alert alert-danger' >Registration Failed. Please Try Again !! </div></center>")
   }
   else{

    $("#AlertMsg").html("");

   }

    
})





function getParameterByName(name, url) {
    if (!url) url = window.location.href;
    name = name.replace(/[\[\]]/g, "\\$&");
    var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
        results = regex.exec(url);
    if (!results) return null;
    if (!results[2]) return '';
    return decodeURIComponent(results[2].replace(/\+/g, " "));
}

