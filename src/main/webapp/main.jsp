<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name=”viewport” content=”width=device-width,initial-scale=1.0″>
		<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
		<link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="style.css" />
		<title>無限いいね</title>
	</head>
	<body>
		<h1 class="title">無限いいね</h1>
		<p class="infotext main-info">ハートを押すといいねが増えるよ！</p>
		<div class="contents-area">
			<p class="sentence">${sentence.sentence}</p>
		</div>
		<div class="like-area">
			<a class="likebtn" href="/MugenLike/Main?action=like"><i class="fas fa-heart"></i></a>
			<p class="ev">${EV.like}</p>
		</div>
		<a class="infotext back-info" href="/MugenLike/Top">最初に戻る</a>
	</body>
</html>

<!-- ${EV.like} -->

