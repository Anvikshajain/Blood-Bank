<%--
  Created by IntelliJ IDEA.
  User: lucious
  Date: 14/10/20
  Time: 10:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        }catch(Exception e){System.out.println(e);}
    Connection connection;
    Statement statement;
    ResultSet resultSet;
    %>
<!DOCTYPE html>
<html>
<head>
    <title>Donate-Blood Bank</title>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<section id="nav-bar">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Blood Bank</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="index.jsp">Home </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp">About </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="donate.jsp">Donate </a>
                </li>
                <li class="nav-item ">
                    <a class="nav-link" href="hospital.jsp">Hospital </a>
                </li>
            </ul>
        </div>
    </nav>
</section>


<section id="donate">
    <div class="card">
        <div class="card-body" style="text-align: right;">
            <div class="btn-group" role="group" aria-label="Basic example">
                <a class="btn btn-primary" href="https://forms.office.com/Pages/ResponsePage.aspx?id=DQSIkWdsW0yxEjajBLZtrQAAAAAAAAAAAAN__v7qFrxURFY0WDhHWFpIOFNMRkNLNzZCWTFFTDdDSy4u" role="button">New Request</a>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-body">

            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th scope="col"></th>
                    <th scope="col">Name</th>
                    <th scope="col">Blood Required</th>
                    <th scope="col">Contact</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try{
                        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","lucious","u*r*good1");
                        statement=connection.createStatement();
                        String sqlquery="select * from donate_cnf";
                        resultSet=statement.executeQuery(sqlquery);
                        int i=1;
                        while (resultSet.next()){
                            %>
                <tr>
                    <th scope="row"><%=i++%></th>
                    <td><%=resultSet.getString("f_name")%></td>
                    <td><%=resultSet.getString("blood_type")%></td>
                    <%
                        String name=resultSet.getString("f_name")+" "+resultSet.getString("l_name");
                        String phone=resultSet.getString("phone_no");
                        String blood=resultSet.getString("blood_type");
                        String hname=resultSet.getString("h_name");
                        String haddress=resultSet.getString("h_address");
                            %>
                    <td><button class="btn btn-primary" type="submit" data-toggle="modal" data-target="#exampleModal">Contact</button></td>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Contact Details</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    Name : <%=name%>
                                    <br>Phone No.: <%=phone%>
                                    <br>Blood Type : <%=blood%>
                                    <br>Hospital Name : <%=hname%>
                                    <br>Hospital Address: <%=haddress%>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>

                    </div>
                </tr>
                        <%
                        }
                        connection.close();
                    }catch (Exception e){System.out.println(e);}
                %>
                </tbody>
            </table>
        </div>
    </div>
</section>

<!----Footer-->
<section id="footer">
    <div class="container text-center">
        <p>Made With <i class="fa fa-heart-o"></i> by US</p>
    </div>
</section>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript">
    $('body').on('hidden.bs.modal', '.modal', function () {
        $(this).removeData('bs.modal');
    });
</script>
</body>
</html>