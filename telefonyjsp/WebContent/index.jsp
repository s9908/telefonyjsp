<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Telefony</title>
</head>
<body bgcolor='#CCCCFF'>

<table border='0'>

	<tr>
		<td>
			<img src='./img/mobile.png' width='64'>
		</td>
		<td>
			<font size='10'>Telefony</font>
		</td>
	</tr>
	
	<tr>
		<td colspan='2'>
			<a href='./?frm=producenci'>Producenci</a> &nbsp;&nbsp;|&nbsp;&nbsp;
			<a href='./?frm=telefony'>Telefony</a> &nbsp;&nbsp;
		</td>
	</tr>
	
	<tr>
		<td colspan='2'>
		<%
			String frm = request.getParameter("frm");
			if(frm != null)
			{
			%>
				<jsp:include page="<%="./inc/"+frm+".jsp"%>"/>
			<%
			}
		 %>
		</td>
	</tr>
	

</table>

<hr>
<font size='2'>
Copyright &copy;2014 Piotr Szura <br> s9908@pjwstk.edu.pl
</font>

</body>
</html>