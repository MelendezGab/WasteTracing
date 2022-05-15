<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <title>Waste collection app</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="./css/styles.css">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script
            src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
        var map;
        function initialize() {
            var mapOptions = {
                zoom: 8,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"> <img src="img/logo.png" alt="logo_waste"> </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="information.html"> Information </a>
            </li>

            <li class="nav-item">
                <a class="nav-link disabled" href="#">About</a>
            </li>
        </ul>
    </div>
</nav>



<div class = "main_container">
    <div class="div_container">
    <h1><%= "Waste collector" %></h1><br/>
        <div class="container py-5">
            <div class="row">
                <div class="col-md-10 mx-auto">
                    <form method="post" action="myServlet" autocomplete="off">
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <label for="name">Waste type</label>
                                <select class="form-control" name="name" id="name">
                                    <option value="pet">Plastic bottle</option>
                                    <option value="glassbottle">Glass bottle</option>
                                    <option value="aluminiumcan">Aluminium can</option>
                                    <option value="plasticbag">Plastic bag</option>
                                    <option value="cigarrette">Cigarrette butt</option>
                                    <option value="diaper">Disposable diapers</option>
                                </select>
                            </div>
                            <div class="col-sm-6">
                                <label for="amount">Amount</label>
                                <input type="text" id="amount" name="amount" class="form-control" placeholder="Numeric">
                            </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-sm-6">
                                <label for="waste_location">Location</label>
                                <select name="waste_location" id="waste_location" class="form-control">
                                    <option value="cancun">Cancun</option>
                                    <option value="tulum">Tulum</option>
                                    <option value="puesc">Puerto Escondido</option>
                                    <option value="huatulco">Huatulco</option>
                                    <option value="acapulco">Acapulco</option>
                                    <option value="mazatlan">Mazatlan</option>
                                </select>
                            </div>
                        </div>
                        <input type="submit" class="btn btn-primary px-4 float-right" value="Send"></input>
                    </form>
                </div>
            </div>
        </div>



        <a href="info.html"> More information: </a>

        <div id="map-canvas" style="height:300px; width:100%"></div>
    </div>
</div>



</body>
</html>