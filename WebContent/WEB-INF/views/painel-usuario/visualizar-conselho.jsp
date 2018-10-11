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

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>VISUALIZAR <span class="fas fa-angle-right"></span> CONSELHO</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <form role="form" acceptcharset="UTF-8">

                                    <fieldset style="margin-top: 70px;">
                                    <legend>
                                        DADOS DO CONSELHO
                                    </legend>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>Razão Social:</label>
                                                    <input type="text" class="form-control" value="${conselho.razaoSocial}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>CNPJ:</label>
                                                    <input type="text" class="form-control" value="${conselho.cnpj}" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>CEP:</label>
                                                    <input type="text" class="form-control" value="${conselho.endereco.cep}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Rua:</label>
                                                    <input type="text" class="form-control" value="${conselho.endereco.logradouro}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Nº:</label>
                                                    <input type="text" class="form-control" value="${conselho.endereco.numero}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Complemento:</label>
                                                    <input type="text" class="form-control" value="${conselho.endereco.complemento}" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Bairro:</label>
                                                    <input class="form-control" value="${conselho.endereco.bairro}" readonly>                              
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Cidade:</label>
                                                    <input class="form-control" value="${conselho.endereco.cidade}" readonly>                            
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Estado:</label>
                                                    <input class="form-control" value="${conselho.endereco.estado}" readonly>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>

                                     <fieldset style="margin-top: 70px;">
                                    <legend>REPRESENTANTES DO FUNDO</legend>
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Presidente:</label>
                                                    <input type="text" class="form-control" value="${conselho.presidente.nome}" readonly>                                    
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>E-mail:</label>
                                                    <input type="email" class="form-control" value="${conselho.presidente.email}" readonly>                                         
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Telefone:</label>
                                                    <input type="text" class="form-control" value="${conselho.presidente.telefone}" readonly>                                     
                                                </div>
                                            </div>
                                        </div>  
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Secretário: </label>
                                                    <input type="text" class="form-control" value="${conselho.secretario.nome}" readonly>                               
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>E-mail:</label>
                                                    <input type="email" class="form-control" value="${conselho.secretario.email}" readonly>                                    
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Telefone: </label>
                                                    <input type="text" class="form-control" value="${conselho.secretario.telefone}" readonly>                            
                                                </div>
                                            </div>
                                        </div> 
                                    </fieldset> 

                                    <fieldset style="margin-top: 70px;">
                                    <legend>DADOS BANCÁRIOS</legend>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Banco:</label>
                                                    <input type="text" class="form-control" value="${conselho.contaBancaria.banco}" readonly>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Agência:</label>
                                                    <input type="text" class="form-control" value="${conselho.contaBancaria.agencia}" readonly>                               
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Conta:</label>
                                                    <input type="text" class="form-control" value="${conselho.contaBancaria.conta}" readonly>                           
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="form-group">
                                                    <label>Dígito:</label>
                                                    <input type="text" class="form-control" value="${conselho.contaBancaria.digito}" readonly>                     
                                                </div>
                                            </div>
                                        </div>  
                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>DOCUMENTOS DO FUNDO</legend>
                                        <div class="row">
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosConselho.urlCartaoCnpj}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="cartao-cnpj"><i class="far fa-credit-card" style="font-size: 78px;"></i><hr>Cartão CNPJ</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosConselho.urlDeclaracaoBancaria}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="declaracao-bancaria"><i class="fas fa-university" style="font-size: 78px;"></i><hr>Declaração Bancária</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosConselho.urlDiagnosticoSocial}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="diagnostico-social"><i class="fas fa-clipboard-list" style="font-size: 78px;"></i><hr>CDiagnóstico Social</label></a>
                                                </center>
                                            </div>
                                        </div>                                                    
                                    </fieldset>

                                    <hr>
                                    <div style="margin-top: 30px;">
                                        <center>
                                            <a href="${path}/painel" class="btn btn-danger" style="margin-left: 20px;">Voltar</a>
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
   
</body>
</html>
