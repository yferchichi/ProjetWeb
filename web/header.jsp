<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header>
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">

            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/accueil">Accueil</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->

            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <c:if test="${not empty sessionUser}">
                        <li>
                            <a href="${pageContext.request.contextPath}/participer">Participer</a>
                        </li>
                    </c:if>
                    <c:if test="${not empty sessionUser}">
                        <li>
                            <a href="${pageContext.request.contextPath}/voter">Voter</a>
                        </li>
                    </c:if>
                    <li>
                        <a href="${pageContext.request.contextPath}/locaux">Nous trouver</a>
                    </li>

                    <c:if test="${not empty sessionUser}">
                        <li>
                            <a href="${pageContext.request.contextPath}/packs">Payer</a>
                        </li>
                    </c:if>
                    <c:if test="${empty sessionUser}">
                        <li>
                            <a href="${pageContext.request.contextPath}/login">Se connecter</a>
                        </li>
                    </c:if>

                    <c:if test="${not empty sessionUser}">
                        <li>
                            <a href="${pageContext.request.contextPath}/logout">Se déconnecter</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.sessionUser.profil == 'admin'}">
                        <li>
                            <a href="${pageContext.request.contextPath}/users">Tous les utilisateurs</a>
                        </li>
                    </c:if>

                    <c:if test="${sessionScope.sessionUser.profil == 'admin'}">
                        <li>
                            <a href="${pageContext.request.contextPath}/manage">Gérer votes</a>
                        </li>
                    </c:if>

                    <c:if test="${not empty sessionUser}">
                        <li>
                            <a href="#">Bienvenue, ${sessionScope.sessionUser.prenom}</a>
                        </li>
                    </c:if>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>



</header>