<%-- 
    Document   : participer
    Created on : 4 juin 2017, 17:35:54
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Participer</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">

            <div class="page-header">

                <h1 align="center"> Complétez vos informations</h1>
                <!--<hr style="	border-top: 3px double #8c8b8b;">-->
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-md-7">
                        <form method="post" action="participer" name="monForm" class="form-horizontal">

                            <div class="form-group">
                                <label for="profil">Vous êtes :</label>
                                <select name="profil" class="form-control">
                                    <option value="etudiant">Etudiant Miagiste</option>
                                    <option value="enseignant">Enseignant</option>
                                    <option value="entreprise">Entreprise partenaire</option>
                                </select>
                            </div>

                            <button class="btn btn-success" style="margin-top: 20px">Confirmer</button>

                        </form>

                    </div>

                    <div class="col-md-5"  style="padding-left: 70px">

                        <img src="assets/img/JNM-YOUSS.png" alt="jnm" class="img-responsive">


                    </div>
                </div>

            </div>


    </body>
</html>
