<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1.0">
	<link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css2?family=Hachi+Maru+Pop&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="style.css" />
	<title>無限いいね</title>
</head>
<body>
	<h1 class="title">無限いいね</h1>
	<p class="infotext">いいねしたい文章を入力</p>
	<form action="/Main" method="post">
		<div class="input-area">
			<textarea id="textbox" class="textbox" name="sentence"></textarea>
			<p class="count"><span id="count">0</span>/140</p>
		</div>
		<input id="btn-create" class="btn btn-create" type="submit" name="submit" value="作成" />
		<p class="infotext or-info">or</p>
		<input id="btn-sample" class="btn btn-sample active" type="submit" name="submit" value="サンプル文を使う" />
	</form>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="main.js"></script>
</body>
</html>