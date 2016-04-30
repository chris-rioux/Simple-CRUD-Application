<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
    
    <!-- jQuery DataTable -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.11/css/jquery.dataTables.min.css" />
    
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
	
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
	
				<div class="card-group">
		       		<div class="card card-block text-xs-center">
						<img class="card-img-top img-fluid" src="./img/smallestMarvelCollage.jpg" alt="Card image cap">
		            	<div class="card card-block text-xs-center">
		                	<h4 class="card-header text-xs-center">Add a Character to the DataBase</h4>
							<form:form action="NewCharacter.do" modelAttribute="character">
	                    		<fieldset>	
	                    			<form:input path="marvelId" type="int" name="marvelId" placeholder="Marvel ID"/><form:errors path="marvelId"/><br/>
  									<form:input path="name" type="text" name="name" placeholder="Name"/><form:errors path="name"/><br/>
  									<input type="text" name="alias" value="" placeholder="Alias"/><br/>
  									<input type="text" name="affiliation" value="" placeholder="Affiliation"/><br/>
  									<input type="text" name="desc" value="" placeholder="Description"/><br/>
  									<input type="text" name="image" value="" placeholder="Image URL"/><br/>
  								</fieldset>
  								</br>
	                    		<button class="btn btn-md text-normal btn-primary-outline" type="submit" value="Add Character">Submit</button>
							</form:form>
		           	 </div>
		       		</div>
				</div>
			</div>
		
        </div>
    </div>
</section>

<footer>
	<div class="row">
		<div class="col-lg-12">
			<p class="text-xs-center"><a href="http://www.chrisriouxdevelopment.com" target="_blank">Chris Rioux Development</a> &copy; 2016</p>
		</div>
	</div>
	<div class="row">
		<div class="col-md-6 col-md-offset-3" style="text-align:center">
			<a href="https://twitter.com/chrisrioux_" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://www.linkedin.com/in/chris-rioux-b500569a" target="_blank"><i class="fa fa-linkedin fa-2x"></i></a>&nbsp;&nbsp;
			<a href="https://github.com/chris-rioux" target="_blank"><i class="fa fa-github fa-2x"></i></a>
			</br>
      	</div>
	</div>
</footer>

<!-- Modals -->
<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog"
		aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title text-xs-center">Full Stack Web Development</h4>
					<p class="text-xs-center">
						Check Out<a href="http://www.chrisriouxdevelopment.com"
							target="_blank"> ChrisRiouxDevelopment.com</a>
					</p>
					<div class="modal-body">
						<div class="row">
							<div class="col-xs-4 text-xs-center">
								<ul class="list-inline banner-social-buttons">
									<li id="topButton"><a href="https://twitter.com/chrisrioux_" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-twitter fa-fw"></i>&nbsp;&nbsp;Twitter</a></li><br> 
									<li><a href="https://github.com/chris-rioux" target="_blank"
										class="btn btn-primary-outline"><i
										class="fa fa-github-alt fa-fw"></i>&nbsp;&nbsp;Github</a></li><br>
									<li><a href="https://www.linkedin.com/in/chris-rioux-b500569a"
										target="_blank" class="btn btn-primary-outline"><i
										class="fa fa-linkedin-square fa-fw"></i>&nbsp;&nbsp;Linkedin</a></li><br>								
								</ul>
							</div>
							<div class="col-xs-8">
								<img class="center-block" src="./img/smallestPic.jpg" alt="">
							</div>
						</div>
						<hr>
						<div class="modal-footer">
							<button class="btn btn-primary center-block" data-dismiss="modal"
								aria-hidden="true">OK</button>
						</div><!-- /.modal-footer -->
					</div><!-- /.modal-body -->
				</div><!-- /.modal-header -->
			</div><!-- /.modal-content -->
		</div><!-- /.modal-dialog -->
	</div><!-- /#aboutModal -->

    <!--scripts loaded here-->    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.2.0/js/tether.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
    
    <script src="js/scripts.js"></script>
    
  </body>
</html>