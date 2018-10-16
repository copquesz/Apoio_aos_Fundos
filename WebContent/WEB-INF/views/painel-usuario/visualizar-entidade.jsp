<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plataforma Apoio aos Fundos | Visualizar Entidade</title>
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

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>VISUALIZAR <span class="fas fa-angle-right"></span> ENTIDADE</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info text-justify">                                
                            Nesta etapa iremos solicitar alguns dados necessário para arquivarmos informações sobre a entidade.
                            <br><br>
                            <strong>Observação: </strong>Caso você possua alguma dúvidas, existe ícones como este <i class="fas fa-info-circle"></i> que irão lhe auxiliar no preenchimento do formulário. Para isso, basta você passar o mouse em cima do ícone que você poderá visualizar dicas de como preencher o campo indicado.
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">

                                <form role="form" acceptcharset="UTF-8">

                                    <fieldset style="margin-top: 70px;">
                                    <legend>
                                        DADOS DA ENTIDADE
                                    </legend>
                                        <div class="row">
                                            <div class="col-md-7">
                                                <div class="form-group">
                                                    <label>Razão Social:</label>
                                                    <input type="text" class="form-control" value="${entidade.razaoSocial}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>CNPJ:</label>
                                                    <input type="text" class="form-control" value="${entidade.cnpj}" readonly>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Data de Fundação:</label>
                                                    <input type="date" class="form-control" value="${entidade.dataFundacao}" readonly> 
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">                                                                
                                                    <label>Mandato:</label>
                                                    <input type="date" class="form-control" value="${entidade.dataMandato}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Site:</label>
                                                    <input type="text" class="form-control" value="${entidade.website}" readonly>
                                                </div>
                                            </div>                                                               
                                        </div>

                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>CEP:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.cep}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-5">
                                                <div class="form-group">
                                                    <label>Rua:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.logradouro}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Nº:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.numero}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Complemento:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.complemento}" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Bairro:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.bairro}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Cidade:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.cidade}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Estado:</label>
                                                    <input type="text" class="form-control" value="${entidade.endereco.estado}" readonly>
                                                </div>
                                            </div>
                                        </div>

                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>PRESIDENTE DA ENTIDADE</legend>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Nome:</label>
                                                    <input type="text" class="form-control" value="${entidade.presidente.nome}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>CPF:</label>
                                                    <input type="text" class="form-control" value="${entidade.presidente.cpf}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>E-mail:</label>
                                                    <input type="email" class="form-control" value="${entidade.presidente.email}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="form-group">
                                                    <label>Telefone:</label>
                                                    <input type="text" class="form-control" value="${entidade.presidente.telefone}" readonly>
                                                </div>
                                            </div>
                                        </div> 
                                    </fieldset> 
                                    
                                    <fieldset style="margin-top: 70px;">
                                    <legend>ANEXOS</legend>
                                        <div class="row">
                                            <div class="col-md-6 margin-25">
                                                <center>                                                    
                                                    <a href='${path}/${conselho.documentosEntidade.urlEstatutoSocial}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="estatuto-social"><i class="far fa-bookmark" style="font-size: 78px;"></i><hr>Estatuto Social</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-6 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosEntidade.urlCartaoCnpj}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="cartao-cnpj"><i class="far fa-credit-card" style="font-size: 78px;"></i><hr>Cartão CNPJ</label></a>
                                                </center>
                                            </div>
                                        </div>
                                        <div class="row">                                       
                                            <div class="col-md-6 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosEntidade.urlAtaEleicao}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="ata-eleicao"><i class="fab fa-elementor" style="font-size: 78px;"></i><hr>Ata de Eleição</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-6 margin-25">
                                                <center>
                                                    <a href='${path}/${conselho.documentosEntidade.urlDocumentoPresidente}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="documento-presidente"><i class="far fa-address-card" style="font-size: 78px;"></i><hr>CPF do Presidente:</label></a>
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
