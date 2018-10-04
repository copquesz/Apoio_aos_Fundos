<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:import url="../modals/modal-proposta-entidade-fundo.jsp" />

<nav class="navbar navbar-default top-navbar" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <img src="${path}/assets/img/logo-ftv.png" class="navbar-brand" style="width: 372px; height: 108px;">
    </div>
</nav> <!--/. NAV TOP  -->

<nav class="navbar-default navbar-side" role="navigation">
    <div class="sidebar-collapse">
        <ul class="nav" id="main-menu">

            <li>
                <a href="${path}/painel" ><i class="fas fa-desktop"></i> Painel</a>
            </li>
            <li>
                <a href="${path}/painel/cadastrar" ><i class="fas fa-plus-square"></i> Cadastrar</a>
            </li>          
            <li>
            <li>
                <a href="#"><i class="fas fa-user-edit"></i> Inscrições<span class="fa arrow"></span></a>
                <ul class="nav nav-second-level">
                    <li>
                        <a href="#" data-toggle="modal" data-target="#fundoDeDireitos">Fundo de Direitos</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#entidadeExecutora">Entidade Executora</a>
                    </li>
                    <li>
                        <a href="#" data-toggle="modal" data-target="#proposta">Propostas</a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="fas fa-envelope"></i> Contato</a>
            </li>
            <li>
                <a class="" href="${path}/logoff"><i class="fas fa-sign-out-alt"></i> Sair</a>
            </li>
        </ul>

    </div>

</nav> <!-- /. NAV SIDE  -->