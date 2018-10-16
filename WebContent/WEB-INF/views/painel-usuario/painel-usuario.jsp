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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
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
        <c:import url="../modals/modal-meus-registros.jsp" />
        <c:import url="../modals/modal-selecione-tipo-fundo.jsp" />

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>CADASTRAR</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Cadastrar Conselho</center>
                            </div>
                            <div class="panel-body">
                                <a href="${path}/painel/conselho/cadastrar"><center><i class="fas fa-landmark" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Cadastre o Conselho e os dados do Fundo.</small></center>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Cadastrar Entidade</center>
                            </div>
                            <div class="panel-body">
                                <a href="${path}/painel/entidade/cadastrar"><center><i class="fas fa-building" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Cadastre a Entidade Executora.</small></center>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Cadastrar Projeto</center>
                            </div>
                            <div class="panel-body">
                                <a href="#" data-toggle="modal" data-target="#selecione-tipo-fundo"><center><i class="fab fa-accusoft" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Cadastre o Projeto.</small></center>
                            </div>
                        </div>
                    </div>

                </div> <!-- /. ROW PANEL  -->

                <hr>
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>VISUALIZAR</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Meus Registros</center>
                            </div>
                            <div class="panel-body">
                                <a href='#' data-toggle="modal" data-target="#meus-registros"><center><i class="far fa-list-alt" style="font-size: 100px;"></i></center></a>
                            </div>
                            <div class="panel-footer">
                                <center><small>Visualize os cadastros realizados.</small></center>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <center>Meus Dados</center>
                            </div>
                            <div class="panel-body">
                                <a href='${path}/painel/meus-dados'><center><i class="fas fa-user-cog" style="font-size: 100px;"></i></center>
                            </div>
                            <div class="panel-footer">
                                <center><small>Acesse as informações cadastradas do Usuário.</small></center></a>
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
