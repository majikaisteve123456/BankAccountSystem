<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Deposit</title>
<style>
body{
    width: 100%;
    height: 100%;
    font-family: 'Open Sans',sans-serif;
    positon: fiexed;
    margin: 0;
    background: url(http://img.daimg.com/uploads/allimg/180205/3-1P205223304.jpg) no-repeat center 0px;
    background-position: center 0;
    filter:alpha(opacity=50);
    background-size: cover;
    overflow: hidden;
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

    width: 100px;
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
#deposit{
    position: absolute;
    top: 50%;
    left:50%;
    margin: -150px 0 0 -150px;
    width: 300px;
    height: 300px;
}
#deposit h1{
    color: #fff;
    text-shadow:0 0 10px;
    letter-spacing: 1px;
    text-align: center;
}
h1{
    font-size: 2em;
    margin: 0.67em 0;
}

</style>
</head>
<body>
 <div id="deposit">
        <h1>Deposit</h1>
        <form action="/HW/depositServlet" method="post">
           <input type="text"  placeholder="金额" name="amount"></input>
              <button class="but1" type="submit" name="submit">submit</button>
        </form>
         <br>      
         </br>
         </div>
         <script> 
       //取出传回来的参数error并与yes比较
        var errori ='<%=request.getParameter("error")%>';
        if(errori=='yes'){
        alert("输入金额不能为负数!");
  }
</script>
</body>
</html>