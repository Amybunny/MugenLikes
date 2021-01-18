<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="model.EV" %>
<%@ page import="model.Sentence" %>
<%
EV ev = (EV) session.getAttribute("EV");
Sentence st = (Sentence) session.getAttribute("sentence");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1.0">
		<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="style.css" />
		<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
		<title>無限いいね</title>
	</head>
	<body>
		<h1 class="title">無限いいね</h1>
		<p class="infotext main-info">ハートを押すといいねが増えるよ！</p>
		<div class="contents-area">
			<p class="sentence"><%= st.getSentence() %></p>
		</div>
		<div class="like-area">
			<p class="likebtn"><i class="fas fa-heart"></i></p>
			<p class="ev"><%= ev.getLike() %></p>
		</div>
		<a class="infotext back-info" href="/Top">最初に戻る</a>
		<script>
			$(function(){
				$('.likebtn').on('click',function(){
					$.ajax({
						type:"GET",
						url:"Main",
						data:{likebtn:$(".likebtn").val()}
					}).done(function(result){
						$(".ev").html(result);
					}).fail(function(){
						alert("読み込み失敗");
					})
				})
			})
		</script>
	</body>
</html>