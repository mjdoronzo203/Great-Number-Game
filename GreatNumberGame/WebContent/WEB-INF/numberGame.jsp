<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="WEB-INF/gamestyle.css" rel="stylesheet" type="text/css">
<title>Great Number Game</title>
</head>
<body>
	<div id="container">
		<h1>Welcome to the Great Number Game!</h1>
		<h2>I am thinking of a number between 1 and 100.</h2>
		<h2>Take a guess!</h2>
		<div id="result">
			<% String theResponse = (String) session.getAttribute("response");
				if(theResponse == "correct"){ %>
					<div id="correct">
						<h1>CORRECT!</h1>
						<a href="Reset"><button>Play Again?</button></a>
					</div>
			<% } else if(theResponse == "low"){%>
	
					<div id="low">
						<h1>Too Low!</h1>
					</div>
			<% } else if(theResponse == "high"){ %>
					<div id="high">
						<h1>Too High!</h1>
					</div>
			<% } %>
		</div>
		<form action="/GreatNumberGame/NumberGame" method="post">
			<p><input type="text" name="guess"></p>
			<p><input type="submit" value="Submit"></p>
		</form>	
	</div>
</body>
</html>