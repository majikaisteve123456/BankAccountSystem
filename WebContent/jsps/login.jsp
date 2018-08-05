<%@ page language="java" isErrorPage="true" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Login.css"/>
    <style>
    html{
    width: 100%;
    height: 100%;
    overflow: hidden;
    font-style: sans-serif;
}
body{
    width: 100%;
    height: 100%;
    font-family: 'Open Sans',sans-serif;
    positon: fiexed;
    margin: 0;
    background: url(http://www.pptbz.com/d/file/p/201609/27b86b158495691c3884d3cff49e824a.jpg) no-repeat center 0px;
    background-position: center 0;
    filter:alpha(opacity=50);
    background-size: cover;
    overflow: hidden;
}
#login{
    position: absolute;
    top: 50%;
    left:50%;
    margin: -150px 0 0 -150px;
    width: 300px;
    height: 300px;
}
#login h1{
    color: #fff;
    text-shadow:0 0 10px;
    letter-spacing: 1px;
    text-align: center;
}
h1{
    font-size: 2em;
    margin: 0.67em 0;
}
input{
    width: 278px;
    height: 18px;
    margin-bottom: 10px;
    outline: none;
    padding: 10px;
    font-size: 13px;
    color: #fff;
    text-shadow:1px 1px 1px;
    border-top: 1px solid #312E3D;
    border-left: 1px solid #312E3D;
    border-right: 1px solid #312E3D;
    border-bottom: 1px solid #56536A;
    border-radius: 4px;
    background-color: #2D2D3F;
}
.but1{

    width: 300px;
    min-height: 40px;
    display: block;
    background-color: #4a77d4;
    border: 1px solid #3762bc;
    color: #fff;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    margin: 0;
}
.but2{

    width: 300px;
    min-height: 20px;
    display: block;
    background-color: #ffa500;
    border: 1px solid #ffa500;
    color: #fff;
    padding: 9px 14px;
    font-size: 15px;
    line-height: normal;
    border-radius: 5px;
    margin: 0;
}
    
    </style>
</head>
<body >
    <div id="login">
        <h1>Login</h1>
        <form action="/HW/loginServlet" method="post">
           <input type="text"  placeholder="用户名" name="username"></input>
            <input type="password"  placeholder="密码" name="password"></input>
              <input class="but1" type="submit" value="登录">
        </form>
         <br/>
               <button class="but2" onclick="window.location.href='register.jsp'">注册</button> 
         </div>
    <script> 
       //取出传回来的参数error并与yes比较
        var errori ='<%=request.getParameter("error")%>';
        if(errori=='yes'){
        alert("用户名或密码错误!");
  }
</script>
</body>
</html>