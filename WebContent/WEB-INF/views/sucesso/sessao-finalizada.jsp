<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plataforma Apoio aos Fundos | Sessão Finalizada</title>
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
        
        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>SESSÃO FINALIZADA</b></small>
                        </h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-success text-justify">
                            <h4 class="alert-heading"><b>Sessão Finalizada</b></h4>
                            <p>Para acessar a plataforma novamente, faça o login informando <b>cpf</b> e <b>senha</b>.</p>
                            <p>Para maiores informações entre em contato com o e-mail: <b>suporte@apoioaosfundos.com.br</b></p>
                            <div style="margin-top: 50px;">
                                <center>
                                    <a href="${path}/index" class="btn btn-warning"><i class="fas fa-home"></i> Home</a>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
                    
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
