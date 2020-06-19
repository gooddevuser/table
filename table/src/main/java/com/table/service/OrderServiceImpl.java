package com.table.service;

import java.util.List;

import com.table.mapper.BookMapper;
import com.table.mapper.OrderMapper;
import com.table.vo.BookVO;
import com.table.vo.OrderVO;

import lombok.Setter;

public class OrderServiceImpl implements OrderService {
	
	@Setter
	private OrderMapper orderMapper;
	
	@Override
	public List<OrderVO> showOrders() {		
		return orderMapper.showOrders();
	}

	@Override
	public void OrderWrite(OrderVO order) {
		orderMapper.OrderWrite(order);
		
	}

	
}