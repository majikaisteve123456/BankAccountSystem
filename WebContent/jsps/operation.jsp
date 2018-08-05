<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Deposit&Withdraw&getBalance</title>
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

<div style="position:absolute;width:1500px;height:200px;top:300px;"> 
    
              
<table id="tab" align="center" width="60%">  
     
   
<br>
	<table id="btn_container" align="center" width="60%" cellpadding="0" border="0">
		<tr border="0">
	    	<td align="right">
	    		<button class="but1" type="submit" name="withdraw" style="float:right;margin-right:30px;" onclick="window.location.href='/HW/jsps/withdraw.jsp'">withdraw</button>
	    	</td>
	    	<td align="center">
	    	    <form action="/HW/balanceServlet" method="post">
	    		<button class="but1" type="submit" name="getbalance" style="float:center;margin-right:30px;" >getbalance</button>
	    	    </form>
	    	
	    	</td>
	    	<td align="left">
	    		<button class="but1" type="submit" name="deposit" style="float:left;margin-left:30px;" onclick="window.location.href='/HW/jsps/deposit.jsp'">deposit</button>
	    	</td>
	    </tr>
	</table>
        </div>   
</body>
</html>