package com.bit_etland.web.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.bit_etland.web.domain.OrderDTO;

@Service
public class OrderServiceImpl implements OrderService {

	@Override
	public void registOrder(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<OrderDTO> bringEmplyoeeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDTO> retrieveEmplyoees(String OrderDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDTO retrieveEmployee(String OrderId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countEmployees() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean existsEmployee(String orderId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void modifyEmployee(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeEmployee(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

}
