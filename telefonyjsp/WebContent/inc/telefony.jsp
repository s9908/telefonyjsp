<%@page import="org.piotrszura.telefonyjsp.Telefon"%>
<%@page import="org.piotrszura.telefonyjsp.Producent"%>
<jsp:useBean id="storage" class="org.piotrszura.telefonyjsp.StorageService" scope="application" />


<table border='1'>
	<tr>
		<th>id</th>
		<th>nazwa</th>
		<th>LTE 7G</th>
		<th>NFC</th>
		<th>Radio FM</th>
		<th>Wobulator</th>
		<th>Oscyloskop</th>
	</tr>
	<%
		for(int i=0; i<storage.telefonIlosc(); i++)
		{
			Telefon p = storage.telefonPobierz(i);
			out.print("<tr>"+
					  	"<td>" + p.getId() + "</td>"+
					  	"<td>" + p.getNazwa() + "</td>"+
					  "</tr>");
					  
		}
	 %>
</table>

Dodaj nowy telefon: 
<form method='POST'>
	Nazwa: <input type='text' name='nazwa'> <br>
	Producent: <select name='producent'>
	<%
		for(int i=0; i<storage.producentIlosc(); i++)
		{
			Producent p = storage.producentPobierz(i);
			out.print("<option value='" + p.getId() + "'>" + p.getNazwa() + "</option>");
					  
		}
	 %>
	</select><br>
	<input type='checkbox' name='f1' value='TAK'>LTE 7G <br>
	<input type='checkbox' name='f2' value='TAK'>NFC <br>
	<input type='checkbox' name='f3' value='TAK'>Radio FM <br>
	<input type='checkbox' name='f4' value='TAK'>Wobulator <br>
	<input type='checkbox' name='f5' value='TAK'>Oscyloskop <br>
	<input type='submit' name='zapisz' value='zapisz'>
</form>