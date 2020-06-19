package com.table.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.table.vo.CustomerVO;

@Mapper
public interface CustomerMapper {

	List<CustomerVO> showCustomers();

	void CustomerWrite(CustomerVO customer);

	CustomerVO selectCustid(int custid);

	void CustomerUpdate(CustomerVO customer);

	void CustomerDelete(int custid);

}