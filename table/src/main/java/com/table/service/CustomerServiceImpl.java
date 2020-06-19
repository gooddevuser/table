
package com.table.service;

import java.util.List;

import com.table.mapper.CustomerMapper;
import com.table.vo.CustomerVO;

import lombok.Setter;

public class CustomerServiceImpl implements CustomerService {

	@Setter
	private CustomerMapper customerMapper;

	@Override
	public List<CustomerVO> showCustomers() {
		return customerMapper.showCustomers();
	}

	@Override
	public void CustomerWrite(CustomerVO customer) {
		customerMapper.CustomerWrite(customer);
		
	}

	@Override
	public CustomerVO selectCustid(int custid) {
		return customerMapper.selectCustid(custid);
	}

	@Override
	public void CustomerUpdate(CustomerVO customer) {
		customerMapper.CustomerUpdate(customer);
		
	}

	@Override
	public void CustomerDelete(int custid) {
		customerMapper.CustomerDelete(custid);
		
	}
	
}