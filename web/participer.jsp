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
        </div>

        <div class="container" style="margin-bottom: 40px">
            <div class="row">
                <div class="col-md-7">

                    <div class="alert alert-info alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>

                        <strong>Info:</strong> Vous pouvez choisir et payer un pack <a href="${pageContext.request.contextPath}/packs">ici</a>. 
                    </div>
                    <div ng-show="${requestScope.profil == 'etudiant'}">

                        <form method="post" action="participer" name="monForm1" class="form-horizontal">                       


                            <div class="form-group">
                                <label for="datenaiss">Votre date de naissance :</label>
                                <input type="date" name="birthday" id="datenaiss" class="form-control" required>
                            </div>


                            <div class="form-group">
                                <label for="miage">Quelle Miage de France? </label>
                                <select name="miage" id="miage" class="form-control">
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


                            <label>Diplômé(e) ?</label>
                            <div class="radio">
                                <label><input type="radio" value="oui" name="ancien">Oui</label>
                            </div>
                            <div class="radio">
                                <label><input type="radio" value="non" name="ancien" checked>Non</label>
                            </div>
                            <input type="hidden" name="profil" id="profil" ng-model="profil" value="${requestScope.profil}">


                            <center><button type="submit" class="btn btn-success" style="margin-top: 20px">Confirmer</button></center>

                            <!--<pre>{{monForm| json}}</pre>-->
                        </form>
                    </div>

                    <div ng-show="monForm2.profil.$viewValue == 'enseignant'"> 


                        <form method="post" action="participer" name="monForm2" class="form-horizontal">                       




                            <div class="well">Veuillez vous renseigner auprès de la Miage de Nice</div>

                            <input type="hidden" name="profil" ng-model="profil" id="profil" value="${requestScope.profil}">


                            <center><button type="submit" class="btn btn-success" style="margin-top: 20px">Confirmer</button></center>

                            <!--<pre>{{monForm| json}}</pre>-->
                        </form>
                    </div>


                    <div ng-show="${requestScope.profil == 'entreprise'}"> 

                        <form method="post" action="participer" name="monForm3" class="form-horizontal">                       




                            <div class="form-group">
                                <label for="fonction">Fonction de l'entreprise :</label>
                                <input type="text" name="fonction" id="fonction" class="form-control" placeholder="Fonction de l'entreprise..">
                            </div>

                            <div class="form-group">
                                <label for="tel">Téléphone :</label>
                                <input type="text" name="telephone" id="tel" class="form-control" placeholder="Numéro de téléphone..">
                            </div>

                            <div class="form-group">
                                <label for="nomE">Nom de l'entreprise :</label>
                                <input type="text" name="entreprisenom" id="nomE" class="form-control" placeholder="Le nom..">
                            </div>

                            <div class="form-group">
                                <label for="adresse">Adresse :</label>
                                <input type="text" name="adresse" id="adresse" class="form-control" placeholder="Adresse complète..">
                            </div>
                            <div class="form-group">
                                <label for="secteur">Secteur d'activité :</label>
                                <input type="text" name="secteur" id="secteur" class="form-control" placeholder="Exp: informatique">
                            </div>
                            <input type="hidden" name="profil" ng-model="profil" id="profil" value="${requestScope.profil}">


                            <center><button type="submit" class="btn btn-success" style="margin-top: 20px">Confirmer</button></center>

                            <!--<pre>{{monForm| json}}</pre>-->
                        </form>
                    </div>

                </div>


                <div class="col-md-5"  style="padding-left: 70px">

                    <img src="assets/img/JNM-YOUSS.png" alt="jnm" class="img-responsive" style="margin-bottom: 40px">

                    <img src="assets/img/lucioles.jpg" alt="lucioles" class="img-rounded" width="70%">
                </div>
            </div>
        </div>
    </body>
</html>
