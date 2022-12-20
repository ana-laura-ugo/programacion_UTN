function contarCaracter(obj){
    var longitud = 20;
    var strLength = obj.value.length;
    
    if(strLength > longitud){
        document.getElementById("charNum").innerHTML = '<span style="color: red;">'+strLength+' out of '+longitud+' characters</span>';
    }else{
        document.getElementById("charNum").innerHTML = strLength+' out of '+longitud+' characters';
    }
}