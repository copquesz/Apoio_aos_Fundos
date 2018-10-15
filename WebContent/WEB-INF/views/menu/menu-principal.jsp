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
                <img src="${path}/assets/img/logo-menu.png" class="navbar-brand" style="width: 244.5px; height: 144.75px;">
            </div>
        </nav> <!--/. NAV TOP  -->

        <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">

                    <li>
                        <a class="active-menu" href="${path}/index"><i class="fa fa-home fa-fw"></i> Home</a>
                    </li>
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
                </ul>

            </div>

        </nav> <!-- /. NAV SIDE  -->