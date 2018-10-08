<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
        <c:import url="../menu/menu-usuario.jsp" />

        <!-- Import Modal File Validator -->
        <c:import url="../modals/modal-arquivo-aceito.jsp" />
        <c:import url="../modals/modal-arquivo-recusado-all.jsp" />
        <c:import url="../modals/modal-arquivo-recusado-img.jsp" />
        <c:import url="../modals/modal-arquivo-recusado-pdf.jsp" />

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>CADASTRAR <span class="fas fa-angle-right"></span> CONSELHO</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info text-justify">                                
                            Nesta etapa iremos solicitar alguns dados necessário para arquivarmos informações sobre o conselho.
                            <br><br>
                            <strong>Observação: </strong>Caso você possua alguma dúvidas, existe ícones como este <i class="fas fa-info-circle"></i> que irão lhe auxiliar no preenchimento do formulário. Para isso, basta você passar o mouse em cima do ícone que você poderá visualizar dicas de como preencher o campo indicado.
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <form role="form" action="${path}/painel/conselho/cadastrar" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">

                                    <fieldset style="margin-top: 20px;">
                                    <legend>SELECIONE O TIPO DO FUNDO: <span class="input-required">*</span></legend>
                                        <div class="row">
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <select class="form-control" id="tipoFundo" name="tipoFundo">                        
                                                        <c:forEach var="tipoFundo" items="${listaTipoFundo}">
                                                            <option value="${tipoFundo}">${tipoFundo.descricao}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>
                                    </legend>
                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>
                                        DADOS DO CONSELHO
                                    </legend>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>Razão Social: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="razaoSocial" required>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>CNPJ: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" id="cnpj" name="cnpj" onchange="if(!validarCNPJ(this.value)){alert('CNPJ Informado é inválido'); this.value='';}" required>                                     
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>CEP: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" id="cep" name="endereco.cep" required>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Rua: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" id="logradouro" name="endereco.logradouro" required>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Nº:</label>
                                                    <input type="text" class="form-control" name="endereco.numero">                                     
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Complemento:</label>
                                                    <input type="text" class="form-control" name="endereco.complemento">                                     
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Bairro: <span class="input-required">*</span></label>
                                                    <input class="form-control" id="bairro" name="endereco.bairro" required>                              
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Cidade: <span class="input-required">*</span></label>
                                                    <input class="form-control" id="cidade" name="endereco.cidade" required>                            
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Estado: <span class="input-required">*</span></label>
                                                    <select class="form-control" id="estado" name="endereco.estado">
                                                        <option value="">Selecione um Estado</option>
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

                                     <fieldset style="margin-top: 70px;">
                                    <legend>REPRESENTANTES DO FUNDO</legend>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Presidente: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="presidente.nome" required>                                    
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>E-mail: <span class="input-required">*</span></label>
                                                    <input type="email" class="form-control" name="presidente.email" required>                                         
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Telefone: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" id="presidente-telefone" name="presidente.telefone" required>                                     
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Secretário: </label>
                                                    <input type="text" class="form-control" name="secretario.nome">                               
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>E-mail:</label>
                                                    <input type="email" class="form-control" name="secretario.email">                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Telefone: </label>
                                                    <input type="text" class="form-control" id="secretario-telefone" name="secretario.telefone">                            
                                                </div>
                                            </div>
                                        </div> 
                                    </fieldset> 

                                    <fieldset style="margin-top: 70px;">
                                    <legend>DADOS BANCÁRIOS</legend>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Banco: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="contaBancaria.banco" required>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Agência: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="contaBancaria.agencia" required>                               
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Conta: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="contaBancaria.conta" required>                           
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="form-group">
                                                    <label>Dígito: <span class="input-required">*</span></label>
                                                    <input type="text" class="form-control" name="contaBancaria.digito" required>                     
                                                </div>
                                            </div>
                                        </div>  
                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>DOCUMENTOS DO FUNDO</legend>
                                        <div class="row">
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <label for="cartao-cnpj"><i class="far fa-credit-card" style="font-size: 78px;"></i><hr>Cartão CNPJ: <span class="input-required">*</span></label>
                                                    <br><small>Formatos aceitos: <b style="color: red;">pdf, jpg, jpeg, png.</b></small>
                                                    <input type="file" class="form-control" id="cartao-cnpj" name="documentosConselho.cartaoCnpj" required onchange="validaImgPdf(this)">
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <label for="declaracao-bancaria"><i class="fas fa-university" style="font-size: 78px;"></i><hr>Declaração de Dados Bancários: <span class="input-required">*</span></label>
                                                    <br><small>Formatos aceitos: <b style="color: red;">pdf, jpg, jpeg, png, bmp.</b></small>
                                                    <input type="file" class="form-control" id="declaracao-bancaria" name="documentosConselho.declaracaoBancaria" required onchange="validaImgPdf(this)">
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <label for="diagnostico-social"><i class="fas fa-clipboard-list" style="font-size: 78px;"></i><hr>Diagnóstico Social: <span class="input-required">*</span></label>
                                                    <br><small>Formatos aceitos: <b style="color: red;">pdf, jpg, jpeg, png, bmp.</b></small>
                                                    <input type="file" class="form-control" id="diagnostico-social" name="documentosConselho.diagnosticoSocial" required onchange="validaImgPdf(this)">
                                                </center>
                                            </div>
                                        </div>                                                    
                                    </fieldset>

                                    <hr>
                                    <div style="margin-top: 30px;">
                                        <center>
                                            <button type="submit" class="btn btn-primary">Cadastrar</button>
                                            <a href="${path}/plataforma/index" class="btn btn-danger" style="margin-left: 20px;">Voltar</a>
                                        </center>
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                </div> <!-- /. ROW  -->
                    
                <c:import url="../footer/footer.jsp" />

            </div> <!-- /. PAGE INNER  -->
        </div> <!-- /. PAGE WRAPPER  -->
    </div> <!-- /. WRAPPER  -->
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
    <script src="${path}/assets/js/cnpj-validator.js"></script>
    <script src="${path}/assets/js/cpf-validator.js"></script>
    <script src="${path}/assets/js/file-validator.js"></script>

    <!-- Masks -->
    <script type="text/javascript">
        $("#cnpj").mask("99.999.999/9999-99");
        $("#cep").mask("99999-999");
        $('#presidente-telefone').focusout(function(){
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

        $('#secretario-telefone').focusout(function(){
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
