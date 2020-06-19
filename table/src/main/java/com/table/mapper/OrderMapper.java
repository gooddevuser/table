package com.table.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.table.vo.CustomerVO;
import com.table.vo.OrderVO;

@Mapper
public interface OrderMapper {

	List<OrderVO> showOrders();

	void OrderWrite(OrderVO order);

}