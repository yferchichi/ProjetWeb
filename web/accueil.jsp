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
        <link href="css/business-frontpage.css" rel="stylesheet">
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
                    <h2>What We Do</h2>
                    <p>Introduce the visitor to the business using clear, informative text. Use well-targeted keywords within your sentences to make sure search engines can find the business.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Et molestiae similique eligendi reiciendis sunt distinctio odit? Quia, neque, ipsa, adipisci quisquam ullam deserunt accusantium illo iste exercitationem nemo voluptates asperiores.</p>

                </div>
                <div class="col-sm-4">

                </div>
            </div>
            <!-- /.row -->

            <hr>

            <div class="row" style="margin-left: 70px">

                <div class="col-sm-6">
                    <img class="img-circle img-responsive img-center" src="assets/img/maphoto.jpg" alt="Youssef" width="50%">
                    <h2 align="center">Youssef Ferchichi</h2>
                    <p>The images are set to be circular and responsive. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
                </div>
                <div class="col-sm-6">
                    <img class="img-circle img-responsive img-center" src="assets/img/junior.jpg" alt="Junior" width="40%">
                    <h2 align="center">Junior Noubissi</h2>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui.</p>
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
