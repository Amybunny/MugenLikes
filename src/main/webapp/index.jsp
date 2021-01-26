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
	<meta property="og:title" content="無限いいね" />
	<meta property="og:description" content="気の済むまでいいねを押したい人に贈ります" />
	<meta property="og:image" content="https://mugenlikesajax.herokuapp.com/heart.png" />
	<meta property="og:url" content="https://mugenlikesajax.herokuapp.com/" />
	<meta property="og:type" content="website" />
	<meta property="og:site_name" content="無限いいね" />

	<meta name="twitter:title" content="無限いいね" />
	<meta name="twitter:description" content="気の済むまでいいねを押したい人に贈ります" />
	<meta name="twitter:image" content="https://mugenlikesajax.herokuapp.com/heart.png" />
	<meta name="twitter:card" content="summary" />
	<meta name="twitter:site" content="@Amybunnycarry" />
	<meta name="twitter:creater" content="@Amybunnycarry" />
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
	<img style="display:none" src="heart.png">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="main.js"></script>
</body>
</html>
