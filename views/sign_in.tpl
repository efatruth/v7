<!DOCTYPE html>
<html>
	<head>
		<title></title>
	</head>
	<link rel="stylesheet" type="text/css" href="/static/css/auka.css">
	<body style="font-family: Arial;">

	    <nav>
			<ul>
			    <li><a href="/">Forsíða</a></li>
				<li><a href="/signin">Sign In</a></li>
				<li><a href="/signup">Sign Up</a></li>
			</ul>
		</nav>

		<h2>Sign In</h2>
		<form method="post" action="/signin">
			Notendanafn<br>
			<input type="text" name="SignIn_username" autocomplete="off" placeholder="Sláðu inn notendanafn" required><p>
			Lykilorð<br>
			<input type="password" maxlength="10" name="SignIn_password" placeholder="Sláðu inn lykilorð" required><p>
			<input type="submit" value="Sign in">
		</form>
	</body>
</html>
