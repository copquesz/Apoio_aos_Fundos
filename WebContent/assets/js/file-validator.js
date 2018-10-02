function validaImg($input, id) {
  var extPermitidas = ['jpg',, 'jpeg', 'png', 'bmp'];
  var extArquivo = $input.value.split('.').pop();
  var seletor = $(id);

  if(typeof extPermitidas.find(function(ext){ return extArquivo == ext; }) == 'undefined') {
    $('#arquivo-recusado-img').modal('show');
    $('#' + id).val('');    
  } else {
    $('#arquivo-aceito').modal('show');
  }
}

function validaPdf($input, id) {
  var extPermitidas = ['pdf'];
  var extArquivo = $input.value.split('.').pop();
  var seletor = $(id);

  if(typeof extPermitidas.find(function(ext){ return extArquivo == ext; }) == 'undefined') {    
    $('#arquivo-recusado-pdf').modal('show');    
    $('#' + id).val('');    
  } else {
    $('#arquivo-aceito').modal('show');
  }
}

function validaImgPdf($input, id) {
  var extPermitidas = ['jpg',, 'jpeg', 'png', 'bmp', 'pdf'];
  var extArquivo = $input.value.split('.').pop();
  var seletor = $(id);

  if(typeof extPermitidas.find(function(ext){ return extArquivo == ext; }) == 'undefined') {
    $('#arquivo-recusado-all').modal('show');  
    $('#' + id).val('');    
  } else {
    $('#arquivo-aceito').modal('show');
  }
}