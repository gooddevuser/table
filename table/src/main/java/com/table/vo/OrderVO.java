package com.table.vo;

import java.util.Date;

import lombok.Data;

@Data
public class OrderVO {
	
	private int orderid;
	private int custid;
	private int bookid;
	private int saleprice;
	private Date orderdate;
	
}




