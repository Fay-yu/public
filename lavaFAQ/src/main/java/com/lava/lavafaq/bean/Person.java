package com.lava.lavafaq.bean;

public class Person implements java.io.Serializable {
	
	/**
	 * serialVersionUID
	 */
	private static final long serialVersionUID = -8890355391648812278L;
	
    private Long id;

    private String username;

    private String password;

    private String mail;
    
    private int state;
    
    private String actiCode;
    
    private String token_exptime;
    
    private String address;
    
    private Long telPhone;
    
    private Long power;
    
    public int getState() {
		return state;
	}

	public void setState(int state) {
		this.state = state;
	}

	public String getActiCode() {
		return actiCode;
	}

	public void setActiCode(String actiCode) {
		this.actiCode = actiCode;
	}

	public String getToken_exptime() {
		return token_exptime;
	}

	public void setToken_exptime(String token_exptime) {
		this.token_exptime = token_exptime;
	}

	

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail == null ? null : mail.trim();
    }
    
    
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Long getTelPhone() {
		return telPhone;
	}

	public void setTelPhone(Long telPhone) {
		this.telPhone = telPhone;
	}

	public Long getPower() {
		return power;
	}

	public void setPower(Long power) {
		this.power = power;
	}

	@Override
	public String toString() {
		return "Person [id=" + id + ", username=" + username + ", password="
				+ password + ", mail=" + mail + ", state=" + state
				+ ", ActiCode=" + actiCode + ", token_exptime=" + token_exptime
				+ "]";
	}

	
    
    
}