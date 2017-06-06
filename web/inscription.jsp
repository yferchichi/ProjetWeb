<%-- 
    Document   : inscription.jsp
    Created on : 4 juin 2017, 16:16:50
    Author     : Youssef
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>S'inscrire</title>
    </head>
    <body>
        <%@ include file="header.jsp"%>

        <div class="container">

            <div class="page-header">

                <h1 align="center"> Inscrivez-vous</h1>
                <!--<hr style="	border-top: 3px double #8c8b8b;">-->
            </div>


        </div>

        <div class="container" style="padding-bottom: 30px">
            <div class="row">
                <div class="col-md-8">

                    <c:if test="${not empty requestScope.success}">
                        <div class="alert alert-success alert-dismissable fade in">
                            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>

                            <strong>Succès!</strong> Veuiilez cliquer <a href="${pageContext.request.contextPath}/participer">ici</a> pour renseigner toutes vos informations et paticiper.
                        </div>
                    </c:if>
                    <form method="post" action="inscription" class="form-horizontal" name="monForm">
                        <fieldset>
                            <legend>Vos informations</legend>

                            <div class="form-group">
                                <label for="prenom">Prénom/Raison sociale :</label>
                                <input type="text" name="prenom" id="prenom" class="form-control" placeholder="Votre prénom..">
                            </div>

                            <div class="form-group">
                                <label for="nom">Nom :</label>
                                <input type="text" name="nom" id="nom" class="form-control" placeholder="Votre nom..">
                            </div>

                            <div class="form-group" ng-class="{
                                    'has-success'
                                            : monForm.email.$valid && monForm.email.$dirty, 'has-error': monForm.email.$invalid && monForm.email.$dirty}">
                                <label for="email">Adresse mail :</label>
                                <input type="email" name="email" id="email" ng-model="email" class="form-control" placeholder="Votre adresse mail.." required>
                                <p class="help-block" ng-show="monForm.email.$invalid && monForm.email.$dirty">Adresse non valide</p>
                            </div>

                            <div class="form-group" ng-class="{
                                    'has-success'
                                            : monForm.motdepasse.$valid && monForm.motdepasse.$dirty, 'has-error': monForm.motdepasse.$invalid && monForm.motdepasse.$dirty}">
                                <label for="mdp1">Mot de passe :</label>
                                <input type="password" name="motdepasse" id="mdp1" ng-model="pwd1" class="form-control" ng-minlength="6" placeholder="Taper votre mot de passe" required>
                                <p class="help-block" ng-show="monForm.motdepasse.$invalid && monForm.motdepasse.$dirty">Minimum 6 caractères</p>
                            </div>

                            <div class="form-group" style="margin-bottom: 30px" ng-class="{
                                    'has-success'
                                            : !monForm.motdepasse2.$error.pattern && monForm.motdepasse2.$dirty && monForm.motdepasse2.$valid, 'has-error' :monForm.motdepasse2.$error.pattern && monForm.motdepasse2.$dirty && monForm.motdepasse2.$invalid }">
                                <label for="mdp2">Confirmation mot de passe :</label>
                                <input type="password" name="motdepasse2" id="mdp2" ng-model="pwd2" class="form-control" ng-minlength="6" placeholder="Confirmer votre mot de passe" ng-pattern="pwd1" required>
                                <p class="help-block" ng-show="monForm.motdepasse2.$error.pattern">Mots de passes non conformes</p>
                            </div>
                            <div class="form-group  ">
                                <label for="profil">Vous êtes :</label>
                                <select name="profil" id="profil" class="form-control" ng-model="monProfil">
                                    <option value="etudiant">Etudiant Miagiste</option>
                                    <option value="enseignant">Enseignant</option>
                                    <option value="entreprise">Entreprise partenaire</option>
                                </select>
                            </div>

                            <button ng-disabled="monForm.motdepasse.$invalid || monForm.email.$invalid || monForm.motdepasse2.$invalid" class="btn btn-success btn-block">Valider</button>

                        </fieldset>
                        <!--<pre>{{monForm | json}}</pre>-->
                    </form>
                </div>

                <div class="col-md-4" style="padding-left: 100px ">

                    <img src="assets/img/miage.png" alt="miage" style="margin-bottom: 70px">

                    <img src="assets/img/unice.png" alt="Université de Nice" class="img-rounded" >

                </div>

            </div>

        </div>

    </body>
</html>
