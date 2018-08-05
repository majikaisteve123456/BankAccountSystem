<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>register</title>
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
    background: url(https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1529815962427&di=6320bf67b47fbae99a2519e148f517c6&imgtype=0&src=http%3A%2F%2Fimgsrc.baidu.com%2Fimage%2Fc0%253Dshijue1%252C0%252C0%252C294%252C40%2Fsign%3De75ce828fc03738dca470461db72da24%2Fa8773912b31bb051a64424a03c7adab44bede0d2.jpg) no-repeat center 0px;
    background-position: center 0;
    filter:alpha(opacity=50);
  background-size: cover;
    overflow: hidden;
}
#register{
    position: absolute;
    top: 50%;
    left:50%;
    margin: -150px 0 0 -150px;
    width: 300px;
    height: 300px;
}
#register h1{
    color: #000000;
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
    min-height: 20px;
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
<body>

<div id="register">
        <h1>Register</h1>
        <form action="/HW/registerServlet" method="post">
           <input type="text"  placeholder="用户名" name="username"></input>
            <input type="password"  placeholder="密码" name="password"></input>
               <button class="but2" onclick="window.location.href='register.html'">注册</button> 
        </form>
         </div>
    <script> 
       //取出传回来的参数error并与yes比较
        var errori ='<%=request.getParameter("error")%>';
        if(errori=='yes'){
        alert("用户已存在!");
  }
</script>

</body>
</html>