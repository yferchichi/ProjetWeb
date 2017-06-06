<%-- 
    Document   : voter
    Created on : 6 juin 2017, 03:01:59
    Author     : Youssef
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html ng-app>
    <head>
        <%@include file="liens.jsp" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Voter</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        <div class="container">

            <div class="page-header">

                <h1 align="center"> Voter pour les concours </h1>
                <hr style="border-top: 3px double #8c8b8b;">
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h4>Vote concours Vidéo</h4>
                    <button type="button" class="btn btn-info btn-sm" style="margin-right: 5px;" ng-click="show1 = true" ng-init="show1 = false">
                        <span class="glyphicon glyphicon-plus"></span> Défiler
                    </button>

                    <button type="button" class="btn btn-default btn-sm" ng-click="show1 = false">
                        <span class="glyphicon glyphicon-minus"></span> Réduire
                    </button>

                    <div ng-show="show1">
                        <fieldset style="margin-top: 30px">
                            <legend>Votre classement</legend>
                            <form method="post" action="voter" class="form-horizontal" style="margin-right: 40px">

                                <div class="form-group">
                                    <label for="prem">En 1ère position :</label>
                                    <select name="premier" id="prem" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="deux">En 2ème position :</label>
                                    <select name="deuxieme" id="deux" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="trois">En 3ème position :</label>
                                    <select name="trois" id="trois" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>

                                <input type="hidden" name="sujet" value="video">
                                <button class="btn btn-success">Confirmer votre vote</button>

                            </form>
                        </fieldset>
                    </div>


                </div>
                <div class="col-md-6">
                    <h4>Vote concours Pull</h4>
                    <button type="button" class="btn btn-info btn-sm" style="margin-right: 5px" ng-click="show = true" ng-init="show = false" >
                        <span class="glyphicon glyphicon-plus"></span> Défiler 
                    </button>

                    <button type="button" class="btn btn-default btn-sm" ng-click="show = false">
                        <span class="glyphicon glyphicon-minus"></span> Réduire
                    </button>

                    <div ng-show="show">
                        <fieldset style="margin-top: 30px">
                            <legend>Votre classement</legend>
                            <form method="post" action="voter" class="form-horizontal" >

                                <div class="form-group">
                                    <label for="prem">En 1ère position :</label>
                                    <select name="premier" id="prem" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="deux">En 2ème position :</label>
                                    <select name="deuxieme" id="deux" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>

                                <div class="form-group">
                                    <label for="trois">En 3ème position :</label>
                                    <select name="trois" id="trois" class="form-control">
                                        <option value="nice">Miage de Nice</option>
                                        <option value="aix">Miage d'Aix Marseille</option>
                                        <option value="lille">Miage de Lille</option>
                                        <option value="rennes">Miage de Rennes</option>
                                        <option value="grenoble">Miage de Grenoble</option>
                                        <option value="toulouse">Miage de Toulouse</option>
                                        <option value="nantes">Miage de Nantes</option>
                                        <option value="mulhoue">Miage de Mulhouse</option>
                                        <option value="bordeaux">Miage de Bordeaux</option>
                                        <option value="orleans">Miage d'Orléans</option>
                                        <option value="nancy">Miage de Nancy</option>
                                        <option value="amiens">Miage d'Amiens</option>
                                        <option value="descartes">Miage de Paris Descartes</option>
                                        <option value="dauphine">Miage de Paris Dauphine</option>
                                        <option value="sorbonne">Miage de Sorbonne </option>
                                        <option value="nanterre">Miage de Nanterre</option>
                                        <option value="orsay">Miage d'Orsay</option>
                                        <option value="evry">Miage d'Evry</option>

                                    </select>
                                </div>
                                <input type="hidden" name="sujet" value="pull">

                                <button class="btn btn-success">Confirmer votre vote</button>

                            </form>
                        </fieldset>
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
