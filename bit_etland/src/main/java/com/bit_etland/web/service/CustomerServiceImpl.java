package com.bit_etland.web.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.mapper.CustomerMapper;
import com.bit_etland.web.proxy.Proxy;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired CustomerMapper customerMapper;
	@Override
	public void joinCustomer(CustomerDTO cus) {
		
	}

	@Override
	public List<CustomerDTO> bringCustomerLists(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<CustomerDTO> retrieveCustomers(Proxy pxy) {
		return null;
	}

	@Override
	public CustomerDTO retrieveCustomer(CustomerDTO cus) {
		return null;
	}

	@Override
	public CustomerDTO retrieveOneCustomer(CustomerDTO cus) {
		return customerMapper.selectOneCustomer(cus);
	}

	@Override
	public Map<String, Object> retrievePhone(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countCustomer(Proxy pxy) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsCustomerId(CustomerDTO cus) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyCustomer(CustomerDTO cus) {
		customerMapper.updateCustomer(cus);
	}

	@Override
	public Map<String, Object> fileUpload(Proxy pxy) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void removeCustomer(CustomerDTO cus) {
		// TODO Auto-generated method stub
		
	}

}
