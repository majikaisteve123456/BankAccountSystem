<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>getBalance</title>
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
    background: url(http://img.daimg.com/uploads/allimg/141103/3-1411031K024.jpg) no-repeat center 0px;
    background-position: center 0;
    filter:alpha(opacity=50);
    background-size: cover;
    overflow: hidden;
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

h1{
    font-size: 2em;
    margin: 0.67em 0;
}

table {  
     border-collapse: collapse;  
     font-family: Futura, Arial, sans-serif;  
}  
  
#tab caption {  
     font-size: larger;  
     margin: 1em auto;  
}  
  
#tab th,#tab td {  
     padding: .65em;  
}  
  
#tab th {  
     background: #555 nonerepeat scroll 0 0;  
   border: 1px solid #777;  
   color: #000000;  
}  
  
#tab td {  
     border: 1px solid#777;  
}  

#tab tbody tr:nth-child(odd) {  
     background: #ccc;  
}   


btn_container{
	border: 0;
}

btn_container tr,td{
	border: 0;
	background:null;
}

</style>
</head>
<body>

<div style="position:absolute;width:1500px;height:200px;top:150px;"> 
    
              
<table id="tab" align="center" width="60%">  
    <caption>
    	<h1>PERSONAL_INFORMATION</h1>
    </caption> 
    <thead>  
        <tr>  
            <th>USERNAME</th>
            <th>BALANCE</th>
        </tr>
    </thead>  
    <tbody> 
    <%String username=(String)request.getAttribute("username"); %>
    <%Double balance=(Double)request.getAttribute("balance"); %>
        <tr >  
            <td><%=username %></td>
            <td><%=balance %></td>
        </tr>
        
    </tbody>  
</table>
</div>
</body>
</html>