package com.lava.lavafaq.bean;

public class Apply {
	private Long id;

	private Long crmid;
	
	private Long userid;
	
	private String theme;
	
	private Long applystate;
	
	private String applyreason;
	
	private String  applytime;
	
	private String booktimebegin;
	
	private String booktimeend;
	
	private String fusername;
	
	public String getFusername() {
		return fusername;
	}

	public void setFusername(String fusername) {
		this.fusername = fusername;
	}

	public String getFcrmname() {
		return fcrmname;
	}

	public void setFcrmname(String fcrmname) {
		this.fcrmname = fcrmname;
	}

	private String fcrmname;
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getCrmid() {
		return crmid;
	}

	public void setCrmid(Long crmid) {
		this.crmid = crmid;
	}

	public Long getUserid() {
		return userid;
	}

	public void setUserid(Long userid) {
		this.userid = userid;
	}

	public String getTheme() {
		return theme;
	}

	public void setTheme(String theme) {
		this.theme = theme;
	}

	public Long getApplystate() {
		return applystate;
	}

	public void setApplystate(Long applystate) {
		this.applystate = applystate;
	}

	public String getApplyreason() {
		return applyreason;
	}

	public void setApplyreason(String applyreason) {
		this.applyreason = applyreason;
	}

	public String getApplytime() {
		return applytime;
	}

	public void setApplytime(String applytime) {
		this.applytime = applytime;
	}

	public String getBooktimebegin() {
		return booktimebegin;
	}

	public void setBooktimebegin(String booktimebegin) {
		this.booktimebegin = booktimebegin;
	}

	public String getBooktimeend() {
		return booktimeend;
	}

	public void setBooktimeend(String booktimeend) {
		this.booktimeend = booktimeend;
	}
	
}
