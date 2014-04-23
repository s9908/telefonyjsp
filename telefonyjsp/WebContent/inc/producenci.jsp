<%@page import="org.piotrszura.telefonyjsp.Producent"%>
<jsp:useBean id="storage" class="org.piotrszura.telefonyjsp.StorageService" scope="application" />

<jsp:useBean id="prod" class="org.piotrszura.telefonyjsp.Producent" scope="session" />
<jsp:setProperty name="prod" property="*" /> 
<%
	if(request.getParameter("nazwa") != null )
	{
		if(request.getParameter("nazwa").length() > 0)
		{
			Producent nprod = new Producent(prod.getNazwa());
			storage.producentDodaj(nprod);
		}
	}
 %>

<table border='1'>
	<tr>
		<th>id</th>
		<th>nazwa</th>
	</tr>
	<%
		for(int i=0; i<storage.producentIlosc(); i++)
		{
			Producent p = storage.producentPobierz(i);
			out.print("<tr>"+
					  	"<td>" + p.getId() + "</td>"+
					  	"<td>" + p.getNazwa() + "</td>"+
					  "</tr>");
					  
		}
	 %>
</table>

Dodaj nowego producenta: 
<form method='POST'>
	<input type='text' name='nazwa'>
	<input type='submit' name='zapisz' value='zapisz'>
</form>