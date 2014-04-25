package org.piotrszura.telefonyjsp;

public class Producent 
{
	private int id;
	private String nazwa;
	private static int ostatni_id;
	
	public Producent()
	{
		super();
	}
	
	public Producent(String n)
	{
		this.nazwa = n;
		this.id = ostatni_id++;
	}
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}
	public String getNazwa() 
	{
		return nazwa;
	}
	public void setNazwa(String nazwa) 
	{
		this.nazwa = nazwa;
	}	
}
