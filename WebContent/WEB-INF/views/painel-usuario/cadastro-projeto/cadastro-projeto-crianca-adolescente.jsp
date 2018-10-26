<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Apoio aos Fundos | Cadastrar Projeto</title>
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

        <!-- Import Modal File Validator -->
        <c:import url="/WEB-INF/views/modals/modal-arquivo-aceito.jsp" />
        <c:import url="/WEB-INF/views/modals/modal-arquivo-recusado-all.jsp" />
        <c:import url="/WEB-INF/views/modals/modal-arquivo-recusado-img.jsp" />
        <c:import url="/WEB-INF/views/modals/modal-arquivo-recusado-pdf.jsp" />

        <div id="page-wrapper" >
            <div id="page-inner">
                
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="page-header">
                            <small><b>CADASTRAR <span class="fas fa-angle-right"></span> PROJETO</b></small>
                        </h1>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="alert alert-info text-justify">                                
                            <p>Nesta etapa iremos solicitar alguns dados necessário para arquivarmos informações sobre o projeto. Você deverá produzir um resumo do projeto aprovado pelo Conselho de Direitos, conforme apresentado no Diário Oficial do Estado ou Município previamente anexado.<br>Esta ficha técnica será apreciada pela Comissão de Seleção da empresa.</p></p>

                            <br><br>
                            <strong>Observação: </strong>Caso você possua alguma dúvidas, existe ícones como este <i class="fas fa-info-circle"></i> que irão lhe auxiliar no preenchimento do formulário. Para isso, basta você passar o mouse em cima do ícone que você poderá visualizar dicas de como preencher o campo indicado.
                        </div>
                    </div>
                </div>
                <c:if test="${empty entidadesUsuario}">
                    <div class="row">
                      <div class="col-md-12">
                          <div class="alert alert-danger text-justify">                                
                              <p><b>Você não possui Entidade(s) cadastrada(s)</b></p>
                              <p><a href="${path}/painel/entidade/cadastrar"><b>Clique aqui</b></a> para cadastrar a Entidade Executora do projeto.</p>
                          </div>
                      </div>
                  </div>
                </c:if>

                <c:if test="${not empty entidadesUsuario}">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <form role="form" action="${path}/painel/projeto/cadastrar" method="post" enctype="multipart/form-data" acceptcharset="UTF-8">

                                        <input type="hidden" name="conselho.id" value="${conselho.id}">

                                        <fieldset style="margin-top: 20px;">
                                        <legend>SELECIONE A ENTIDADE EXECUTORA: <span class="input-required">*</span></legend>
                                            <div class="row">
                                                <div class="col-md-8">
                                                    <div class="form-group">
                                                        <select class="form-control" name="entidade.id">                        
                                                            <c:forEach var="entidade" items="${entidadesUsuario}">
                                                                <option value="${entidade.id}">${entidade.razaoSocial}</option>
                                                            </c:forEach>
                                                        </select>
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
                                                        <label>Nome do Projeto: <span class="input-required">*</span></label>
                                                        <input type="text" class="form-control" name="nomeProjeto" required>
                                                    </div>
                                                </div>      
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Valor do Projeto: <span class="input-required">*</span></label>
                                                        <input type="text" class="form-control" id="valorProjeto" name="valorProjeto" required>                                     
                                                    </div>
                                                </div>
                                                <div class="col-md-3">
                                                    <div class="form-group">
                                                        <label>Valor Solicitado: <span class="input-required">*</span></label>
                                                        <input type="text" class="form-control" id="valorSolicitado" name="valorSolicitado" required>                                     
                                                    </div>
                                                </div>                                                  
                                            </div>
                                            <div class="row">                                                        
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Qtd. Beneficiários Direto: <span class="input-required">*</span></label>
                                                        <input type="number" class="form-control" name="beneficiariosDireto" required>                                     
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Qtd. Beneficiários Indireto: <span class="input-required">*</span></label>
                                                        <input type="number" class="form-control" name="beneficiariosIndireto" required>                                     
                                                    </div>
                                                </div>
                                                <div class="col-md-4">
                                                    <div class="form-group">
                                                        <label>Qtd. Profissionais Envolvidos: <span class="input-required">*</span></label>
                                                        <input type="number" class="form-control" name="profissionaisEnvolvidos" required>                                     
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
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Abuso Sexual">Abuso Sexual
                                                                    </label>
                                                                </div> 
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Agressão Física">Agressão Física
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Menores Infratores ">Menores Infratores 
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Negligência/Abandono">Negligência/Abandono
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Trabalho Infantil">Trabalho Infantil
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Uso de Drogas">Uso de Drogas
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.violacao" value="Vulnerabilidade Social">Vulnerabilidade Social
                                                                    </label>
                                                                </div>
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
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Comunicação">Comunicação
                                                                    </label>
                                                                </div>                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Desenvolvimento de Tecnologia para Gestão">Desenvolvimento de Tecnologia para Gestão
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Empreendedorismo">Empreendedorismo
                                                                    </label>
                                                                </div>

                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Formação Profissional">Formação Profissional
                                                                    </label>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Tecnologia Digital">Tecnologia Digital
                                                                    </label>
                                                                </div>                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.beneficio" value="Inovação Educativa">Inovação Educativa
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">                                                                
                                                        <label>1) Apresente o contexto social onde o projeto será executado: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Neste item deve-se apresentar brevemente o contexto no qual o projeto será aplicado."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="4" id="q1" name="dissertativas.contextoSocial" maxlength="1500" onkeyup="limite_q1(this.value)" required></textarea> 
                                                        <small><span id="cont-q1" style="color: red">1500</span>  Caracteres Restantes.</small>                                   
                                                    </div>
                                                    <div class="form-group">
                                                        <label>2) Justifique a proposta: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Apresente as justificativas para esta proposta a luz do diagnóstico e informações disponibilizadas no item 1."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="4" id="q2" name="dissertativas.justificativa" maxlength="1500" onkeyup="limite_q2(this.value)" required></textarea>    
                                                        <small><span id="cont-q2" style="color: red">1500</span>  Caracteres Restantes.</small>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>3) Objetivo geral: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Refere-se ao objetivo direto do projeto, o qual deve contribuir para a mudança da realidade descrita no item 1."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="4" id="q3" name="dissertativas.objetivoGeral" maxlength="1500" onkeyup="limite_q3(this.value)" required></textarea> 
                                                        <small><span id="cont-q3" style="color: red">1500</span>  Caracteres Restantes.</small>                                   
                                                    </div>
                                                    <div class="form-group">
                                                        <label>4) Objetivos específicos: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="São os objetivos detalhados, que devem ser alcançados para que o objetivo geral seja contemplado. Eles devem ter relação direta com as metas e indicadores do projeto. Especifique-os."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="4" id="q4" name="dissertativas.objetivoEspecifico" maxlength="1500" onkeyup="limite_q4(this.value)" required></textarea> 
                                                        <small><span id="cont-q4" style="color: red">1500</span>  Caracteres Restantes.</small>                                   
                                                    </div>
                                                    <div class="form-group">
                                                        <label>5) Resultados esperados: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Os resultados esperados são as transformações decorrentes da realização da proposta, o que de bom será alcançado com o projeto."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="6" id="q5" name="dissertativas.resultadosEsperados" maxlength="1500" onkeyup="limite_q5(this.value)" required></textarea>
                                                        <small><span id="cont-q5" style="color: red">1500</span>  Caracteres Restantes.</small>                                    
                                                    </div>
                                                    <div class="form-group">
                                                        <label>6) Metas e Indicadores: <span class="input-required">*</span> <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="As metas estão relacionadas aos objetivos específicos e revelam o que se pretende. Os indicadores servem para mensuração dos resultados de forma quantitativa e qualitativa. O meio de verificação refere-se a forma com que serão mensurados e apresentados os resulados"><i class="fas fa-info-circle"></i></a></label>
                                                        <div class="table-responsive">
                                                            <table class="table">
                                                                <tbody>                                       
                                                                      <div>
                                                                        <tr>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[0].meta" placeholder="Meta" required></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[0].indicador" placeholder="Indicador" required ></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[0].meioVerificacao" placeholder="Meio de Verificação" required></textarea></td>
                                                                            <td>
                                                                                <select class="form-control" name="metasIndicadores[0].periodicidade">
                                                                                <option value="Não Informado">Selecione um Período</option>
                                                                                <option value="Quinzenal">Quinzenal</option>
                                                                                <option value="Mensal">Mensal</option>
                                                                                <option value="Semestral">Semestral</option>
                                                                                <option value="Anual">Anual</option>
                                                                                </select>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[1].meta" placeholder="Meta" ></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[1].indicador" placeholder="Indicador" ></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[1].meioVerificacao" placeholder="Meio de Verificação" ></textarea></td>
                                                                            <td>
                                                                                <select class="form-control" name="metasIndicadores[1].periodicidade">
                                                                                <option value="">Selecione um Período</option>
                                                                                <option value="Quinzenal">Quinzenal</option>
                                                                                <option value="Mensal">Mensal</option>
                                                                                <option value="Semestral">Semestral</option>
                                                                                <option value="Anual">Anual</option>
                                                                                </select>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[2].meta" placeholder="Meta" ></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[2].indicador" placeholder="Indicador" ></textarea></td>
                                                                            <td><textarea class="form-control" rows="4" name="metasIndicadores[2].meioVerificacao" placeholder="Meio de Verificação" ></textarea></td>
                                                                            <td>
                                                                                <select class="form-control" name="metasIndicadores[2].periodicidade">
                                                                                <option value="">Selecione um Período</option>
                                                                                <option value="Quinzenal">Quinzenal</option>
                                                                                <option value="Mensal">Mensal</option>
                                                                                <option value="Semestral">Semestral</option>
                                                                                <option value="Anual">Anual</option>
                                                                                </select>
                                                                            </td>
                                                                        </tr>
                                                                      </div>                                               
                                                                </tbody>
                                                            </table>                                                          
                                                        </div>         
                                                    </div>
                                                    <div class="form-group">
                                                        <label>7) Estratégias de comunicação/visibilidade: <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Ações de comunicação são importantes tanto para a informação e conscientização da sociedade civil em relação a violação de direitos, quanto para a divulgação dos resultados. Cabe destacar, que todas as iniciativas de comunicação devem conter a marca do Conselho, organização social e da empresa apoiadora."><i class="fas fa-info-circle"></i></a></label>
                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <hr>
                                                                <b>ORGANIZAÇÃO SOCIAL</b>

                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Assessoria de imprensa">Assessoria de imprensa 
                                                                    </label>
                                                                </div>    
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Divulgação frequente das ações do projeto em mídias sociais">Divulgação frequente das ações do projeto em mídias sociais
                                                                    </label>
                                                                </div>                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Evento de lançamento">Evento de lançamento
                                                                    </label>
                                                                </div>                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Fotos e boletins mensais de notícias do projeto">Fotos e boletins mensais de notícias do projeto
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Produção de camisetas para os beneficiários">Produção de camisetas para os beneficiários
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaEntidade" value="Vídeo institucional do projeto">Vídeo institucional do projeto
                                                                    </label>
                                                                </div>                                                                        
                                                            </div>
                                                            <div class="col-md-6">
                                                                <hr>
                                                                <b>CONSELHO DOS DIREITOS</b>                                                                        
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaConselho" value="Assessoria de imprensa ">Assessoria de imprensa 
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaConselho" value="Comunicado assinado pelo Presidente do Conselho para todas as Secretarias.">Comunicado assinado pelo Presidente do Conselho para todas as Secretarias.
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaConselho" value="Divulgação da parceria aos veículos de comunicação da cidade (rádios, jornais) ">Divulgação da parceria aos veículos de comunicação da cidade (rádios, jornais) 
                                                                    </label>
                                                                </div>
                                                                <div class="checkbox">
                                                                    <label>
                                                                        <input type="checkbox" name="multiplaEscolha.estrategiaConselho" value="Divulgação da parceria nas mídias sociais do Conselho">Divulgação da parceria nas mídias sociais do Conselho
                                                                    </label>
                                                                </div>
                                                            </div>
                                                        </div>                               
                                                    </div>
                                                    <div class="form-group">
                                                        <label>8) Comentários Finais: <a href="#" data-toggle="tooltip" data-placement="right" data-html="true" title="Nesta sessão é possível esclarecer ou apontar informações relevantes para a implementação do projeto."><i class="fas fa-info-circle"></i></a></label>
                                                        <textarea class="form-control" rows="6" id="q8" name="dissertativas.comentariosFinais" maxlength="1500" onkeyup="limite_q8(this.value)"></textarea>  
                                                        <small><span id="cont-q8" style="color: red">1500</span>  Caracteres Restantes.</small>
                                                    </div>
                                                </div>
                                            </div> 
                                        </fieldset>                                            

                                        
                                        <fieldset style="margin-top: 70px;">
                                        <legend>ANEXAR DOCUMENTOS</legend>
                                            <div class="row">
                                                <div class="col-md-4 margin-25">
                                                    <center>
                                                        <label for="imagem"><i class="far fa-image" style="font-size: 78px;"></i><hr>Foto/Logo da Proposta: <span class="input-required">*</span></label>
                                                        <br><small>Formatos aceitos: <b style="color: red;">jpg, jpeg, png, bmp.</b></small>
                                                        <input type="file" class="form-control" name="documentosProjeto.imagem" id="imagem" onchange="validaImg(this, this.id)" required>
                                                    </center>
                                                </div>
                                                <div class="col-md-4 margin-25">
                                                    <center>
                                                        <label for="proposta"><i class="far fa-file-alt" style="font-size: 78px;"></i><hr>Proposta Técnica Orçamentária Completa: <span class="input-required">*</span></label>
                                                        <br><small>Formatos aceitos: <b style="color: red;">pdf.</b></small>
                                                        <input type="file" class="form-control" name="documentosProjeto.proposta" id="proposta" onchange="validaPdf(this, this.id)" required>
                                                    </center>
                                                </div>
                                                <div class="col-md-4 margin-25">
                                                    <center>
                                                        <label for="certificado"><i class="fas fa-certificate" style="font-size: 78px;"></i><hr>Diário Oficial/Certificado de Captação: <span class="input-required">*</span></label>
                                                        <br><small>Formatos aceitos: <b style="color: red;">pdf, jpg, jpeg, png, bmp.</b></small>
                                                        <input type="file" class="form-control" name="documentosProjeto.certificado" id="certificado" onchange="validaImgPdf(this, this.id)" required>
                                                    </center>
                                                </div>
                                            </div>    
                                        </fieldset> 
                                        <hr>
                                        <div style="margin-top: 30px;">
                                            <center>
                                                <button type="submit" class="btn btn-primary">Enviar</button>
                                                <a href="${path}/painel/index" class="btn btn-danger" style="margin-left: 20px;">Voltar</a>
                                            </center>
                                        </div>   
                                    </form>                                
                                </div>
                            </div>
                        </div>
                    </div> <!-- /. ROW  -->
                </c:if>
                    
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

    <script src="${path}/assets/js/jquery.maskedinput.js"></script>
    <script src="${path}/assets/js/jquery.maskMoney.js"></script>
    <script src="${path}/assets/js/file-validator.js"></script>

    <!-- Masks -->
    <script type="text/javascript">
        $("#valorProjeto").maskMoney({showSymbol: true, symbol:'R$ ', thousands:'.', decimal:','});
        $("#valorSolicitado").maskMoney({showSymbol: true, symbol:'R$ ', thousands:'.', decimal:','});
    </script>
    
   
</body>
</html>
