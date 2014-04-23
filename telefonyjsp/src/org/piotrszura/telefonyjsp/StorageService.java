package org.piotrszura.telefonyjsp;
import java.util.ArrayList;
import java.util.List;


public class StorageService 
{
	private List<Producent> producent = new ArrayList<Producent>();
	private List<Telefon> telefon = new ArrayList<Telefon>();
	
	public void telefonDodaj(Telefon p)
	{
		telefon.add(p);
	}
	
	public int telefonIlosc()
	{
		return telefon.size();
	}
	
	public Telefon telefonPobierz(int i)
	{
		return telefon.get(i);
	}
	
	public void producentDodaj(Producent p)
	{
		producent.add(p);
	}
	
	public int producentIlosc()
	{
		return producent.size();
	}
	
	public Producent producentPobierz(int i)
	{
		return producent.get(i);
	}
	
	
}
