package com.table.vo;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	
	private int membernum;
	private String memberid;
	private String passwd;
	private String email;
	private Date regdate;
	private boolean active;
	private String usertype;
	
}