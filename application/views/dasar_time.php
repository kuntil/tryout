<html>  
<head>  
<title>Jam Digital</title>  
<script type="text/javascript">  
var timeLeft = 120;
var elem = document.getElementById('some_div');

var timerId = setInterval(countdown, 1000);

function countdown() {
  if (timeLeft == 2) {
    
  } else {
    document.getElementById("output").innerHTML = timeLeft. + ' seconds remaining';
    timeLeft--;
  }
}
</script>  
</head>  
      
<body bgcolor="white" text="black" onload="countdown()">  
<div id="output">  
</div>  
</body>  
</html>  