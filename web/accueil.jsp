<%-- 
    Document   : accueil
    Created on : 6 juin 2017, 00:26:43
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="assets/css/business-frontpage.css" rel="stylesheet">
        <%@include file="liens.jsp" %>
        <title>Accueil</title>

    </head>
    <body>
        <%@include file="header.jsp" %>

        <header class="business-header">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="tagline">Journées Nationales de la MIAGE</h1>
                    </div>
                </div>
            </div>
        </header>

        <!-- Page Content -->
        <div class="container">

            <hr>

            <div class="row">
                <div class="col-sm-8">
                    <h2>Présentation</h2>
                    <p>Chaque année, depuis la création de la formation, le réseau MIAGE tout entier se donne rendez-vous dans une ville différente pour les Journées Nationales MIAGE. Cet évènement annuel, qui se déroule sur 3 jours, rassemble plus de 400 étudiants. En 2018, les JNM se dérouleront au coeur de la technopôle à Sophia Antipolis.</p>


                </div>
                <div class="col-sm-4">
                    <img src="assets/img/JNM-YOUSS.png" class="" alt="jnm" width="75%" style="margin-left: 40px; margin-top: 50px">
                </div>
            </div>
            <!-- /.row -->
        </div>
        <hr>

        <div class="container" style="margin-top: 70px">
            <div class="row" style="margin-left: 70px">

                <div class="col-sm-6">
                    <img class="img-circle img-responsive img-center" src="assets/img/maphoto.jpg" alt="Youssef" width="50%">
                    <h2 align="center">Youssef Ferchichi</h2>
                    <p style="margin-right: 20px">The images are set to be circular and responsive. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                </div>
                <div class="col-sm-6">
                    <img class="img-circle img-responsive img-center" src="assets/img/junior.jpg" alt="Junior" width="40%">
                    <h2 align="center">Junior Noubissi</h2>
                    <p style="margin-left: 20px">Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                </div>
            </div>
            <!-- /.row -->

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; M1 Miage 2017</p>
                    </div>
                </div>
                <!-- /.row -->
            </footer>

        </div>

    </body>
</html>
