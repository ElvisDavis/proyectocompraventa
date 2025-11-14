<%--
  Created by IntelliJ IDEA.
  User: ADMIN-ITQ
  Date: 21/5/2025
  Time: 9:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Compra Venta</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>SysVentas </title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.5 -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/font-awesome.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/AdminLTE.min.css">
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/public/css/_all-skins.min.css">
    <link rel="apple-touch-icon" href="${pageContext.request.contextPath}/public/img/apple-touch-icon.png">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/public/img/favicon.ico">

    <!-- DATATABLES -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/datatables/jquery.dataTables.min.css">
    <link href="${pageContext.request.contextPath}/public/datatables/buttons.dataTables.min.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/public/datatables/responsive.dataTables.min.css" rel="stylesheet"/>

    <!--Sweet alert-->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/sweetalert2.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/public/css/bootstrap-select.min.css">

</head>


<body class="hold-transition skin-blue-light sidebar-mini">
<div class="wrapper">

    <header class="main-header">

        <!-- Logo -->
        <a href="index2.html" class="logo">
            <!-- mini logo for sidebar mini 50x50 pixels -->
            <span class="logo-mini"><b>Sys</b>Ventas</span>
            <!-- logo for regular state and mobile devices -->
            <span class="logo-lg"><b>SYSVentas</b></span>
        </a>

        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
            <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Navegación</span>
            </a>
            <!-- Navbar Right Menu -->
            <div class="navbar-custom-menu">
                <ul class="nav navbar-nav">
                    <!-- Messages: style can be found in dropdown.less-->

                    <!-- User Account: style can be found in dropdown.less -->
                    <li class="dropdown user user-menu">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                            <img src="" class="user-image" alt="User Image">
                            <span class="hidden-xs">></span>
                        </a>
                        <ul class="dropdown-menu">
                            <!-- User image -->
                            <li class="user-header">
                                <img src="" class="img-circle"
                                     alt="User Image">
                                <p>

                                    <small>Elvis Pachacama</small>
                                </p>
                            </li>

                            <!-- Menu Footer-->
                            <li class="user-footer">

                                <div class="pull-right">
                                    <a href="" class="btn btn-default btn-flat">Cerrar</a>
                                </div>
                            </li>
                        </ul>
                    </li>

                </ul>
            </div>

        </nav>
    </header>
    <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
            <!-- sidebar menu: : style can be found in sidebar.less -->
            <ul class="sidebar-menu">
                <li class="header"></li>
                <li>
                    <a href="/proyectocompraventa/login">
                        <i class="fa fa-cogs"></i>
                        <span>Login</span>

                    </a>
                </li>
                <li>
                    <a href="">
                        <i class="fa fa-tasks"></i> <span>Escritorio</span>
                    </a>
                </li>
                <li class="treeview">
                    <a href="#">
                        <i class="fa fa-laptop"></i>
                        <span>Almacén</span>
                        <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="treeview-menu">
                        <li><a href="articulo.php"><i class="fa fa-circle-o"></i> Artículos</a></li>
                        <li><a href="/proyectocompraventa/categoria"><i class="fa fa-circle-o"></i> Categorías</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-plus-square"></i> <span>Ayuda</span>
                        <small class="label pull-right bg-red">PDF</small>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-info-circle"></i> <span>Acerca De...</span>
                        <small class="label pull-right bg-yellow">IT</small>
                    </a>
                </li>

            </ul>
        </section>
        <!-- /.sidebar -->
    </aside>