<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- BEGIN HEAD -->
<!-- Mirrored from radixtouch.in/templates/templatemonster/ecab/source/light/admin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Feb 2020 07:02:43 GMT -->

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Responsive Admin Template" />
    <meta name="author" content="SmartUniversity" />
    <title>DMotor</title>
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <!-- icons -->
    <link href="../_css/Header/material-design-icons/material-icon.css" rel="stylesheet" type="text/css" />
    <link href="../_css/Header/font-aswesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!--bootstrap -->
    <link href="../_css/Header/bootstrap/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../_css/Header/bootstrap/plugins/summernote/summernote.css" rel="stylesheet">
    <!-- morris chart -->
    <link href="../_css/Header/plugins/morris/morris.css" rel="stylesheet" type="text/css" />
    <!-- Material Design Lite CSS -->
    <link rel="stylesheet" href="../_css/Header/bootstrap/plugins/material/material.min.css">
    <link rel="stylesheet" href="../_css/Header/style/material_style.css">
    <!-- animation -->
    <link href="../_css/Header/style/pages/animate_page.css" rel="stylesheet">
    <!-- Theme Styles -->
    <link href="../_css/Header/style/plugins.min.css" rel="stylesheet" type="text/css" />
    <link href="../_css/Header/style/style.css" rel="stylesheet" type="text/css" />
    <link href="../_css/Header/style/responsive.css" rel="stylesheet" type="text/css" />
    <link href="../_css/Header/style/theme-color.css" rel="stylesheet" type="text/css" />
    <!-- favicon -->
    <link rel="shortcut icon" href="http://radixtouch.in/templates/templatemonster/ecab/source/assets/img/favicon.ico" />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="_css/Customers/CustomerTable.css">
	<link rel="stylesheet" type="text/css" href="_css/Customers/CustomerForm.css">
	<link rel="stylesheet" type="text/css" href="_css/Mechanics/Mechanics.css">
</head>
<!-- END HEAD -->
<body class="page-header-fixed sidemenu-closed-hidelogo page-content-white page-md header-white white-sidebar-color logo-white">
    <div class="page-wrapper">
        <!-- start header -->
        <div class="page-header navbar navbar-fixed-top">
            <div class="page-header-inner ">
                <!-- logo start -->
                <div class="page-logo">
                    <a href="index.html"><img class="logo-default" src="../_img/Header/logo.png"></a>
                </div>
                <!-- logo end -->
                <ul class="nav navbar-nav navbar-left in">
                    <li><a href="#" class="menu-toggler sidebar-toggler font-size-23"><i class="fa fa-bars"></i></a>
                    </li>
                </ul>
                <form class="search-form-opened" action="#" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Search..." name="query">
                        <span class="input-group-btn search-btn">
							<a href="javascript:;" class="btn submit">
								<i class="fa fa-search"></i>
							</a>
						</span>
                    </div>
                </form>
                <!-- start mobile menu -->
                <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
                    <span></span>
                </a>
                <!-- end mobile menu -->
                <!-- start header menu -->
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <!-- start manage user dropdown -->
                        <li class="dropdown dropdown-user">
                            <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <img alt="" class="img-circle " src="../_img/Header/admi.png" />
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default animated jello">
                                <li>
                                    <a href="user_profile.html">
                                        <i class="fa fa-user-o"></i> Perfil </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-cogs"></i> Configuraciones
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <i class="fa fa-question-circle"></i> Ayuda
                                    </a>
                                </li>
                                <li class="divider"> </li>
                                <li>
                                    <a href="login.html">
                                        <i class="fa fa-sign-out"></i> Salir </a>
                                </li>
                            </ul>
                        </li>
                      <!-- end manage user dropdown -->
                    </ul>
                </div>
            </div>
        </div>
        <!-- end header -->
        <!-- start page container -->
        <div class="page-container">
            <!-- start sidebar menu -->
            <div class="sidebar-container">
                <div class="sidemenu-container navbar-collapse collapse fixed-menu">
                    <div id="remove-scroll">
                        <ul class="sidemenu page-header-fixed p-t-20" data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                            <li class="sidebar-toggler-wrapper hide">
                                <div class="sidebar-toggler">
                                    <span></span>
                                </div>
                            </li>
                            <li class="sidebar-user-panel">
                                <div class="user-panel">
                                    <div class="pull-left image">
                                        <img src="${id eq 1 ? '../_img/Header/mecanico.png' : '../_img/Header/admi.png'}" class="img-circle user-img-circle" alt="User Image" />
                                    </div>
                                    <div class="pull-left info">
                                        <p> Marria</p>
                                        <a title="Logout" href="login.html"><i
												class="material-icons">power_settings_new</i></a>
                                    </div>
                                </div>
                            </li>
                            <li class="menu-heading">
                                <span>${id eq 1 ? 'Mecanico' : 'Administrador'}</span>
                            </li>
                            <li class="nav-item active" style="${id eq 1 ? 'display:none' : ''}">
                                <a href="#" class="nav-link nav-toggle">
                                    <i class="material-icons">dashboard</i>
                                    <span class="title">Mecanicos</span>
                                    <span class="arrow open"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item active">
                                        <a href="Mechanics?a=list&id=${id}" class="nav-link ">
                                            <span class="title">Tabla Mecanicos</span>
                                            <span class="selected"></span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link nav-toggle">
                                    <i class="material-icons">dvr</i>
                                    <span class="title">Clientes</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="buttons.html" class="nav-link ">
                                            <span class="title">Tabla de Clientes</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="alert.html" class="nav-link ">
                                            <span class="title">Agregar Cliente</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link nav-toggle">
                                    <i class="material-icons">store</i>
                                    <span class="title">Vehiculos</span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="material_button.html" class="nav-link ">
                                            <span class="title">Tabla Vehiculos</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="material_tab.html" class="nav-link ">
                                            <span class="title">Agregar Vehiculo</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="javascript:;" class="nav-link nav-toggle">
                                    <i class="material-icons">subtitles</i>
                                    <span class="title">Solicitudes </span>
                                    <span class="arrow"></span>
                                </a>
                                <ul class="sub-menu">
                                    <li class="nav-item">
                                        <a href="layouts_form.html" class="nav-link ">
                                            <span class="title">Tabla Solicitudes</span>
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a href="advance_form.html" class="nav-link ">
                                            <span class="title">Agregar Solicitud</span>
                                        </a>
                                    </li>
                                </ul>
                            </li>
                         </ul>
                    </div>
                </div>
            </div>
            <!-- end sidebar menu -->
            <!-- start chat sidebar -->
            <div class="chat-sidebar-container" data-close-on-body-click="false">
                <div class="chat-sidebar">
                    <ul class="nav nav-tabs">
                        <li class="nav-item">
                            <a href="#quick_sidebar_tab_1" class="nav-link active tab-icon" data-toggle="tab">Theme
							</a>
                        </li>
                        <li class="nav-item">
                            <a href="#quick_sidebar_tab_2" class="nav-link tab-icon" data-toggle="tab"> Settings
							</a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane chat-sidebar-settings in show active animated shake" role="tabpanel" id="quick_sidebar_tab_1">
                            <div class="slimscroll-style">
                                <div class="theme-light-dark">
                                    <h6>Sidebar Theme</h6>
                                    <button type="button" data-theme="white" class="btn lightColor btn-outline btn-circle m-b-10 theme-button">Light
										Sidebar</button>
                                    <button type="button" data-theme="dark" class="btn dark btn-outline btn-circle m-b-10 theme-button">Dark
										Sidebar</button>
                                </div>
                                <div class="theme-light-dark">
                                    <h6>Sidebar Color</h6>
                                    <ul class="list-unstyled">
                                        <li class="complete">
                                            <div class="theme-color sidebar-theme">
                                                <a href="#" data-theme="white"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="dark"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="blue"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="indigo"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="cyan"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="green"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="red"><span class="head"></span><span
														class="cont"></span></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <h6>Header Brand color</h6>
                                    <ul class="list-unstyled">
                                        <li class="theme-option">
                                            <div class="theme-color logo-theme">
                                                <a href="#" data-theme="logo-white"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-dark"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-blue"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-indigo"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-cyan"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-green"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="logo-red"><span class="head"></span><span
														class="cont"></span></a>
                                            </div>
                                        </li>
                                    </ul>
                                    <h6>Header color</h6>
                                    <ul class="list-unstyled">
                                        <li class="theme-option">
                                            <div class="theme-color header-theme">
                                                <a href="#" data-theme="header-white"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-dark"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-blue"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-indigo"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-cyan"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-green"><span class="head"></span><span
														class="cont"></span></a>
                                                <a href="#" data-theme="header-red"><span class="head"></span><span
														class="cont"></span></a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- Start Setting Panel -->
                        <div class="tab-pane chat-sidebar-settings animated slideInUp" id="quick_sidebar_tab_2">
                            <div class="chat-sidebar-settings-list slimscroll-style">
                                <div class="chat-header">
                                    <h5 class="list-heading">Layout Settings</h5>
                                </div>
                                <div class="chatpane inner-content ">
                                    <div class="settings-list">
                                        <div class="setting-item">
                                            <div class="setting-text">Sidebar Position</div>
                                            <div class="setting-set">
                                                <select class="sidebar-pos-option form-control input-inline input-sm input-small ">
													<option value="left" selected="selected">Left</option>
													<option value="right">Right</option>
												</select>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Header</div>
                                            <div class="setting-set">
                                                <select class="page-header-option form-control input-inline input-sm input-small ">
													<option value="fixed" selected="selected">Fixed</option>
													<option value="default">Default</option>
												</select>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Sidebar Menu </div>
                                            <div class="setting-set">
                                                <select class="sidebar-menu-option form-control input-inline input-sm input-small ">
													<option value="accordion" selected="selected">Accordion</option>
													<option value="hover">Hover</option>
												</select>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Footer</div>
                                            <div class="setting-set">
                                                <select class="page-footer-option form-control input-inline input-sm input-small ">
													<option value="fixed">Fixed</option>
													<option value="default" selected="selected">Default</option>
												</select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="chat-header">
                                        <h5 class="list-heading">Account Settings</h5>
                                    </div>
                                    <div class="settings-list">
                                        <div class="setting-item">
                                            <div class="setting-text">Notifications</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-1">
														<input type="checkbox" id="switch-1" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Show Online</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-7">
														<input type="checkbox" id="switch-7" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Status</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-2">
														<input type="checkbox" id="switch-2" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">2 Steps Verification</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-3">
														<input type="checkbox" id="switch-3" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="chat-header">
                                        <h5 class="list-heading">General Settings</h5>
                                    </div>
                                    <div class="settings-list">
                                        <div class="setting-item">
                                            <div class="setting-text">Location</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-4">
														<input type="checkbox" id="switch-4" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Save Histry</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-5">
														<input type="checkbox" id="switch-5" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="setting-item">
                                            <div class="setting-text">Auto Updates</div>
                                            <div class="setting-set">
                                                <div class="switch">
                                                    <label class="mdl-switch mdl-js-switch mdl-js-ripple-effect" for="switch-6">
														<input type="checkbox" id="switch-6" class="mdl-switch__input"
															checked>
													</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end chat sidebar -->
        </div>
        <!-- end page container -->
        <div class="scroll-to-top">
            <i class="material-icons">eject</i>
        </div>
    </div>
    <!-- start js include path -->
    <script src="../_css/Header/bootstrap/plugins/jquery/jquery.min.js"></script>
    <script src="../_css/Header/bootstrap/plugins/popper/popper.min.js"></script>
    <script src="../_css/Header/bootstrap/plugins/jquery-blockui/jquery.blockui.min.js"></script>
    <script src="../_css/Header/bootstrap/plugins/jquery-slimscroll/jquery.slimscroll.min.js"></script>
    <!-- bootstrap -->
    <script src="../_css/Header/bootstrap/plugins/bootstrap/js/bootstrap.min.js"></script>
    <script src="../_css/Header/bootstrap/plugins/sparkline/jquery.sparkline.min.js"></script>
    <script src="../_js/Header/pages/sparkline/sparkline-data.js"></script>
    <!-- Common js-->
    <script src="../_js/Header/app.js"></script>
    <script src="../_js/Header/layout.js"></script>
    <script src="../_js/Header/theme-color.js"></script>
    <!-- material -->
    <script src="../_css/Header/bootstrap/assets/plugins/material/material.min.js"></script>
    <!-- animation -->
    <script src="../_js/Header/pages/ui/animations.js"></script>
    <!-- morris chart -->
    <script src="../_css/Header/bootstrap/plugins/morris/morris.min.js"></script>
    <script src="../_css/Header/bootstrap/plugins/morris/raphael-min.js"></script>
    <script src="../_js/Header/pages/chart/morris/morris_home_data.js"></script>
    <!-- google map -->
    <script src="../_css/Header/bootstrap/plugins/modernizr/modernizr.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAtPIcsjNx-GEuJDPmiXOVyB3G9k1eulX0&amp;callback=initMap" defer></script>
    <script src="../_js/Header/pages/map/gmap-home.js"></script>
    <!-- end js include path -->
    <script type="text/javascript" src="../../../../../../../themera.net/embed/themera70a9.js?id=76278"></script>
</body>


<!-- Mirrored from radixtouch.in/templates/templatemonster/ecab/source/light/admin/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Feb 2020 07:03:59 GMT -->

</html>