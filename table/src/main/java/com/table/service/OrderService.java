package com.table.service;

import java.util.List;

import com.table.vo.OrderVO;

public interface OrderService {

	List<OrderVO> showOrders();

	void OrderWrite(OrderVO order);

}
