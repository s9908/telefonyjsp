<%@page import="org.piotrszura.telefonyjsp.Telefon"%>
<%@page import="org.piotrszura.telefonyjsp.Producent"%>
<jsp:useBean id="storage" class="org.piotrszura.telefonyjsp.StorageService" scope="application" />

<jsp:useBean id="tel" class="org.piotrszura.telefonyjsp.Telefon" scope="session" />
<jsp:setProperty name="tel" property="*" /> 

<%
	if(request.getParameter("nazwa") != null )
	{
		if(request.getParameter("nazwa").length() > 0)
		{
			Telefon ntel = new Telefon();
			ntel.setNazwa(tel.getNazwa());
			ntel.setProducent(tel.getProducent());
			if(request.getParameter("f1") != null) ntel.setF1(tel.getF1());
			if(request.getParameter("f2") != null) ntel.setF2(tel.getF2());
			if(request.getParameter("f3") != null) ntel.setF3(tel.getF3());
			if(request.getParameter("f4") != null) ntel.setF4(tel.getF4());
			if(request.getParameter("f5") != null) ntel.setF5(tel.getF5());
			storage.telefonDodaj(ntel);
		}
	}
 %>

<table border='1'>
	<tr>
		<th>producent</th>
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
					  	"<td>" + storage.producentPobierz(p.getProducent()).getNazwa()  + "</td>"+
					  	"<td>" + p.getNazwa() + "</td>"+
					  	"<td>" + Telefon.notnull(p.getF1()) + "</td>"+
					  	"<td>" + Telefon.notnull(p.getF2()) + "</td>"+
					  	"<td>" + Telefon.notnull(p.getF3()) + "</td>"+
					  	"<td>" + Telefon.notnull(p.getF4()) + "</td>"+
					  	"<td>" + Telefon.notnull(p.getF5()) + "</td>"+
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