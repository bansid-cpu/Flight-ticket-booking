<html>

<head>
    <title>Add a New Flight</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="Front with CSS.css">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.teal-orange.min.css" />
    <script src="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.min.js"></script>
    <script src="gen_validatorv4.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="css/footer-distributed-with-address-and-phones.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
    <link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
</head>


<body background="airplane.jpg">
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
        <header class="mdl-layout__header">
            <div class="mdl-layout__header-row">
                <!-- Title -->
                <span class="mdl-layout-title">Add a new Flight</span>
                <!-- Add spacer, to align navigation to the right -->
                <div class="mdl-layout-spacer"></div>
                <!-- Navigation. We hide it in small screens. -->
                <nav class="mdl-navigation mdl-layout--large-screen-only">
                    <a class="mdl-navigation__link" href="home.php">Home</a>
                    <a class="mdl-navigation__link" href="">About</a>
                    <a class="mdl-navigation__link" href="front.php">Login</a>
                    <a class="mdl-navigation__link" href="Aboutus.php">About Us</a>
                    <a class="mdl-navigation__link" href="admin.php">Administrators</a>
                </nav>
            </div>
        </header>
        <div class="mdl-layout__drawer">
            <span class="mdl-layout-title">Add a new flight</span>
            <nav class="mdl-navigation">
                <a class="mdl-navigation__link" href="home.php">Home</a>
                <a class="mdl-navigation__link" href="">About</a>
                <a class="mdl-navigation__link" href="front.php">Login</a>
                <a class="mdl-navigation__link" href="Aboutus.php">About Us</a>
                <a class="mdl-navigation__link" href="admin.php">Administrators</a>
            </nav>
        </div>
        <br><br>
            <div class="page-content"><center>
            <div class="demo-card-wide mdl-card mdl-shadow--16dp" style="width:400px">
                        <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                            <h3 style="color:white">
                                Add a New Flight
                            </h3>
                        </div>
                <br><br>
                <form action="add_flight_success.php" method="POST" id="addflight">
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="text" id="Flight_no" name="Flight_no" required>
                                <label class="mdl-textfield__label" for="Flight_No">Flight No.</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <select class="mdl-textfield__input" id="Source" name="Source" required>
      <option value="000" selected="selected">Choose Departure City</option>
      <option value="Delhi">Delhi</option>
      <option value="Mumbai">Mumbai</option>
      <option value="Chennai">Chennai</option>
      <option value="Kolkatta">Kolkatta</option>
      <option value="Bangalore">Bangalore</option>
    </select>
    <label class="mdl-textfield__label" for="Source">Source</label>
</div>
<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    <select class="mdl-textfield__input" id="Destination" name="Destination" required>
      <option value="000" selected="selected">Lets Go Places!!</option>
      <option value="Delhi">Delhi</option>
      <option value="Mumbai">Mumbai</option>
      <option value="Chennai">Chennai</option>
      <option value="Kolkatta">Kolkatta</option>
      <option value="Bangalore">Bangalore</option>
    </select>
    <label class="mdl-textfield__label" for="Destination">Destination</label>
  </div>
  <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
                                <input class="mdl-textfield__input" type="time" id="Departure"  name="Departure" required>
                                <label class="mdl-textfield__label" for="Departure">Departure</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" >
                                <input class="mdl-textfield__input" type="time" id="Arrival" name="Arrival" required >
                                <label class="mdl-textfield__label" for="Arrival">Arrival</label>
                            </div>
                            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" >
                                <input class="mdl-textfield__input" type="text" id="Fare" name="Fare" required>
                                <label class="mdl-textfield__label" for="Fare">Fare</label>
                            </div>
                            <div class="mdl-shadow--16dp" style="background-color:#000000"><br>
                            <input type="Submit" name="Add_Flight" value="Add a new flight" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--accent">
                
        </button><br><br></div>
        
            
            </form>
<script  type="text/javascript">
 var frmvalidator = new Validator("addflight");
 frmvalidator.addValidation("Flight_no","req","Please enter the Flight No.");
 frmvalidator.addValidation("Flight_no","minlen=3","Flight No. Too short, Please Enter a better one!");
 frmvalidator.addValidation("Source","dontselect=000","Please enter the Departure City");
 frmvalidator.addValidation("Destination","dontselect=000","Please enter the arrival city");
 frmvalidator.addValidation("Country","dontselect=000");
 frmvalidator.addValidation("Fare","greaterthan=0","Sorry We cant provide flights for free.");
 frmvalidator.addValidation("Fare","lessthan=25000","Whoops! The Fare is too high!");
</script>
            </div>
            </center>
            </div>
            <footer class="footer-distributed">

        <div class="footer-left">

            <h3>Tap<span></span>tick</h3>

            <p class="footer-links">
                <a href="home.php">Home</a> ·
                <a href="form.php">Signup</a> .
                <a href="front.php">Login</a> ·
                <a href="Aboutus.php">About Us</a> ·
                <a href="Admin_login.php">Administrators</a>
            </p>

            <p class="footer-company-name">Taptick &copy; 2017</p>
        </div>

        <div class="footer-center">

            <div>
                <i class="fa fa-map-marker"></i>
                <p><span>MODY UNIVERSITY</span> Rajasthan, India</p>
            </div>

            <div>
                <i class="fa fa-phone"></i>
                <p>+91 7043354552</p>
            </div>

            <div>
                <i class="fa fa-envelope"></i>
                <p><a href="mailto:dwijhariket@gmail.com">support@taptick.com</a></p>
            </div>

        </div>

        <div class="footer-right">

            <p class="footer-company-about">
                <span>About the company</span> Providing the best ticket booking experience with the least use of user inputs to deliver a hassle free experience and the best fares on our flights.
            </p>

            <div class="footer-icons">

                <a href="#"><i class="fa fa-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter"></i></a>
                <a href="#"><i class="fa fa-linkedin"></i></a>
               <!-- <a href="https://github.com/dwij2812/FlightBooking-system"><i class="fa fa-github"></i></a>-->

            </div>

        </div>

    </footer>
            </main>
            </body>
            </html>