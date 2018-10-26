<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Apoio aos Fundos - Fundação Telefônica Vivo</title>
    <link rel="shortcut icon" href="${path}/assets/img/apoio-aos-fundos-favicon.png" type="image/x-icon">
    <!-- Bootstrap Styles-->
    <link href="${path}/assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FontAwesome Styles-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.1.0/css/all.css" integrity="sha384-lKuwvrZot6UHsBSfcMvOkWwlCMgc0TaWr+30HWe3a4ltaBwTZhyTEggF5tJv8tbt" crossorigin="anonymous">
    <!-- Custom Styles-->
    <link href="${path}/assets/css/custom-styles.css" rel="stylesheet" />
    <link href="${path}/assets/css/style.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">

        <!-- Import Menu -->
        <c:import url="/WEB-INF/views/menu/menu-usuario.jsp" />

        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">

                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>MEUS DADOS <span class="fas fa-angle-right"></span> EDITAR</b></small>
                        </h1>
                    </div>
                </div>
    			
                <div class="row">
                    <div class="col-md-12 col-sm-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form role="form" method="post" action="${path}/painel/meus-dados/editar" acceptcharset="UTF-8">
                                    <fieldset style="margin-top: 70px;">
                                    <legend>DADOS PESSOAIS</legend>

                                    <!-- Dados do Usuario -->
                                    <input type="hidden" name="id" value="${usuario.id}">
                                    <input type="hidden" name="tipoUsuario" value="${usuario.tipoUsuario}">
                                    <input type="hidden" name="senha" value="${usuario.senha}">
                                    <input type="hidden" name="dataCadastro" value="${usuario.dataCadastro}">
                                    <input type="hidden" name="ultimoAcesso" value="${usuario.ultimoAcesso}">

                                    <!-- Dados do Endereço -->
                                    <input type="hidden" name="endereco.id" value="${usuario.endereco.id}">
                                    
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Nome:</label>
                                                    <input type="text" class="form-control" name="nome" value="${usuario.nome}" placeholder="Não Informado">                                     
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Sobrenome:</label>
                                                    <input type="text" class="form-control" name="sobrenome" value="${usuario.sobrenome}" placeholder="Não Informado">                                     
                                                </div>
                                            </div>   
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>CPF:</label>
                                                    <input type="text" class="form-control" name="cpf" id="cpf" value="${usuario.cpf}" placeholder="Não Informado">                            
                                                </div>
                                            </div>                                         
                                        </div>                                       
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>E-mail:</label>
                                                    <input type="email" class="form-control" name="email" value="${usuario.email}" placeholder="Não Informado">                                     
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Telefone Fixo:</label>
                                                    <input type="text" class="form-control" name="telefoneResidencial" id="telefoneResidencial" value="${usuario.telefoneResidencial}" placeholder="Não Informado">                              
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Telefone Celular:</label>
                                                    <input type="text" class="form-control" name="telefoneCelular" id="telefoneCelular" value="${usuario.telefoneCelular}" placeholder="Não Informado">                            
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>ENDEREÇO</legend>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>CEP:</label>
                                                    <input type="text" class="form-control" name="endereco.cep" id="cep" value="${usuario.endereco.cep}" placeholder="Não Informado">                                    
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>Logradouro:</label>
                                                    <input type="text" class="form-control" name="endereco.logradouro" id="logradouro" value="${usuario.endereco.logradouro}" placeholder="Não Informado">                                         
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Nº:</label>
                                                    <input type="text" class="form-control" name="endereco.numero" id="numero" value="${usuario.endereco.numero}" placeholder="Não Informado">                                     
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Complemento:</label>
                                                    <input type="text" class="form-control" name="endereco.complemento" value="${usuario.endereco.complemento}" placeholder="Não Informado">                                     
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Bairro:</label>
                                                    <input type="text" class="form-control" name="endereco.bairro" id="bairro" value="${usuario.endereco.bairro}" placeholder="Não Informado">                               
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Cidade:</label>
                                                    <input type="text" class="form-control" name="endereco.cidade" id="cidade" value="${usuario.endereco.cidade}" placeholder="Não Informado">
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Estado:</label>
                                                    <select class="form-control" id="estado" name="endereco.estado">
                                                        <option value="${usuario.endereco.estado}">${usuario.endereco.estado}</option>
                                                        <option value="Acre">Acre</option>
                                                        <option value="Alagoas">Alagoas</option>
                                                        <option value="Amapá">Amapá</option>
                                                        <option value="Amazonas">Amazonas</option>
                                                        <option value="Bahia">Bahia</option>
                                                        <option value="Ceará">Ceará</option>
                                                        <option value="Distrito Federal">Distrito Federal</option>
                                                        <option value="Espírito Santo">Espírito Santo</option>
                                                        <option value="Goiás">Goiás</option>
                                                        <option value="Maranhão">Maranhão</option>
                                                        <option value="Mato Grosso">Mato Grosso</option>
                                                        <option value="Mato Grosso do Sul">Mato Grosso do Sul</option>
                                                        <option value="Minas Gerais">Minas Gerais</option>
                                                        <option value="Pará">Pará</option>
                                                        <option value="Paraíba">Paraíba</option>
                                                        <option value="Paraná">Paraná</option>
                                                        <option value="Pernambuco">Pernambuco</option>
                                                        <option value="Piauí">Piauí</option>
                                                        <option value="Rio de Janeiro">Rio de Janeiro</option>
                                                        <option value="Rio Grane do Norte">Rio Grande do Norte</option>
                                                        <option value="Rio Grande do Sul">Rio Grande do Sul</option>
                                                        <option value="Rondônia">Rondônia</option>
                                                        <option value="Roraima">Roraima</option>
                                                        <option value="Santa Catarina">Santa Catarina</option>
                                                        <option value="São Paulo">São Paulo</option>
                                                        <option value="Sergipe">Sergipe</option>
                                                        <option value="Tocantins">Tocantins</option>
                                                    </select>                                                                
                                                </div>
                                            </div>
                                        </div> 
                                    </fieldset> 

                                    <div style="margin-top: 50px;">
                                        <center>
                                            <button type="submit" class="btn btn-primary">Salvar</button>
                                            <a href="${path}/painel" class="btn btn-danger" style="margin-left: 20px;">Voltar</a>
                                        </center>
                                    </div>
                                </form>                                         
                            </div>
                        </div>
                    </div><!-- /. COL-12  -->           
                </div><!-- /. ROW  -->           
            </div><!-- /. PAGE INNER  -->
        </div> <!-- /. PAGE WRAPPER  -->
     <!-- /. WRAPPER  -->
 <!-- JS Scripts-->
    <!-- jQuery Js -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
      <!-- Bootstrap Js -->
    <script src="${path}/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="${path}/assets/js/jquery.metisMenu.js"></script>
      <!-- Custom Js -->
    <script src="${path}/assets/js/custom-scripts.js"></script>

    <script src="${path}/assets/js/jquery.maskedinput.js"></script>
    <script src="${path}/assets/js/jquery.maskMoney.js"></script>
    <script src="${path}/assets/js/via-cep.js"></script>
    <script src="${path}/assets/js/cpf-validator.js"></script>
    <!-- Mask -->
    <script type="text/javascript">
        $("#cpf").mask("999.999.999-99");
        $("#cep").mask("99999-999");
        $('#telefoneResidencial').focusout(function(){
            var phone, element;
            element = $(this);
            element.unmask();
            phone = element.val().replace(/\D/g, '');
            if(phone.length > 10) {
                element.mask("(99) 99999-999?9");
            } else {
                element.mask("(99) 9999-9999?9");
            }
        }).trigger('focusout');

        $('#telefoneCelular').focusout(function(){
            var phone, element;
            element = $(this);
            element.unmask();
            phone = element.val().replace(/\D/g, '');
            if(phone.length > 10) {
                element.mask("(99) 99999-999?9");
            } else {
                element.mask("(99) 9999-9999?9");
            }
        }).trigger('focusout');
    </script> 
    <script type="text/javascript">
        $(document).ready(function() {

            function limpa_formulário_cep() {
                // Limpa valores do formulário de cep.
                $("#logradouro").val("");
                $("#bairro").val("");
                $("#cidade").val("");
                $("#estado").val("");
            }
            
            //Quando o campo cep perde o foco.
            $("#cep").blur(function() {

                //Nova variável "cep" somente com dígitos.
                var cep = $(this).val().replace(/\D/g, '');

                //Verifica se campo cep possui valor informado.
                if (cep != "") {

                    //Expressão regular para validar o CEP.
                    var validacep = /^[0-9]{8}$/;

                    //Valida o formato do CEP.
                    if(validacep.test(cep)) {

                        //Preenche os campos com "..." enquanto consulta webservice.
                        $("#logradouro").val("...");
                        $("#bairro").val("...");
                        $("#cidade").val("...");
                        $("#estado").val("...");

                        //Consulta o webservice viacep.com.br/
                        $.getJSON("https://viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {

                            if (!("erro" in dados)) {
                                //Atualiza os campos com os valores da consulta.
                                $("#logradouro").val(dados.logradouro);
                                $("#bairro").val(dados.bairro);
                                $("#cidade").val(dados.localidade);
                                switch(dados.uf) {
                                    case 'AC':
                                        $("#estado").val('Acre');
                                    case 'AL':
                                        $("#estado").val('Alagoas');    
                                    case 'AP':
                                        $("#estado").val('Amapá');
                                        break;
                                    case 'AM':
                                        $("#estado").val('Amazonas');
                                        break;
                                    case 'BA':
                                        $("#estado").val('Bahia');
                                        break;
                                    case 'CE':
                                        $("#estado").val('Ceará');
                                        break;
                                    case 'DF':
                                        $("#estado").val('Distrito Federal');
                                        break;
                                    case 'ES':
                                        $("#estado").val('Espírito Santo');
                                        break;
                                    case 'GO':
                                        $("#estado").val('Goiás');
                                        break;
                                    case 'MA':
                                        $("#estado").val('Maranhão');
                                        break;
                                    case 'MT':
                                        $("#estado").val('Mato Grosso');
                                        break;
                                    case 'MS':
                                        $("#estado").val('Mato Grosso do Sul');
                                        break;
                                    case 'MG':
                                        $("#estado").val('Minas Gerais');
                                        break;
                                    case 'PA':
                                        $("#estado").val('Pará');
                                        break;
                                    case 'PB':
                                        $("#estado").val('Paraíba');
                                        break;
                                    case 'PR':
                                        $("#estado").val('Paraná');
                                        break;
                                    case 'PE':
                                        $("#estado").val('Pernambuco');
                                        break;
                                    case 'PI':
                                        $("#estado").val('Piauí');
                                        break;
                                    case 'RJ':
                                        $("#estado").val('Rio de Janeiro');
                                        break;
                                    case 'RN':
                                        $("#estado").val('Rio Grande do Norte');
                                        break;
                                    case 'RS':
                                        $("#estado").val('Rio Grande do Sul');
                                        break;
                                    case 'RO':
                                        $("#estado").val('Rondônia');
                                        break;
                                    case 'RR':
                                        $("#estado").val('Roraima');
                                        break;
                                    case 'SC':
                                        $("#estado").val('Santa Catarina');
                                        break;
                                    case 'SP':
                                        $("#estado").val('São Paulo');
                                        break;
                                    case 'SE':
                                        $("#estado").val('Sergipe');
                                        break;
                                    case 'TO':
                                        $("#estado").val('Tocantins');
                                        break;                                    
                                    default:
                                        'Não Informado'
                                }
                            } //end if.
                            else {
                                //CEP pesquisado não foi encontrado.
                                limpa_formulário_cep();
                                alert("CEP não encontrado.");
                            }
                        });
                    } //end if.
                    else {
                        //cep é inválido.
                        limpa_formulário_cep();
                        alert("Formato de CEP inválido.");
                    }
                } //end if.
                else {
                    //cep sem valor, limpa formulário.
                    limpa_formulário_cep();
                }
            });
        });
    </script>
    
   
</body>
</html>
