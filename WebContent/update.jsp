<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Marvel Characters</title>
    <meta name="description" content="This was generated by the Codeply editor and responsive design playground." />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="generator" content="Codeply">

	<!-- Hosted Bootstrap 4 -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.1/animate.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
    
    <!-- site specific styling -->
    <link rel="stylesheet" href="./css/styles.css" />
    
    <!-- font awesome -->
    <link href="./font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    
 </head>
 <body class="bg-faded">
 
<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <button class="navbar-toggler hidden-md-up pull-right" type="button" data-toggle="collapse" data-target="#collapsingNavbar">
            ☰
        </button>

        <a class="navbar-brand page-scroll" href="index.jsp">Marvel Super Characters</a>

        <div class="collapse navbar-toggleable-sm" id="collapsingNavbar">
            <ul class="nav navbar-nav">
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="index.jsp#one">Search Tool</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="add.do">Add Character</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link page-scroll" href="GetAllCharactersData.do?">Get All</a>
                </li>
            </ul>

            <ul class="nav navbar-nav pull-xs-right">
                <li class="nav-item">
                    <a class="nav-link page-scroll" data-toggle="modal" href="#aboutModal">About</a>
                </li>
            </ul>
        </div>
    </div><!-- .container -->
</nav>

<section id="one">
	<div class="container wow fadeInUp">
       	<h2>Marvel Super Characters</h2>
			<div class="card-group">
	            <div class="card card-block text-xs-center">
	                <img src="${character.image}">
	            </div>
	            <div class="card card-block text-xs-center">
	                <h4 class="card-header">${character.name}</h4>
	                <div class="card-block text-xs-center">
	                <input type="int" value="" placeholder="${character.id}"/></br>
	                <input type="int" value="" placeholder="${character.marvelId}"/></br>
	                <input type="text" value="" placeholder="${character.name}"/></br>
	                <input type="text" value="" placeholder="${character.alias}"/></br>
	                <input type="text" value="" placeholder="${character.affiliation}"/></br>
	                <input type="text" value="" placeholder="${character.desc}"/></br>
	                <input type="text" value="" placeholder="${character.image}"/></br>
					</div>
					<div class="card-footer text-muted">
                		<h5 class="text-xs-center">Edit Character</h5>
						<form action="editCharacter.do" method="GET">
							<button class="btn btn-md text-normal btn-danger" type="submit" value="update" name="update">Update</button>
						</form>
						</br>
						<form action="removeCharacter.do" method="POST">
							<input type="hidden" name="id" value="${character.id}"/>
							<button class="btn btn-md text-normal btn-danger" type="submit" name="id" value="Delete">Delete</button>
						</form>
					</div>
	            </div>
        </div>
    </div>
</section>

<footer>
	<div class="row">
		<div class="col-lg-12">
			<p class="text-xs-center"><a href="http://www.chrisriouxdevelopment.com">Chris Rioux Development</a> &copy; 2016</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" style="text-align:center">
			<a href="https://twitter.com/chrisrioux_"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://www.linkedin.com/in/chris-rioux-b500569a"><i class="fa fa-linkedin fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://github.com/chrisrioux2"><i class="fa fa-github fa-2x"></i></a>
			</br>
      	</div>
	</div>
</footer>

<!-- Modals -->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body">
            <div class="card card-block text-xs-center">
		            <div class="card card-block text-xs-center">
		                <h4 class="card-header">Chris Rioux</h4>
						<p class="text-xs-center">Full Stack Java Web Development. Visit My<a href="http://www.chrisriouxdevelopment.com"> Site!</p> 
						<a href="https://twitter.com/chrisrioux_" class="btn btn-primary-outline"><i class="fa fa-twitter fa-fw"></i>&nbsp;&nbsp;Twitter</a>
	                    <a href="https://github.com/chrisrioux2" class="btn btn-primary-outline"><i class="fa fa-github-alt fa-fw"></i>&nbsp;&nbsp;Github</a>
	                    <a href="https://www.linkedin.com/in/chris-rioux-b500569a" class="btn btn-primary-outline"><i class="fa fa-linkedin fa-fw"></i>&nbsp;&nbsp;Linkedin</a>
						<p class="text-xs-center"> </p>
					<div class="card-footer text-muted">
					<img class="card-img-bottom" src="./img/smallestPic.jpg" alt="Card image cap">
					<p class="text-xs-center"> </p>
					<button class="btn btn-primary center-block" data-dismiss="modal" aria-hidden="true"> OK </button>
		            </div>
		       	</div>
            </div>
        	</div>
    	</div>
	</div>
</div><!-- #aboutModal -->

</div>
    <!--scripts loaded here-->
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    
    <script src="js/scripts.js"></script>
  </body>
</html>