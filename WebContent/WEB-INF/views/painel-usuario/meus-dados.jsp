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
        <c:import url="../menu/menu-usuario.jsp" />

        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
    			<div class="row">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="panel panel-default">
                                    <div class="panel-body">
                                        <form role="form" method="get" action="${path}/painel/meus-dados/editar" acceptcharset="UTF-8">
                                            <fieldset style="margin-top: 70px;">
                                            <legend>DADOS PESSOAIS</legend>
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Nome:</label>
                                                            <input type="text" class="form-control" value="${usuario.nome}" placeholder="Não Informado" readonly>                                     
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Sobrenome:</label>
                                                            <input type="text" class="form-control" value="${usuario.sobrenome}" placeholder="Não Informado" readonly>                                     
                                                        </div>
                                                    </div>   
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>CPF:</label>
                                                            <input type="text" class="form-control" value="${usuario.cpf}" placeholder="Não Informado" readonly>                            
                                                        </div>
                                                    </div>                                         
                                                </div>                                       
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>E-mail:</label>
                                                            <input type="email" class="form-control" value="${usuario.email}" placeholder="Não Informado" readonly>                                     
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Telefone Fixo:</label>
                                                            <input type="text" class="form-control" value="${usuario.telefoneResidencial}" placeholder="Não Informado" readonly>                              
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Telefone Celular:</label>
                                                            <input type="text" class="form-control" value="${usuario.telefoneCelular}" placeholder="Não Informado" readonly>                            
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
                                                            <input type="text" class="form-control" value="${usuario.endereco.cep}" placeholder="Não Informado" readonly>                                    
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-7">
                                                        <div class="form-group">
                                                            <label>Logradouro:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.logradouro}" placeholder="Não Informado" readonly>                                         
                                                        </div>
                                                    </div>
                                                    <div class="col-md-2">
                                                        <div class="form-group">
                                                            <label>Nº:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.numero}" placeholder="Não Informado" readonly>                                     
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Complemento:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.complemento}" placeholder="Não Informado" readonly>                                     
                                                        </div>
                                                    </div>
                                                </div>  
                                                <div class="row">
                                                    <div class="col-md-5">
                                                        <div class="form-group">
                                                            <label>Bairro:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.bairro}" placeholder="Não Informado" readonly>                               
                                                        </div>
                                                    </div>
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <label>Cidade:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.cidade}" placeholder="Não Informado" readonly>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label>Estado:</label>
                                                            <input type="text" class="form-control" value="${usuario.endereco.estado}" placeholder="Não Informado" readonly>
                                                        </div>
                                                    </div>
                                                </div> 
                                            </fieldset> 

                                            <div style="margin-top: 50px;">
                                                <center>
                                                    <button type="submit" class="btn btn-primary">Editar</button>
                                                    <a href="${path}/painel" class="btn btn-danger" style="margin-left: 20px;">Voltar</a>
                                                </center>
                                            </div>
                                        </form>                                         
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
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
    <script src="${path}/assets/js/jquery.maskedinput.js"></script>
    <script src="${path}/assets/js/jquery.maskMoney.js"></script>
    <script src="${path}/assets/js/custom-scripts.js"></script>
    <script src="${path}/assets/js/via-cep.js"></script>
    <script src="${path}/assets/js/cnpj-validator.js"></script>
    <script src="${path}/assets/js/cpf-validator.js"></script>
    <script src="${path}/assets/js/loading-modal.js"></script>

    <script type="text/javascript">
        $("#projectValue").maskMoney({showSymbol: true, symbol:'R$ ', thousands:'.', decimal:','});
        $("#requestValue").maskMoney({showSymbol: true, symbol:'R$ ', thousands:'.', decimal:','});
    </script>
   
</body>
</html>
