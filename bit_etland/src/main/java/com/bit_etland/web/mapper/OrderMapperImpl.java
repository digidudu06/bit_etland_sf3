package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit_etland.web.domain.OrderDTO;
@Repository
public class OrderMapperImpl implements OrderMapper{

	@Override
	public void insertOrder(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<OrderDTO> selectEmplyoeeList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<OrderDTO> selectEmplyoees(String OrderDate) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OrderDTO selectEmployee(String OrderId) {
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
	public void updateEmployee(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteEmployee(OrderDTO ord) {
		// TODO Auto-generated method stub
		
	}

}
