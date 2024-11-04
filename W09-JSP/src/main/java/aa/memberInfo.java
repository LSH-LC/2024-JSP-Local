package aa;

public class memberInfo
{
	private String id;
	private String password;
	private String name;
	private String address;
	private String registerDate;
	private String email;
	
	public String getId()
	{
		return id;
	}
	
	public void setId(String val)
	{
		this.id = val;
		setPassword();
	}
	
	public String getPassword()
	{
		return password;
	}
	
	public void setPassword()
	{
		this.password = id;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String val)
	{
		this.name = val;
	}
	
	public String getAddress()
	{
		return address;
	}
	
	public void setAddress(String val)
	{
		this.address = val;
	}
	
	public String getRegisterDate()
	{
		return registerDate;
	}
	
	public String getEmail()
	{
		return email;
	}
	
	public void setEmail(String val)
	{
		this.email = val;
	}
	
	

}
