package org.piotrszura.telefonyjsp;

public class Telefon 
{
	private int producent;
	private int id;
	private String nazwa;
	private String f1, f2, f3, f4, f5;
	
	public int getProducent() 
	{
		return producent;
	}
	public void setProducent(int producent) 
	{
		this.producent = producent;
	}
	public String getNazwa() 
	{
		return nazwa;
	}
	public void setNazwa(String nazwa) {
		this.nazwa = nazwa;
	}
	public String getF1() 
	{
		return f1;
	}
	public void setF1(String f1) 
	{
		this.f1 = f1;
	}
	public String getF2() 
	{
		return f2;
	}
	public void setF2(String f2) 
	{
		this.f2 = f2;
	}
	public String getF3() 
	{
		return f3;
	}
	public void setF3(String f3) 
	{
		this.f3 = f3;
	}
	public String getF4() 
	{
		return f4;
	}
	public void setF4(String f4) 
	{
		this.f4 = f4;
	}
	public String getF5() 
	{
		return f5;
	}
	public void setF5(String f5) 
	{
		this.f5 = f5;
	}
	public int getId() 
	{
		return id;
	}
	public void setId(int id) 
	{
		this.id = id;
	}	
	public static String notnull(String t)
	{
		if(t == null) return "NIE";
		else return "TAK";
	}	
}
