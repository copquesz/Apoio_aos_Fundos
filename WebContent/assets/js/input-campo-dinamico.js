$(document).ready(function() {
  var max_fields = 3; //maximum input boxes allowed
  var wrapper = $(".input_dynamic"); //Fields wrapper
  var add_button = $(".add_input_dynamic"); //Add button ID

  var x = 1; //initlal text box count
  $(add_button).click(function(e) { //on add input button click
    e.preventDefault();
    var length = wrapper.find("select").length;
    console.log(x);

    if (x < max_fields) { //max input box allowed
      
      $(wrapper).append('<div class="table-responsive"><table class="table"><tbody><tr><td><textarea class="form-control" rows="4" name="questionary.indicator['+x+'].goal" placeholder="Meta"></textarea></td><td><textarea class="form-control" rows="4" name="questionary.indicator['+x+'].indicator" placeholder="Indicador"></textarea></td><td><textarea class="form-control" rows="4" name="questionary.indicator['+x+'].meansOfVerification" placeholder="Meio de Verificação"></textarea></td><td><select class="form-control" name="questionary.indicator['+x+'].periodOfVerification"><option value="Quinzenal">Quinzenal</option><option value="Mensal">Mensal</option><option value="Semestral">Semestral</option><option value="Anual">Anual</option></select></td><td></tbody></table></div>'); //add input box
      x++; //text box increment
    }
    
  });       

});