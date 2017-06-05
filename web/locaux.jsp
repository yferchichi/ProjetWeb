<%-- 
    Document   : lieu.jsp
    Created on : 4 juin 2017, 16:46:41
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nous trouver</title>
    </head>
    <body>
        <%@include file="header.jsp" %>


        <div class="container">

            <div class="page-header">

                <h1 align="center"> Nous trouver</h1>
                <!--<hr style="	border-top: 3px double #8c8b8b;">-->
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-5" style="margin-bottom: 30px">

                    <h4>Nous sommes ici !</h4>


                    <iframe
                        width="420"
                        height="450"
                        frameborder="0" style="border:0"
                        src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDJedqc1En_xjnJktC5ag5rO-XHe1Ls5MU
                        &q=Université+Nice+Sophia+Antipolis,Biot+France" allowfullscreen>
                    </iframe>				

                </div>


                <div class="col-md-7">


                    <h3>Comment arriver à la Miage de Nice ?</h3>

                    <ul>

                        <li><h4>De l'aéroport de Nice-Côte d'Azur <span class="glyphicon glyphicon-plane"></span> :</h4> Sortir de l'aéroport, 
                            aller jusqu'à l'arrêt de bus "Aéroport / Promenade" et prendre la ligne 230 Direction GR SOPHIA, descendre à l'arrêt Albert Caquot (ne circule pas les week-ends)</li>

                        <li><h4>De la gare SNCF d'Antibes <span class="glyphicon glyphicon-road"></span> :</h4> Sortir de la gare, monter vers la gare routière, aller jusqu'au quai n°5 et prendre le bus de la ligne 1 (jaune) direction GR Sophia Antipolis, descendre à l'arrêt Albert Caquot</li>


                    </ul>


                    <div class="row"> 
                        <div class="col-md-6">
                            <h3>Adresse exacte : <span class="glyphicon glyphicon-map-marker"></span>
                            </h3> 
                            MIAGE<br>
                            Université Nice Sophia Antipolis<br/>
                            Bâtiment Lucioles<br/>
                            1645 Route des Lucioles<br/>
                            06410 Biot 
                        </div>

                        <div class="col-md-6">

                            <h3>Nous contacter :</h3>

                            <p>Par mail <span class="glyphicon glyphicon-envelope"></span> :<br/><a href="">miage@unice.fr</a></p>
                            <p>Par téléphone <span class="glyphicon glyphicon-earphone"></span> : <br/>04 92 38 85 00</p>

                        </div>
                    </div>
                </div>
            </div>

        </div>
        <script>
            function initMap() {
                var mapDiv = document.getElementById('map');
                var map = new google.maps.Map(mapDiv, {
                    center: {
                        lat: 43.6171392,
                        lng: 7.0623329
                    },
                    zoom: 10,
                    scrollwheel: false,
                });
                var marker = new google.maps.Marker({
                    position: map.getCenter(),
                    animation: google.maps.Animation.BOUNCE,
                    icon: 'img/map-marker.png',
                    map: map
                });
            }
        </script>
        <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDJedqc1En_xjnJktC5ag5rO-XHe1Ls5MU&callback=initMap"></script>

    </body>
</html>
