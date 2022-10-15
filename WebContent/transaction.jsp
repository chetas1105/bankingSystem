<%@page import="model.TransactionDao" %>
  <%@page import="model.AllTransactions" %>
    <%@ page import="model.UserDao" %>
      <%@ page import="model.User" %>
        <%@ page import="java.sql.*" %>
          <%@ page import="java.util.List" %>

            <% if(session.getAttribute("CRN")==null){ out.print("Please login first");
              response.sendRedirect("index.jsp"); } List<User> all = new UserDao().showData();
              for (User u : all) {
              if (u.getCRN().equals(session.getAttribute("CRN"))) {
              session.setAttribute("fname", u.getFname());
              session.setAttribute("lname", u.getLname());
              session.setAttribute("mobile_number", u.getMobile_number());
              session.setAttribute("city", u.getCity());
              session.setAttribute("accountBalance", u.getAccountBalance());
              session.setAttribute("mpin", u.getMpin());
              session.setAttribute("accountNo", u.getAccountNo());
              }
              }
              %>
              <% response.setHeader("Pragma","no-cache"); response.setHeader("Cache-Control","no-store");
                response.setHeader("Expires","0"); response.setDateHeader("Expires",-1); %>

                <%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
                  <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
                  <html lang="en">

                  <head>
                    <meta charset="utf-8">
                    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                    <title>Transactions</title>

                    <link rel="stylesheet" href="vendors/feather/feather.css">
                    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
                    <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">

                    <link rel="stylesheet" href="vendors/datatables.net-bs4/dataTables.bootstrap4.css">
                    <link rel="stylesheet" href="vendors/ti-icons/css/themify-icons.css">
                    <link rel="stylesheet" type="text/css" href="js/select.dataTables.min.css">

                    <link rel="stylesheet" href="css/vertical-layout-light/style.css">

                    <link rel="shortcut icon" href="images/favicon.png" />

                    <style>
                      #tp {
                        background: none;
                        color: inherit;
                        border: none;
                        padding: 0;
                        font: inherit;
                        cursor: pointer;
                        outline: inherit;

                      }
                    </style>
                  </head>

                  <body>
                    <div class="container-scroller">
                      <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
                        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
                          <a class="navbar-brand brand-logo mr-5" href="userDashBoard.jsp"><img src="images/2.png"
                              class="mr-2" alt="logo" /></a>
                          <a class="navbar-brand brand-logo-mini" href="userDashBoard.jsp"><img src="images/1.png"
                              alt="logo" /></a>
                        </div>
                        <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
                          <button class="navbar-toggler navbar-toggler align-self-center" type="button"
                            data-toggle="minimize">
                            <span class="icon-menu"></span>
                          </button>
                          <ul class="navbar-nav mr-lg-2">
                            <li class="nav-item nav-search d-none d-lg-block">
                              <div class="input-group">
                                <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
                                  <span class="input-group-text" id="search">
                                    <i class="icon-search"></i>
                                  </span>
                                </div>
                                <input type="text" class="form-control" id="navbar-search-input"
                                  placeholder="Search now" aria-label="search" aria-describedby="search">
                              </div>
                            </li>
                          </ul>
                          <ul class="navbar-nav navbar-nav-right">

                            <li class="nav-item nav-profile dropdown">
                              <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
                                <img src="images/faces/avatardefault_92824.png" alt="profile" />
                              </a>
                              <div class="dropdown-menu dropdown-menu-right navbar-dropdown"
                                aria-labelledby="profileDropdown">
                                <a class="dropdown-item">
                                  <i class="ti-settings text-primary"></i>
                                  Settings
                                </a>
                                <button type="submit" id="tp">
                                  <a class="dropdown-item" href="logout">
                                    <i class="ti-power-off text-primary"></i>
                                    Logout
                                  </a>
                                </button>
                              </div>
                            </li>

                          </ul>
                          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                            data-toggle="offcanvas">
                            <span class="icon-menu"></span>
                          </button>
                        </div>
                      </nav>
                      <div class="container-fluid page-body-wrapper">
                        <nav class="sidebar sidebar-offcanvas" id="sidebar">
                          <ul class="nav">
                            <li class="nav-item">
                              <a class="nav-link" href="userDashBoard.jsp">
                                <i class="icon-grid menu-icon"></i>
                                <span class="menu-title">Dashboard</span>
                              </a>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false"
                                aria-controls="ui-basic">
                                <i class="icon-head menu-icon"></i>
                                <span class="menu-title">Tranfer funds</span>
                                <i class="menu-arrow"></i>
                              </a>
                              <div class="collapse" id="ui-basic">
                                <ul class="nav flex-column sub-menu">
                                  <li class="nav-item"> <a class="nav-link" href="addFund.jsp">Add funds</a></li>
                                  <li class="nav-item"> <a class="nav-link" href="withdrawFunds.jsp">Withdraw</a></li>
                                  <li class="nav-item"> <a class="nav-link" href="balance.jsp">Check Balance</a></li>
                              </div>
                            </li>
                            <li class="nav-item">
                              <a class="nav-link" data-toggle="collapse" href="#form-elements" aria-expanded="false"
                                aria-controls="form-elements">
                                <i class="icon-paper menu-icon"></i>
                                <span class="menu-title">Transactions</span>
                                <i class="menu-arrow"></i>
                              </a>
                              <div class="collapse" id="form-elements">
                                <ul class="nav flex-column sub-menu">
                                  <li class="nav-item"><a class="nav-link" href="transaction.jsp">Transaction
                                      History</a>
                                  </li>
                                </ul>
                              </div>
                            </li>
                          </ul>
                        </nav>



                        <div class="col-lg-10 grid-margin stretch-card">
                          <div class="card">
                            <div class="card-body">
                              <h4 class="card-title">Transaction History</h4>

                              <div class="table-responsive">
                                <table class="table table-striped">
                                  <thead>
                                    <tr>
                                      <th>
                                        Account Number
                                      </th>
                                      <th>
                                        Time
                                      </th>
                                      <th>
                                        Date
                                      </th>
                                      <th>
                                        Amount
                                      </th>
                                      <th>
                                        Details
                                      </th>
                                    </tr>
                                  </thead>
                                  <tbody>
                                    <% String acc=(String)session.getAttribute("accountNo"); List<AllTransactions> ls =
                                      new TransactionDao().show(acc);
                                      for(AllTransactions tr : ls)
                                      {
                                      %>
                                      <tr>
                                        <td>
                                          <%= tr.getAccountNo() %>
                                        </td>
                                        <td>
                                          <%= tr.getDate() %>
                                        </td>
                                        <td>
                                          <%= tr.getAmount() %>
                                        </td>
                                        <td>
                                          <%= tr.getDetails() %>
                                        </td>
                                      </tr>
                                      <% } %>
                                  </tbody>
                                </table>
                              </div>
                            </div>
                          </div>
                        </div>
                      </div>



                    </div>

                    </div>

                    </div>



                    <script src="vendors/js/vendor.bundle.base.js"></script>

                    <script src="vendors/chart.js/Chart.min.js"></script>
                    <script src="vendors/datatables.net/jquery.dataTables.js"></script>
                    <script src="vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
                    <script src="js/dataTables.select.min.js"></script>

                    <script src="js/off-canvas.js"></script>
                    <script src="js/hoverable-collapse.js"></script>
                    <script src="js/template.js"></script>
                    <script src="js/settings.js"></script>
                    <script src="js/todolist.js"></script>

                    <script src="js/dashboard.js"></script>
                    <script src="js/Chart.roundedBarCharts.js"></script>

                  </body>

                  </html>