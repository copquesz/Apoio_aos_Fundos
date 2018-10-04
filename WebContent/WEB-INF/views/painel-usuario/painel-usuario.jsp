<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plataforma Apoio aos Fundos | Painel</title>
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
                            <small><b>PAINEL DE CONTROLE</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Cadastrar Projeto</center>
                            </div>
                            <div class="panel-body">
                                <a href="${path}/painel/proposta"><center><i class="fas fa-plus-square" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Realize o cadastro do projeto.</small></center>
                            </div>
                        </div>
                    </div>

                     <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Visualizar Projeto</center>
                            </div>
                            <div class="panel-body">
                                <c:if test="${hasProjeto}">
                                    <a href='${path}/painel/propostas'><center><i class="far fa-list-alt" style="font-size: 100px;"></i></center></a>
                                </c:if>
                                <c:if test="${not hasProjeto}">
                                    <a href="#" data-toggle="modal" data-target="#projeto-indisponivel"><center><i class="far fa-list-alt" style="font-size: 100px; color: grey; pointer-events: none; cursor: default;"></i></center></a>
                                </c:if>
                            </div>
                            <div class="panel-footer">
                                <center><small>Visualize o projeto cadastrado.</small></center>
                            </div>
                        </div>
                    </div>

                </div> <!-- /. ROW PANEL  -->

                <div class="row">
                     <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Visualizar Cadastro Institucional</center>
                            </div>
                            <div class="panel-body">
                                <a href='${path}/painel/entidades'><center><i class="fas fa-users" style="font-size: 100px;"></i></center>
                            </div>
                            <div class="panel-footer">
                                <center><small>Acesse as informações cadastradas da Entidade Executora.</small></center></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Visualizar Dados Fundo</center>
                            </div>
                            <div class="panel-body">
                                <a href='${path}/painel/fundos'><center><i class="fas fa-money-check-alt" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Acesse as informações do Fundo escolhido pela Entidade.</small></center>
                            </div>
                        </div>
                    </div>
                    
                </div> <!-- /. ROW PANEL  -->
                                    
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
    <script src="${path}/assets/js/loading-modal.js"></script>
   
   
</body>
</html>
