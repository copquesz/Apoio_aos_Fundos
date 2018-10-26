<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="modal fade bd-example-modal-lg" id="meus-registros" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLongTitle">Meus Registros</h2>        
      </div>
      <div class="modal-body">
        <div id="accordion">

          <div class="card">
            <div class="card-header" id="headingOne">
              <div class="col-md-4">
                  <div class="panel panel-default">
                      <div class="panel-heading">
                          <center>Conselhos</center>
                      </div>
                      <div class="panel-body">
                          <a data-toggle="collapse" href="#collapseOne" role="button" aria-expanded="false" aria-controls="collapseOne" title="Visualizar / Ocultar"><center><i class="fas fa-landmark" style="font-size: 100px;"></i></center></a>
                      </div>
                  </div>
              </div>
            </div>
          </div>

          <div class="card">
            <div class="card-header" id="headingTwo">
              <div class="col-md-4">
                  <div class="panel panel-default">
                      <div class="panel-heading">
                          <center>Entidades</center>
                      </div>
                      <div class="panel-body">
                          <a data-toggle="collapse" href="#collapseTwo" role="button" aria-expanded="false" aria-controls="collapseTwo" title="Visualizar / Ocultar"><center><i class="fas fa-building" style="font-size: 100px;"></i></center></a>
                      </div>
                  </div>
              </div>
            </div>
          </div>

          <div class="card">
            <div class="card-header" id="headingThree">
              <div class="col-md-4">
                  <div class="panel panel-default">
                      <div class="panel-heading">
                          <center>Projetos</center>
                      </div>
                      <div class="panel-body">
                          <a data-toggle="collapse" href="#collapseThree" role="button" aria-expanded="false" aria-controls="collapseThree" title="Visualizar / Ocultar"><center><i class="fab fa-accusoft" style="font-size: 100px;"></i></center></a>
                      </div>
                  </div>
              </div>
            </div>
          </div>

          <div class="card">
            <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <h4>Conselhos Cadastrados</h4>
                    <hr>
                    <c:if test="${empty conselhosUsuario}">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="alert alert-danger text-justify">                                
                                  <b>Você não possui Conselho(s) cadastrado(s)</b>
                              </div>
                          </div>
                      </div>
                    </c:if>
                    <c:if test="${not empty conselhosUsuario}">
                      <table class="table table-dark">
                        <thead>
                          <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Data Cadastro</th>
                            <th scope="col">Razão Social</th>                            
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="conselhoUsuario" items="${conselhosUsuario}">
                              <tr>
                                <th scope="row">#${conselhoUsuario.id}</th> 
                                <td><fmt:formatDate value="${conselhoUsuario.dataCadastro}" type="date" pattern="dd/MM/yyyy" /></td>        
                                <td>${conselhoUsuario.razaoSocial}</td>
                                <td align="right"><a class="" href='${path}/painel/conselho/visualizar/${conselhoUsuario.id}' title="Visualizar"><img src="data:image/png;base64,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"></a></td>
                              </tr>
                          </c:forEach>                            
                        </tbody>
                      </table>
                    </c:if>                      
                  </div>
                </div><!-- /. ROW PANEL  -->
              </div><!-- /. CARD BODY  -->
            </div><!-- /. COLLAPSE  -->
          </div><!-- /. CARD  -->

          <div class="card">
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordion">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <h4>Entidades Cadastradas</h4>
                    <hr>
                    <c:if test="${empty entidadesUsuario}">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="alert alert-danger text-justify">                                
                                  <b>Você não possui Entidade(s) cadastrada(s)</b>
                              </div>
                          </div>
                      </div>
                    </c:if>
                    <c:if test="${not empty entidadesUsuario}">
                      <table class="table table-dark">
                        <thead>
                          <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Data Cadastro</th>
                            <th scope="col">Razão Social</th>                            
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="entidadeUsuario" items="${entidadesUsuario}">
                              <tr>
                                <th scope="row">#${entidadeUsuario.id}</th> 
                                <td><fmt:formatDate value="${entidadeUsuario.dataCadastro}" type="date" pattern="dd/MM/yyyy" /></td>        
                                <td>${entidadeUsuario.razaoSocial}</td>
                                <td align="right"><a class="" href='${path}/painel/entidade/visualizar/${entidadeUsuario.id}' title="Visualizar"><img src="data:image/png;base64,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"></a></td>
                              </tr>
                          </c:forEach>                            
                        </tbody>
                      </table>
                    </c:if> 
                  </div>
                 </div><!-- /. ROW PANEL  -->
              </div><!-- /. CARD BODY  -->
            </div><!-- /. COLLAPSE  -->
          </div><!-- /. CARD  -->

          <div class="card">
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
              <div class="card-body">
                <div class="row">
                  <div class="col-md-12">
                    <h4>Projetos Cadastrados</h4>
                    <hr>
                    <c:if test="${empty projetosUsuario}">
                      <div class="row">
                          <div class="col-md-12">
                              <div class="alert alert-danger text-justify">                                
                                  <b>Você não possui Projeto(s) cadastrado(s)</b>
                              </div>
                          </div>
                      </div>
                    </c:if>
                    <c:if test="${not empty projetosUsuario}">
                      <table class="table table-dark">
                        <thead>
                          <tr>
                            <th scope="col">Código</th>
                            <th scope="col">Data Cadastro</th>
                            <th scope="col">Nome Projeto</th>                            
                          </tr>
                        </thead>
                        <tbody>
                          <c:forEach var="projetoUsuario" items="${projetosUsuario}">
                              <tr>
                                <th scope="row">#${projetoUsuario.id}</th> 
                                <td><fmt:formatDate value="${projetoUsuario.dataCadastro}" type="date" pattern="dd/MM/yyyy" /></td>        
                                <td>${projetoUsuario.nomeProjeto}</td>
                                <td align="right"><a class="" href='${path}/painel/projeto/visualizar/${projetoUsuario.id}' title="Visualizar"><img src="data:image/png;base64,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"></a></td>
                              </tr>
                          </c:forEach>                            
                        </tbody>
                      </table>
                    </c:if> 
                  </div>
                 </div><!-- /. ROW PANEL  -->
              </div><!-- /. CARD BODY  -->
            </div><!-- /. COLLAPSE  -->
          </div><!-- /. CARD  -->
          
        </div><!-- /. ACCORDIONS  -->

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>