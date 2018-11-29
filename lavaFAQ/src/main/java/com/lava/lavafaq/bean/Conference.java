package com.lava.lavafaq.bean;

public class Conference {
	private Long id;
	
	private String crmname;  //会议室名称
	
	private String crmaddress; //会议室地址
	
	private Long media;			//是否多媒体
	
	private Long holdnum;		//容纳人数
	
	private Long crmstate;   	//会议室状态

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCrmname() {
		return crmname;
	}

	public void setCrmname(String crmname) {
		this.crmname = crmname;
	}

	public String getCrmaddress() {
		return crmaddress;
	}

	public void setCrmaddress(String crmaddress) {
		this.crmaddress = crmaddress;
	}

	public Long getMedia() {
		return media;
	}

	public void setMedia(Long media) {
		this.media = media;
	}

	public Long getHoldnum() {
		return holdnum;
	}

	public void setHoldnum(Long holdnum) {
		this.holdnum = holdnum;
	}

	public Long getCrmstate() {
		return crmstate;
	}

	public void setCrmstate(Long crmstate) {
		this.crmstate = crmstate;
	}
	
}
