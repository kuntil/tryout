<html>  
<head>  
<title>Jam Digital</title>  
<script type="text/javascript">  
// 1 detik = 1000  
window.setTimeout("waktu()",1000);    
function waktu() {     
var tanggal = new Date();    
setTimeout("waktu()",1000);    
document.getElementById("output").innerHTML = tanggal.getHours()+":"+tanggal.getMinutes()+":"+tanggal.getSeconds();  
}  
</script>  
</head>  
      
<body bgcolor="white" text="black" onload="waktu()">  
<div id="output">  
</div>  
</body>  
</html>  