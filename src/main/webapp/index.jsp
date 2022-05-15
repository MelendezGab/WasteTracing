<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>

    <title>Waste collection app</title>

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
    <h1><%= "Collected waste" %></h1><br/>

    <form method="post" action="myServlet" autocomplete="off">
        <div class="form-group">
            <label for="name">Waste type</label><br>
            <select name="name" id="name">
                <option value="pet">Plastic bottle</option>
                <option value="glassbottle">Glass bottle</option>
                <option value="aluminiumcan">Aluminium can</option>
                <option value="plasticbag">Plastic bag</option>
                <option value="cigarrette">Cigarrette butt</option>
                <option value="diaper">Disposable diapers</option>
            </select><br><br>

            <label for="amount">Amount:</label><br><br>
            <input type="text" class="form-control" id="amount" name="amount"><br><br>

            <label for="waste_location">Location:</label><br><br>
            <select name="waste_location" id="waste_location">
                <option value="cancun">Cancun</option>
                <option value="tulum">Tulum</option>
                <option value="puesc">Puerto Escondido</option>
                <option value="huatulco">Huatulco</option>
                <option value="acapulco">Acapulco</option>
                <option value="mazatlan">Mazatlan</option>
            </select><br><br>

            <input type="submit" value="Send">

        </div>



    </form><br><br>

    <a href="info.html"> More informationdsesds: </a>

    <div id="map-canvas" style="height:300px; width:500px"></div>



</body>
</html>