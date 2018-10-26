<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Apoio aos Fundos | Visualizar Projeto</title>
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
        <c:import url="/WEB-INF/views/menu/menu-usuario.jsp" />       

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>VISUALIZAR <span class="fas fa-angle-right"></span> PROJETO</b></small>
                        </h1>
                    </div>
                </div>

                
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <form acceptcharset="UTF-8">

                                    <fieldset style="margin-top: 20px;">
                                    <legend>ENTIDADE EXECUTORA:</legend>
                                        <div class="row">
                                            <div class="col-md-8">
                                                <div class="form-group">
                                                    <label>Nome do Projeto:</label>
                                                    <input type="text" class="form-control" value="${projeto.entidade.razaoSocial}" readonly>
                                                </div>
                                            </div>
                                        </div>
                                    </legend>
                                    </fieldset>

                                    <fieldset style="margin-top: 70px;">
                                    <legend>
                                        DADOS DA PROPOSTA
                                    </legend>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <div class="form-group">
                                                    <label>Nome do Projeto:</label>
                                                    <input type="text" class="form-control" value="${projeto.nomeProjeto}" readonly>
                                                </div>
                                            </div>      
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Valor do Projeto:</label>
                                                    <input type="text" class="form-control" value="${projeto.valorProjeto}" readonly>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="form-group">
                                                    <label>Valor Solicitado:</label>
                                                    <input type="text" class="form-control" value="${projeto.valorSolicitado}" readonly>
                                                </div>
                                            </div>                                                  
                                        </div>
                                        <div class="row">                                                        
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Qtd. Beneficiários Direto:</label>
                                                    <input type="text" class="form-control" value="${projeto.beneficiariosDireto}" readonly>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Qtd. Beneficiários Indireto:</label>
                                                    <input type="text" class="form-control" value="${projeto.beneficiariosIndireto}" readonly>                                     
                                                </div>
                                            </div>
                                            <div class="col-md-4">
                                                <div class="form-group">
                                                    <label>Qtd. Profissionais Envolvidos:</label>
                                                    <input type="text" class="form-control" value="${projeto.beneficiariosIndireto}" readonly>                                     
                                                </div>
                                            </div>
                                        </div>
                                        <hr>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>Violação de direito priorizada: </label>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <c:if test="${empty projeto.multiplaEscolha.violacao}">
                                                                <div class="row">
                                                                  <div class="col-md-12">
                                                                      <div class="alert alert-danger text-justify">
                                                                        <p>Não há registro(s).</p>
                                                                      </div>
                                                                  </div>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty projeto.multiplaEscolha.violacao}">
                                                                <c:forEach var="violacao" items="${projeto.multiplaEscolha.violacao}">
                                                                    <div class="checkbox">
                                                                        <label>
                                                                            <input type="checkbox" checked disabled>${violacao}
                                                                        </label>
                                                                    </div>
                                                                </c:forEach> 
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>O projeto prevê que os beneficiários tenham acesso à: </label>
                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <c:if test="${empty projeto.multiplaEscolha.beneficio}">
                                                                <div class="row">
                                                                  <div class="col-md-12">
                                                                      <div class="alert alert-danger text-justify">
                                                                        <p>Não há registro(s).</p>
                                                                      </div>
                                                                  </div>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty projeto.multiplaEscolha.beneficio}">
                                                                <c:forEach var="beneficio" items="${projeto.multiplaEscolha.beneficio}">
                                                                    <div class="checkbox">
                                                                        <label>
                                                                            <input type="checkbox" checked disabled>${beneficio}
                                                                        </label>
                                                                    </div>
                                                                </c:forEach> 
                                                            </c:if>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">                                                                
                                                    <label>1) Apresente o contexto social onde o projeto será executado:</label>
                                                    <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.contextoSocial}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>2) Justifique a proposta:</label>
                                                    <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.justificativa}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>3) Objetivo geral:</label>
                                                    <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.objetivoGeral}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>4) Objetivos específicos:</label>
                                                    <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.objetivoEspecifico}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>5) Resultados esperados:</label>
                                                    <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.resultadosEsperados}</textarea>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>6) Metas e Indicadores:</label>
                                                    <div class="table-responsive">
                                                        <table class="table">
                                                            <tbody>
                                                                <c:if test="${empty projeto.metasIndicadores}">
                                                                    <div class="row">
                                                                      <div class="col-md-12">
                                                                          <div class="alert alert-danger text-justify">
                                                                            <p>Não há registro(s).</p>
                                                                          </div>
                                                                      </div>
                                                                    </div>
                                                                </c:if>
                                                                <c:if test="${not empty projeto.metasIndicadores}">
                                                                    <c:forEach var="metasIndicadores" items="${projeto.metasIndicadores}">
                                                                       <tr>
                                                                            <c:if test="${metasIndicadores.meta != ','}">
                                                                                <td>
                                                                                    <label>Meta:</label>
                                                                                    <textarea class="form-control" rows="4" placeholder="Não Informado" readonly>${metasIndicadores.meta}</textarea>
                                                                                </td>
                                                                            </c:if>
                                                                            <c:if test="${metasIndicadores.indicador != ','}">
                                                                                <td>
                                                                                    <label>Indicador:</label>
                                                                                    <textarea class="form-control" rows="4" placeholder="Não Informado" readonly>${metasIndicadores.indicador}</textarea>
                                                                                </td>
                                                                            </c:if>
                                                                            <c:if test="${metasIndicadores.meioVerificacao != ','}">
                                                                                <td>
                                                                                    <label>Meio de Verificação:</label>
                                                                                    <textarea class="form-control" rows="4" placeholder="Não Informado" readonly>${metasIndicadores.meioVerificacao}</textarea>
                                                                                </td>
                                                                            </c:if>
                                                                            <c:if test="${metasIndicadores.periodicidade != ','}">
                                                                                <td>
                                                                                    <label>Periodicidade:</label>
                                                                                    <textarea class="form-control" rows="4" placeholder="Não Informado" readonly>${metasIndicadores.periodicidade}</textarea>
                                                                                </td>
                                                                            </c:if>
                                                                        </tr>
                                                                    </c:forEach>  
                                                                </c:if>                               
                                                            </tbody>
                                                        </table>                                                        
                                                    </div>         
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">                                                    
                                                    <label>7) Estratégias de comunicação/visibilidade:</label>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                        <hr>
                                                        <b>ORGANIZAÇÃO SOCIAL</b>
                                                            <c:if test="${empty projeto.multiplaEscolha.estrategiaEntidade}">
                                                                <div class="row">
                                                                  <div class="col-md-12">
                                                                      <div class="alert alert-danger text-justify">
                                                                        <p>Não há registro(s).</p>
                                                                      </div>
                                                                  </div>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty projeto.multiplaEscolha.estrategiaEntidade}">
                                                                <c:forEach var="estrategiaEntidade" items="${projeto.multiplaEscolha.estrategiaEntidade}">
                                                                    <div class="checkbox">
                                                                        <label>
                                                                            <input type="checkbox" checked disabled>${estrategiaEntidade}
                                                                        </label>
                                                                    </div>
                                                                </c:forEach> 
                                                            </c:if>                                                         
                                                        </div>
                                                        <div class="col-md-6">
                                                        <hr>
                                                        <b>CONSELHO DOS DIREITOS</b> 
                                                            <c:if test="${empty projeto.multiplaEscolha.estrategiaConselho}">
                                                                <div class="row">
                                                                  <div class="col-md-12">
                                                                      <div class="alert alert-danger text-justify">
                                                                        <p>Não há registro(s).</p>
                                                                      </div>
                                                                  </div>
                                                                </div>
                                                            </c:if>
                                                            <c:if test="${not empty projeto.multiplaEscolha.estrategiaConselho}">
                                                                <c:forEach var="estrategiaConselho" items="${projeto.multiplaEscolha.estrategiaConselho}">
                                                                    <div class="checkbox">
                                                                        <label>
                                                                            <input type="checkbox" checked disabled>${estrategiaConselho}
                                                                        </label>
                                                                    </div>
                                                                </c:forEach> 
                                                            </c:if>
                                                        </div>
                                                    </div>                               
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>8) Comentários Finais:</label>
                                                    <c:if test="${empty projeto.dissertativas.comentariosFinais}">
                                                        <div class="row">
                                                          <div class="col-md-12">
                                                              <div class="alert alert-danger text-justify">
                                                                <p>Não há registro(s).</p>
                                                              </div>
                                                          </div>
                                                        </div>
                                                    </c:if>
                                                    <c:if test="${not empty projeto.dissertativas.comentariosFinais}">
                                                        <textarea class="form-control text-justify" rows="5" readonly>${projeto.dissertativas.comentariosFinais}</textarea>
                                                    </c:if>
                                                </div>
                                            </div>
                                        </div> 

                                    </fieldset>                                            

                                    
                                    <fieldset style="margin-top: 70px;">
                                    <legend>ANEXAR DOCUMENTOS</legend>
                                        <div class="row">
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${projeto.documentosProjeto.urlImage}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="imagem"><i class="far fa-image" style="font-size: 78px;"></i><hr>Foto/Logo da Proposta</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${projeto.documentosProjeto.urlProposta}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="proposta"><i class="far fa-file-alt" style="font-size: 78px;"></i><hr>Proposta Técnica Orçamentária Completa:</label></a>
                                                </center>
                                            </div>
                                            <div class="col-md-4 margin-25">
                                                <center>
                                                    <a href='${path}/${projeto.documentosProjeto.urlCertificado}' target="_blank" title="CLIQUE PARA VISUALIZAR O DOCUMENTO"><label for="certificado"><i class="fas fa-certificate" style="font-size: 78px;"></i><hr>Diário Oficial/Certificado de Captação:</label></a>
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
                    
                <c:import url="/WEB-INF/views/footer/footer.jsp" />

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
