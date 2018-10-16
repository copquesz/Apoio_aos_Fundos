<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="modal fade" id="selecione-tipo-fundo" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 class="modal-title" id="exampleModalLongTitle">Selecione o Fundo do Projeto:</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="${path}/painel/projeto/cadastrar" method="get" acceptcharset="UTF-8">
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">    

              <c:set var='listaFMDCA' value='${listaFundos.get(0)}'/>  
              <c:set var='listaFMDI' value='${listaFundos.get(1)}'/>  
              <c:set var='listaFEDCA' value='${listaFundos.get(2)}'/>      
              <c:set var='listaFEDI' value='${listaFundos.get(3)}'/> 

                  <c:if test="${empty listaFMDCA and empty listaFMDI and empty listaFEDCA and empty listaFEDI}"> 
                    <div class="row">
                      <div class="col-md-12">
                        <div class="alert alert-danger text-justify"> 
                            <p><b>Não há Fundos cadastrados.</b></p>
                        </div>
                      </div>
                    </div> 
                  </c:if>

                  <c:if test="${not empty listaFMDCA or not empty listaFMDI or not empty listaFEDCA or not empty listaFEDI}">

                    <label>Fundos: <span class="input-required">*</span></label>
                    <select class="form-control" name="param">

                      <c:if test="${not empty listaFMDCA}">
                        <optgroup label="Fundos Municipais da Criança e do Adolescente">
                          <c:forEach var="conselho" items="${listaFMDCA}">
                              <option value="${conselho.id}">${conselho.tipoFundo.descricao} de ${conselho.endereco.cidade}</option>
                          </c:forEach>
                        </optgroup>
                      </c:if>

                      <c:if test="${not empty listaFMDI}">
                        <optgroup label="Fundos Municipais do Idoso">
                          <c:forEach var="conselho" items="${listaFMDI}">
                              <option value="${conselho.id}">${conselho.tipoFundo.descricao} de ${conselho.endereco.cidade}</option>
                          </c:forEach>
                        </optgroup>
                      </c:if>

                      <c:if test="${not empty listaFEDCA}">
                        <optgroup label="Fundos Estaduais da Criança e do Adolescente">
                          <c:forEach var="conselho" items="${listaFEDCA}">
                              <option value="${conselho.id}">${conselho.tipoFundo.descricao} de ${conselho.endereco.estado}</option>
                          </c:forEach>
                        </optgroup>
                      </c:if>

                      <c:if test="${not empty listaFEDI}">
                        <optgroup label="Fundos Estaduais do Idoso">
                          <c:forEach var="conselho" items="${listaFEDI}">
                              <option value="${conselho.id}">${conselho.tipoFundo.descricao} de ${conselho.endereco.estado}</option>
                          </c:forEach>
                        </optgroup>
                      </c:if>

                    </select>      
                  </c:if>

              </div>
            </div>            
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="form-group">                
                <c:if test="${not empty listaFMDCA or not empty listaFMDI or not empty listaFEDCA or not empty listaFEDI}">
                  <center><button type="submit" class="btn btn-primary pull-right">Próximo</button></center>
                </c:if>
              </div>
            </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
      </div>
    </div>
  </div>
</div>