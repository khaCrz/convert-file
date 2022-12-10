<%@page language="java"  import=" Model.BEAN.user"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    
    <title>Document</title>
</head>
<body>
<%
	user a = (user)request.getSession().getAttribute("User");
	if(a!=null)
		response.sendRedirect("Home.jsp");
%>
    <div class="Main">
        <div>
            <h4>Login</h4>
        </div>
        <div>
            <form action="CheckLoginServerlet">
                <div class="_text">
                    <input type="text" placeholder="Username" name = "txtUsername">
                </div>
                <div class="_text">
                    <input type="text" placeholder="Password" name = "txtPassword">
                </div>
                <div>
                    <input class="btn_login" type="submit" value="Login">
                    <a href="register.jsp"><input class="btn_Register" type="button" value="Register"></a>
                </div>
            </form>
        </div>
        <div>

        </div>
        

    </div>
</body>
</html>