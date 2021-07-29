<%--
  Created by IntelliJ IDEA.
  User: lucious
  Date: 14/10/20
  Time: 9:59 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Blood Bank</title>
    <link rel="stylesheet" href="./css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"> </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</head>
<body>
<!----Navigation Bar-->
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
                    <a class="nav-link" href="#about">About </a>
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
<!-----Slider-->
<img src="./images/photoblood.jpg" class="img-fluid" alt="Responsive image">
<!------About-->
<section id="about">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2>About</h2>
                <div class="about-content">
                    World has a huge need of blood in today's World.There is a need of blood not because of
                    road accidents but also due to Blood related problems.A blood bank is a center where blood
                    gathered as a result of blood donation is stored and preserved for later use in blood transfusion.
                    The term "blood bank" typically refers to a division of a hospital where the storage of blood product occurs
                    and where proper testing is performed.
                </div>
            </div>
            <div class="col-md-6">
                <br><br>
                <img src="./images/bloodtype.png" alt="Type of blood">
            </div>
        </div>
    </div>
</section>

<!----Important dates---->
<section id="impdates">
    <h2>Important Dates</h2>
    <br>

    <table class="table table-bordered table-responsive-md">
        <tr>
            <th>Day</th>
            <th>Date</th>
        </tr>
        <tr>
            <td>World Health Day</td>
            <td>7th April</td>
        </tr>
        <tr>
            <td>World Thalesimia Day</td>
            <td>8th May</td>
        </tr>
        <tr>
            <td>World Blood Donar Day</td>
            <td>14th June</td>
        </tr>
        <tr>
            <td>World Voluntary Donation Day</td>
            <td>1st October</td>
        </tr>
    </table>
</section>

<!----Services-->
<section id="services">
    <div class="container">
        <h1>Our Services</h1>
        <h5>Blood Bank is an initiative to connect, digitize and streamline the work flow of blood banks across the nation</h5>
        <div class="row services">
            <div class="col-md-3 text-center">
                <div class="icon">
                    <i class="fa fa-tint"></i>
                </div>
                <h3>Blood Availibility</h3>
                <p>Get Status of available blood stock in blood banks</p>
                <button type="button" class="btn btn-primary">Check Blood Availibility</button>
            </div>
            <div class="col-md-3 text-center">
                <div class="icon">
                    <i class="fa fa-clock-o"></i>
                </div>
                <h3>Camp Schedule</h3>
                <p>View and register for blood Donation Camps</p>
                <a href="campschedule.jsp">
                    <button type="button" class="btn btn-primary">Register</button>
                </a>
            </div>
            <div class="col-md-3 text-center">
                <div class="icon">
                    <i class="fa fa-location-arrow"></i>
                </div>
                <h3>Nearby Blood Bank</h3>
                <p>Get contact and navigation details of blood banks</p>
                <button type="button" class="btn btn-primary">Locate</button>
            </div>
            <div class="col-md-3 text-center">
                <div class="icon">
                    <i class="fa fa-user"></i>
                </div>
                <h3>My Donations</h3>
                <p>Register , track and  maintain your profile </p><br>
                <button type="button" class="btn btn-primary">Get Started</button>
            </div>
        </div>
    </div>
</section>
<!----Learn about donation-->
<section id="blood_understand">
    <div class="container">
        <h1>LEARN ABOUT DONATION</h1>
        <br>
        <div class="row services ">
            <div class="wow col-sm-6 rotateInDownRight text-center animated" data-wow-delay="0ms" data-wow-duration="1000ms" style="visibility: visible; animation-duration: 1000ms; animation-delay: 0ms; animation-name: rotateInDownRight;">
                ​<picture>
                <source srcset="./images/donate.png" type="image/svg+xml">
                <img src="donate.png" class="img-fluid img-thumbnail" alt="Type of blood donation">
                <blockquote>
                    <p style="font-family:oswald,serif">After donating blood, the body works to replenish the blood loss. This stimulates the production of new blood cells and in turn, helps in maintaining good health.</p>
                    <p>
                    </p>
                </blockquote>
                <button onclick="window.location='donate.jsp'" class="btn btn-danger svcNearBy hvr-sweep-to-right "><i class="fa fa-tint" aria-hidden="true"></i>&nbsp; Donate Now</button>
                <br>
                <br>
            </picture>
            </div>
            <div class="col-sm-6">
                <table class="table table-bordered table-responsive-md">
                    <tbody>
                    <tr>
                        <th colspan="3" style="color:white;background-color:red;">Compatible Blood Type Donors</th>
                    </tr>
                    <tr>
                        <td><b>Blood Type</b></td>
                        <td><b>Donate Blood To</b></td>
                        <td><b>Receive Blood From</b></td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>A+</b></span></td>
                        <td>A+ AB+</td>
                        <td>A+ A- O+ O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>O+</b></span></td>
                        <td>O+ A+ B+ AB+</td>
                        <td>O+ O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>B+</b></span></td>
                        <td>B+ AB+</td>
                        <td>B+ B- O+ O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>AB+</b></span></td>
                        <td>AB+</td>
                        <td>Everyone</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>A-</b></span></td>
                        <td>A+ A- AB+ AB-</td>
                        <td>A- O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>O-</b></span></td>
                        <td>Everyone</td>
                        <td>O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>B-</b></span></td>
                        <td>B+ B- AB+ AB-</td>
                        <td>B- O-</td>
                    </tr>
                    <tr>
                        <td><span style="color: #961e1b;"><b>AB-</b></span></td>
                        <td>AB+ AB-</td>
                        <td>AB- A- B- O-</td>
                    </tr>
                    </tbody>
                </table>
            </div>
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
