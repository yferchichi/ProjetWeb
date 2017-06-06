<%-- 
    Document   : listUsers
    Created on : 6 juin 2017, 05:34:50
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace Administration</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">

            <div class="page-header">
                <h1 align="center"> Administration</h1>
                <hr style="border-top: 3px double #8c8b8b;">
            </div>


        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4>Votes concours vidéo</h4>
                    <a href="activer?etat=activer&nom=video" class="btn btn-success btn-sm">
                        <span class="glyphicon glyphicon-ok"></span> Activer
                    </a>

                    <a href="activer?etat=desactiver&nom=video" class="btn btn-danger btn-sm">
                        <span class="glyphicon glyphicon-remove"></span> Désactiver
                    </a>

                </div>
                <div class="col-md-6">
                    <h4>Votes concours pulls</h4>
                    <a href="activer?etat=activer&nom=pull" class="btn btn-success btn-sm">
                        <span class="glyphicon glyphicon-ok"></span> Activer
                    </a>

                    <a href="activer?etat=desactiver&nom=pull" class="btn btn-danger btn-sm">
                        <span class="glyphicon glyphicon-remove"></span> Désactiver
                    </a>

                </div>
            </div>

            <div class="row" style="margin-top: 50px">
                <div class="col-md-12">
                    <div class="alert alert-info alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <span class="glyphicon glyphicon-exclamation-sign"></span><strong> Information: </strong> ${requestScope.message}.  
                    </div>
                </div>

            </div>
        </div>

    </div>

    <div class="container" style="margin-bottom: 20px; margin-top: 50px">
        <div class="row">
            <div class="col-md-12">
                <table class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>E-mail</th>
                            <th>Prénom</th>
                            <th>Nom</th>
                            <th>Profil</th>
                            <th>Nom Miage</th>
                            <th>Nom Entreprise</th>
                            <th>Numéro pack</th>
                            <th>Inscription</th>

                        </tr>

                    </thead>
                    <tbody>
                        <c:forEach var="user" items="${requestScope['allUsers']}">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.email}</td>
                                <td>${user.prenom}</td>
                                <td>${user.nom}</td>
                                <td>${user.profil}</td>
                                <td>${user.nomMiage}</td>
                                <td>${user.nomEnt}</td>
                                <td>${user.numPack}</td>
                                <td><button type="button" class="btn btn-info btn-sm">
                                        <span class="glyphicon glyphicon-ok-circle"></span> Valider
                                    </button></td>


                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
