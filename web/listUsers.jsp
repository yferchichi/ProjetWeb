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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">

            <div class="page-header">
                <h1 align="center"> Tous les utilisateurs</h1>
                <hr style="border-top: 3px double #8c8b8b;">
            </div>


        </div>

        <div class="container" style="margin-bottom: 20px">
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
                                <th>Vaildée</th>

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
                                    <td><button class="btn btn-sm btn-success">Valider</button></td>


                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>


                </div>

            </div>


        </div>
    </body>
</html>
