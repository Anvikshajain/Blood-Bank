
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
    <title>Camp Schedule-Blood Bank</title>
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

<img src="images/bannerbloodbank.jpg" class="img-fluid" alt="Responsive image">

<section id="camp">
    <div class="card">
        <div class="card-body">

            <table class="table table-bordered table-hover">
                <thead>
                <tr>
                    <th scope="col">S.No</th>
                    <th scope="col">Date</th>
                    <th scope="col">Time</th>
                    <th scope="col">Camp Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">State</th>
                    <th scope="col">District</th>
                    <th scope="col">Contact</th>
                    <th scope="col">Conducted By</th>
                    <th scope="col">Organized By</th>
                </tr>
                </thead>
                <tbody>
                <%
                    try{
                        connection=DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank","YOUR_SQL_NAME","YOUR_PASSWORD");
                        statement=connection.createStatement();
                        String sqlquery="select * from cmp_schedule";
                        resultSet=statement.executeQuery(sqlquery);
                        int i=1;
                        while (resultSet.next()&&i<=10){
                %>
                <tr>
                    <th scope="row"><%=i++%></th>
                    <td><%=resultSet.getString("date")%></td>
                    <td><%=resultSet.getString("time")%></td>
                    <td><%=resultSet.getString("camp_name")%></td>
                    <td><%=resultSet.getString("address")%></td>
                    <td><%=resultSet.getString("state")%></td>
                    <td><%=resultSet.getString("district")%></td>
                    <td><%=resultSet.getString("contact")%></td>
                    <td><%=resultSet.getString("conducted_by")%></td>
                    <td><%=resultSet.getString("organized_by")%></td>
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
</body>
</html>