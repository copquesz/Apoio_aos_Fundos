function limite_q1(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q1').innerHTML = resto;
    } else {
        document.getElementById('q1').value = valor.substr(0,quant);
    }
} 

function limite_q2(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q2').innerHTML = resto;
    } else {
        document.getElementById('q2').value = valor.substr(0,quant);
    }
}  
  function limite_q3(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q3').innerHTML = resto;
    } else {
        document.getElementById('q3').value = valor.substr(0,quant);
    }
}  
  function limite_q4(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q4').innerHTML = resto;
    } else {
        document.getElementById('q4').value = valor.substr(0,quant);
    }
}  
  function limite_q5(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q5').innerHTML = resto;
    } else {
        document.getElementById('q5').value = valor.substr(0,quant);
    }
}  
  function limite_q8(valor) {
    quant = 1500;
    total = valor.length;
    if(total <= quant) {
        resto = quant - total;
        document.getElementById('cont-q8').innerHTML = resto;
    } else {
        document.getElementById('q8').value = valor.substr(0,quant);
    }
}  