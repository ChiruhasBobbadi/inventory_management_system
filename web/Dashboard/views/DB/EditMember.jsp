<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
        response.sendRedirect("http://localhost:8080/inventory_war_exploded");
%>

<%} else {

%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Inventory System</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="../../../bootstrap/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="../../../dist/css/AdminLTE.min.css">
  
        <link rel="stylesheet" href="../../../dist/css/skins/_all-skins.min.css">
        <!-- iCheck -->
        <link rel="stylesheet" href="../../../plugins/iCheck/flat/blue.css">
        <!-- Morris chart -->
        <link rel="stylesheet" href="../../../plugins/morris/morris.css">
        <!-- jvectormap -->
        <link rel="stylesheet" href="../../../plugins/jvectormap/jquery-jvectormap-1.2.2.css">
        <!-- Date Picker -->
        <link rel="stylesheet" href="../../../plugins/datepicker/datepicker3.css">
        <!-- Daterange picker -->
        <link rel="stylesheet" href="../../../plugins/daterangepicker/daterangepicker.css">
        <!-- bootstrap wysihtml5 - text editor -->
        <link rel="stylesheet" href="../../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="style.css" type="text/css">

    </head>
    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <header class="main-header">
                <!-- Logo -->
                <a href="../../../http://localhost:8080/inventory_war_exploded" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>A</b>PL</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Admin</b>Panel</span>
                </a>
                <!-- Header Navbar: style can be found in header.less -->
                <nav class="navbar navbar-static-top">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>

                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- Messages: style can be found in dropdown.less-->
                            <li class="dropdown messages-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                </a> 
                            </li>
                            <!-- Notifications: style can be found in dropdown.less -->
                            <li class="dropdown notifications-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                </a>

                            </li>
                            <!-- Tasks: style can be found in dropdown.less -->

                            <!-- User Account: style can be found in dropdown.less -->
                            <li class="dropdown user user-menu">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <img src="../../../Image/logo.png" class="user-image" alt="User Image">
                                    <span class="hidden-xs"> E mart</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- User image -->
                                    <li class="user-header">
                                        <img src="../../../Image/logo.png" class="img-circle" alt="User Image">

                                        <p>
                                             <i style="font-size: 18px"><%=session.getAttribute("userid")%></i><br>
                                            E mart
                                            <small></small>
                                        </p>
                                    </li>

                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-left">
                                            <a href="#" class="btn btn-default btn-flat">Profile</a>
                                        </div>
                                        <div class="pull-right">
                                            <a href="../../../logout.jsp" class="btn btn-default btn-flat">Sign out</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                            <!-- Control Sidebar Toggle Button -->

                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">
                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">
                    <!-- Sidebar user panel -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="../../../Image/logo.png" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>E mart</p>

                        </div>
                    </div>
                    <!-- search form -->
                    <form action="#" method="get" class="sidebar-form">
                        <div class="input-group">
                            <input type="text" name="q" class="form-control" placeholder="Search...">
                            <span class="input-group-btn">
                                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                                </button>
                            </span>
                        </div>
                    </form>
                    <!-- /.search form -->
                    <!-- sidebar menu: : style can be found in sidebar.less -->
                    <ul class="sidebar-menu">
                        <li class="header">MAIN NAVIGATION</li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-shopping-basket"></i> <span>Sales</span>
                                <span class="pull-right-container">
                                    <i class="fa fa-angle-left pull-right"></i>
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li class="active"><a href="sales.jsp"><i class="fa fa-circle-o"></i> Product Sales</a></li>
                                <li><a href="#"><i class="fa fa-circle-o"></i> History</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-shopping-cart"></i>
                                <span>Purchase</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="purchase.jsp"><i class="fa fa-circle-o"></i> Product Purchase</a></li>
                                <li><a href="ProductList.jsp"><i class="fa fa-circle-o"></i> Product List</a></li>
                            </ul>
                        </li>

                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-user"></i>
                                <span>Customer</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="customer_info.jsp"><i class="fa fa-circle-o"></i> Add New</a></li>
                                <li><a href="CustomerLists.jsp"><i class="fa fa-circle-o"></i> Membership Info</a></li>
                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span>User</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="user.jsp"><i class="fa fa-circle-o"></i> Add User</a></li>

                            </ul>
                        </li>
                        <li class="treeview">
                            <a href="#">
                                <i class="fa fa-users"></i>
                                <span>Dealership</span>
                                <i class="fa fa-angle-left pull-right"></i>                                                       
                                </span>
                            </a>
                            <ul class="treeview-menu">
                                <li><a href="Dealership.jsp"><i class="fa fa-circle-o"></i> Add Dealer</a></li>

                            </ul>
                        </li>
                    </ul>

                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>
                        Dashboard
                        <small>Control panel</small>
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="../../../http://localhost:8080/inventory_war_exploded"><i class="fa fa-dashboard"></i>Home</a></li>

                    </ol>
                </section>

                <!-- Main content -->
                <section class="content">
                    <!-- Small boxes (Stat box) -->


                    <main>
                        <div class="panel panel-primary">
                <div class="container">
                    <h1>Member</h1>
                    <%@page import="com.inventory.dao.UserDao,com.inventory.bean.User"%>
                                <%
                            String id=request.getParameter("id");
                            User u=UserDao.getRecordMemberById(Integer.parseInt(id));
                                %>

                    <form class="form-inline" action="UpdateMember.jsp">
                        <input type="hidden" name="id" value="<%=u.getId()%>"/>
                        <table>
                            <tr>
                                <td>
                                        <div class="form-group">
                                            <label for="customer id">Member Id</label><br>
                                            <input type="text" name="member_id" value="<%= u.getMember_id()%>" class="form-control" id="customer id" placeholder="Enter Your Id">
                                        </div><br>
                                        </td>
                                        <td>

                                            <div class="form-group">
                                                <label for="name">Name</label><br>
                                                <input type="text" name="name" value="<%= u.getName()%>" class="form-control" id="name" placeholder="Enter Name ">
                                            </div><br>
                                        </td>
                                        <td>
                                            <label for="gender">Gender</label><br>
                                            <select class="form-control" name="gender"  id="sel1">
                                                <option><%= u.getGender() %></option>
                                                <option>Male</option>
                                                <option>Female</option>
                                            </select><br>
                                        </td>
                                        <td>
                                            <div class="form-group">
                                                <label for="name">Password</label><br>
                                                <input type="text" name="password" value="<%= u.getPassword()%>" class="form-control" id="name" placeholder="Enter Password">
                                            </div><br>
                                        </td>
                            </tr>
                            <tr>
                                <td>
                                    <div class="form-group">
                                        <label for="email">Email</label><br>
                                        <input type="text" name="email" value="<%= u.getEmail()%>" class="form-control" id="email" placeholder="Enter email">
                                    </div><br>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="mobile">Mobile No.</label><br>
                                        <input type="text" name="mobile_no" value="<%= u.getMobile_no()%>" class="form-control" id="mobile" placeholder="Enter Mobile No">
                                    </div><br>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="">NID</label><br>
                                        <input type="text" name="nid" value="<%= u.getNid()%>" class="form-control" id="mobile" placeholder="Enter National Id">
                                    </div><br>
                                </td>
                            </tr>
                            <tr> 
                                <td>
                                    <div class="form-group">
                                        <label for="address">Present Address</label><br>
                                        <textarea class="form-control" name="pre_address" rows="4" id="address"><%= u.getPre_address()%></textarea>
                                    </div><br>
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="address">Permanent Address</label><br>
                                        <textarea class="form-control" name="per_address" rows="4" id="address"><%= u.getPer_address()%></textarea>
                                    </div><br>
                                </td>
                           </tr>
                            <tr> 
                                <td>

                                    <div class="form-group">
                                        <label for="mobile">Payment Amount(TK)</label><br>
                                        <input type="text" name="payment" value="<%= u.getPayment()%>" class="form-control" id="mobile" placeholder="Enter Payment">
                                    </div><br>
                                </td>
                                <td>

                                    <label for="">Category</label><br>
                                    <select class="form-control" name="category" value="<%= u.getCategory()%>" id="sel1">
                                        <option><%= u.getCategory()%></option>
                                        <option>Premium</option>
                                        <option>Sliver</option>
                                        <option>Gold</option>
                                    </select>
                                    <br>  
                                </td>
                                <td>
                                    <div class="form-group">
                                        <label for="mobile">Date</label><br>
                                        <input type="date" name="date" value="<%= u.getDate()%>" class="form-control" id="mobile">
                                    </div><br>
                                </td>
                            </tr>
                          

                            <tr>
                                <td>
                                    <br>
                                 <div class="btn">
                                        <button class="btn btn-primary">Update</button>
                                 </div>
                                    <br>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
                </div>



                        &nbsp; <!--end of 1st part -->
                        <br>
                        <br>





                    </main>

                    <footer></footer>&nbsp;
                    <br>
                    <br>
                    <br>

                    <!-- ./col -->

                </section>
                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->
            <footer class="main-footer">
                <div class="pull-right hidden-xs">

                </div>
                <strong>Copyright &copy; 2020-2021 <a href="#">E mart</a>.</strong>
            </footer>

            <!-- Control Sidebar -->
            <aside class="control-sidebar control-sidebar-dark">
                <!-- Create the tabs -->
                <ul class="nav nav-tabs nav-justified control-sidebar-tabs">
                    <li><a href="#control-sidebar-home-tab" data-toggle="tab"><i class="fa fa-home"></i></a></li>
                    <li><a href="#control-sidebar-settings-tab" data-toggle="tab"><i class="fa fa-gears"></i></a></li>
                </ul>

            </aside>
            <!-- /.control-sidebar -->
            <!-- Add the sidebar's background. This div must be placed
                 immediately after the control sidebar -->
            <div class="control-sidebar-bg"></div>
        </div>


        <!-- jQuery 2.2.3 -->
        <script src="../../../plugins/jQuery/jquery-2.2.3.min.js"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
        <script>
            $.widget.bridge('uibutton', $.ui.button);
        </script>
        <!-- Bootstrap 3.3.6 -->
        <script src="../../../bootstrap/js/bootstrap.min.js"></script>
        <!-- Morris.js charts -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
        <script src="../../../plugins/morris/morris.min.js"></script>
        <!-- Sparkline -->
        <script src="../../../plugins/sparkline/jquery.sparkline.min.js"></script>
        <!-- jvectormap -->
        <script src="../../../plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="../../../plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
        <!-- jQuery Knob Chart -->
        <script src="../../../plugins/knob/jquery.knob.js"></script>
        <!-- daterangepicker -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
        <script src="../../../plugins/daterangepicker/daterangepicker.js"></script>
        <!-- datepicker -->
        <script src="../../../plugins/datepicker/bootstrap-datepicker.js"></script>
        <!-- Bootstrap WYSIHTML5 -->
        <script src="../../../plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
        <!-- Slimscroll -->
        <script src="../../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
        <!-- FastClick -->
        <script src="../../../plugins/fastclick/fastclick.js"></script>
        <!-- AdminLTE App -->
        <script src="../../../dist/js/app.min.js"></script>
        <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
        <script src="../../../dist/js/pages/dashboard.js"></script>
        <!-- AdminLTE for demo purposes -->
        <script src="../../../dist/js/demo.js"></script>
    </body>
</html>
<% } %>

