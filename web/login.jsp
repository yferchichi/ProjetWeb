<%-- 
    Document   : login.jsp
    Created on : 4 juin 2017, 00:51:19
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="liens.jsp" %>
        <title>Se connecter</title>
    </head>
    <body>
        <%@include file="header.jsp"%>

        <div class="container">

            <div class="page-header">

                <h1 align="center">Bienvenue !</h1>
                <hr style="border-top: 3px double #8c8b8b;">
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6" style="padding-right: 40px">
                    <img src="assets/img/JNM-YOUSS.png" style="margin-bottom: 50px" class="img-rounded" alt="jnm 2018" width="90%"><br>
                    <fieldset>
                        <legend>Pas encore inscrit(e) ?</legend>
                        <center><a href="${pageContext.request.contextPath}/inscription"><button class="btn btn-success btn-lg">Créer un compte</button></a></center>
                    </fieldset>
                </div>
                <div class="col-md-6" style="padding-left: 50px">

                   <!-- <div style="margin-bottom: 30px" ng-show="${requestScope.success == false}">

                        <div class="alert alert-danger">
                            <strong>Echec!</strong> Utilisateur inexistant.
                        </div>
                    </div>-->
                    <form method="post" action="login" class="form-horizontal">
                        <fieldset>
                            <legend>Connectez-vous</legend>
                            <div class="form-group">
                                <label for="email">Votre E-mail :</label><br/>
                                <input type="email" name="email" id="email" class="form-control" placeholder="Tapez votre adresse ici">
                            </div>
                            <div class="form-group">					
                                <label for="mdp">Mot de passe :</label><br/>
                                <input type="password" name="motdepasse" id="mdp" class="form-control" placeholder="Votre mot de passe">
                            </div>
                            <center><button class="btn btn-primary">Se connecter</button></center>
                        </fieldset>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
