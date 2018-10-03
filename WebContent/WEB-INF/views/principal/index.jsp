<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plataforma Apoio aos Fundos</title>
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
        <c:import url="../menu/menu-principal.jsp" />

        <div id="page-wrapper" >
            <div id="page-inner">
			    <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>PLATAFORMA APOIO AOS FUNDOS</b></small>
                        </h1>
                    </div>
                </div> <!-- /. ROW  -->
               	<div class="row">
                    <div class="col-md-12">
                        <c:if test="${erroLogin}">
                            <div class="alert alert-danger text-justify">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <h4 class="alert-heading"><b>ERRO:</b></h4>
                                <p>O <b>usuário</b> e/ou <b>senha</b> informados estão incorretos.</p>
                                <p>Tente novamente ou caso necessário entre em contato conosco através do e-mail tecnologia@apoioaosfundos.com.br</p>
                            </div>
                        </c:if>  
                    </div>
                </div> <!-- /. ROW  -->

                <div class="row" style="margin-top: 50px;">
                    <div class="col-md-6 col-sm-12">
                        <div class="panel panel-default" style="border: 1.5px solid rgb(2, 25, 42); min-height: 350px; box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
                            <div class="panel-body">
                                <form role="form" method="get" action="${path}/usuario/cadastro">
                                    <fieldset>
                                    <legend>
                                       REGISTRE-SE
                                    </legend>
                                        <div class="row">
                                            <div class="col-md-12 margin-25">
                                                <div class="form-group">
                                                    <p>Conheça os benefícios que plataforma <b>Apoio aos Fundos</b> oferece clicando no botão abaixo:</p>
                                                </div>  
                                                <div class="form-group">
                                                    <div class="form-group">
		                                                <center><p><button type="submit" class="btn btn-danger">Cadastrar-se</button></p></center>
		                                            </div>
                                                </div>
                                            </div>  
                                        </div>                                                    
                                    </fieldset>                                                                                                    
                                </form>
                            </div>
                            <div class="panel-footer" style="background-color: white; margin-top: 40px;">
                                <center><small><i class="fas fa-exclamation-triangle" style="color: yellow;"></i> Clique <a href="#"><b>aqui</b></a> para ver os Conselhos cadastrados na plataforma.</small></center>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="panel panel-default login-box" style="border: 1.5px solid rgb(2, 25, 42); min-height: 350px; box-shadow: 10px 10px 5px 0px rgba(0,0,0,0.75);">
                            <div class="panel-body">                                            
                                <form method="post" action="${path}/plataforma/login">
                                    <fieldset>
                                    <legend>
                                       ACESSE A PLATAFORMA
                                    </legend>
                                        <div class="col-md-6">
                                            <center><i class="fas fa-user-circle" style="color: rgb(9, 25, 42); font-size: 200px;"></i></center>
                                        </div>
                                        <div class="col-md-6">                                                    
                                            <div class="form-group">
                                                <label>CPF:</label> 
                                                <input type="text" class="form-control" name="cpf" required> 
                                            </div>
                                            <div class="form-group">
                                                <label>Senha:</label> 
                                                <input type="password" class="form-control" name="password" required> 
                                            </div>
                                            <div class="form-group margin-25">
                                                <button type="submit" class="btn btn-success">Entrar</button>
                                            </div>
                                        </div>
                                    </fieldset>
                                </form> 
                            </div>
                            <div class="panel-footer" style="background-color: white;">
                                <center><small><i class="fas fa-check-circle" style="color: green;"></i> Sua Entidade ja possui cadastro? Acesse o painel informando usuário e senha.</small></center>
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
