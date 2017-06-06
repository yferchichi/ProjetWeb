<%-- 
    Document   : packs
    Created on : 4 juin 2017, 20:08:25
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app="myApp" ng-controller="packCtrl">
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Packs</title>
    </head>
    <body>
        <%@include file="header.jsp" %>

        <div class="container">

            <div class="page-header">

                <h1 align="center"> Choisissez un pack</h1>
                <!--<hr style="	border-top: 3px double #8c8b8b;">-->
            </div>
        </div>
        <div class="container">
            <div class="row text-center">
                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="assets/img/110.jpg" alt="110euros">
                        <div class="caption">
                            <h3>Pack étudiant</h3>
                            <p>
                                Hébergement mardi, mercredi, jeudi et vendredi,
                                Soirée Entreprises,
                                Soirée Gala,
                                Transport sur Sophia.
                            </p>
                            <p>
                                <a href="#paying" class="btn btn-primary btn-lg" ng-disabled="${sessionScope.sessionUser.profil == 'etudiant' && sessionScope.sessionUser.diplome == 0}" ng-click="valeur(1, 110)"  style="margin-top: 20px">Choisir ce pack</a> 
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="assets/img/160.jpg" alt="160euros">
                        <div class="caption">
                            <h3>Pack diplômé</h3>
                            <p>
                                Hébergement mardi, mercredi, jeudi et vendredi
                                Soirée Entreprises, 
                                Soirée Gala,
                                Transport sur Sophia.
                            </p>
                            <p>
                                <a href="#paying" class="btn btn-primary btn-lg" ng-disabled="${sessionScope.sessionUser.profil == 'etudiant' && sessionScope.sessionUser.diplome == 1}" ng-click="valeur(2, 160)"  style="margin-top: 20px">Choisir ce pack</a> 
                            </p>
                        </div>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6 hero-feature">
                    <div class="thumbnail">
                        <img src="assets/img/100.jpg" alt="100euros">
                        <div class="caption">
                            <h3>Pack diplômé sans hébergement</h3>
                            <p>
                                Repas mercredi midi au vendredi,
                                Soirée Entreprises,
                                Soirée Gala,
                                Transport sur Sophia.
                            </p>
                            <p>
                                <a href="#paying" class="btn btn-primary btn-lg" ng-disabled="${sessionScope.sessionUser.profil == 'etudiant' && sessionScope.sessionUser.diplome == 1}" ng-click="valeur(3, 100)"   style="margin-top: 20px">Choisir ce pack</a> 
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div id="paying">
            <div class="container" style="margin-top: 30px; margin-bottom: 30px">
                <div class="row">
                    <div class="col-md-7">
                        <fieldset>
                            <legend><span class="glyphicon glyphicon-credit-card"></span> Procéder au paiement </legend>
                            <form method="post" action="packs" name="payForm" class="form-horizontal" >

                                <div class="form-group">
                                    <label>Type de carte bancaire :</label>
                                    <div class="radio">
                                        <label><input type="radio" value="visa" name="type">Visa</label>
                                    </div>
                                    <div class="radio">
                                        <label><input type="radio" value="mastercard" name="type">Mastercard</label>
                                    </div>
                                </div>
                                <div class="form-group" ng-class="{
                                        'has-error'
                                                :payForm.num.$invalid && payForm.num.$dirty, 'has-success':payForm.num.$valid && payForm.num.$dirty}">
                                    <label for="num">N° de Carte :</label>
                                    <input type="text" name="num" ng-model="num" id="num" class ="form-control" ng-minlength="16" ng-maxlength="16">
                                    <p class="help-block" ng-show="payForm.num.$invalid && payForm.num.$dirty">Numéro de carte invalide</p>
                                </div>

                                <div class="form-group" ng-class="{
                                        'has-error'
                                                :payForm.code.$invalid && payForm.code.$dirty, 'has-success':payForm.code.$valid && payForm.code.$dirty}">
                                    <label for="code">Code de sécurité :</label>
                                    <input type="text" name="code" id="code" ng-model="code" class="form-control" ng-minlength="3" ng-maxlength="3">
                                    <p class="help-block" ng-show="payForm.code.$invalid && payForm.code.$dirty">Code invalide</p>
                                </div>

                                <div class="form-group" ng-class="{
                                        'has-error'
                                                :payForm.nom.$invalid && payForm.nom.$dirty, 'has-success':payForm.nom.$valid && payForm.nom.$dirty}">
                                    <label for="nom">Nom du détenteur :</label>
                                    <input type="text" name="nom" id="nom" ng-model="nom" ng-minlength="4" class="form-control" required>
                                    <p class="help-block" ng-show="payForm.nom.$invalid && payForm.nom.$dirty">Trop court</p>
                                </div>

                                <input type="hidden" name="formula" id="pack" ng-model="formula" class="form-control">

                                <div class="form-group">
                                    <label>Somme à régler : </label><h4>{{prix}} &euro;</h4>
                                </div>
                                <button class="btn btn-success btn-block" ng-disabled="payForm.code.$invalid || payForm.num.$invalid || payForm.nom.$invalid" style="margin-top: 20px">Confirmer le paiement</button>
                            </form>

                        </fieldset>
                    </div>

                    <div class="col-md-5">

                        <div class="well" style="margin-left: 50px; margin-top: 100px"><p><strong>Règlements:</strong> vous pouvez également régler par virement bancaire. 
                                Nous vous confiremeront votre inscription dans les plus brefs délais.</p></div>

                        <div ng-show="visible" style="margin-left: 50px;">
                            <div class="alert alert-info alert-dismissable fade in">
                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                <span class="glyphicon glyphicon-exclamation-sign"></span><strong> Info!</strong> Si vous êtes une entreprise partenaire ne payez pas et contacez la MIAGE de Nice.  
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script>
                var app = angular.module('myApp', []);
                app.controller('packCtrl', function ($scope, $timeout) {
                    $scope.valeur = function (numPack, prix) {
                        $scope.formula = numPack;
                        $scope.prix = prix;
                    }

                    $timeout(function () {
                        $scope.visible = true;
                    }, 4000);


                });
        </script>
    </body>
</html>
