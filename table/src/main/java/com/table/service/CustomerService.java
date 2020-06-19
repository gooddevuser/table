
package com.table.service;

import java.util.List;

import com.table.vo.CustomerVO;

public interface CustomerService {

	List<CustomerVO> showCustomers();

	void CustomerWrite(CustomerVO customer);

	CustomerVO selectCustid(int custid);

	void CustomerUpdate(CustomerVO customer);

	void CustomerDelete(int custid);
	
}
