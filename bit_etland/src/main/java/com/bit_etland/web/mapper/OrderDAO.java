package com.bit_etland.web.mapper;

import java.util.List;

import com.bit_etland.web.domain.OrderDTO;

public interface OrderDAO {
	public void insertOrder(OrderDTO ord);
	
	public List<OrderDTO> selectEmplyoeeList();
	public List<OrderDTO> selectEmplyoees(String OrderDate);
	public OrderDTO selectEmployee(String OrderId);
	public int countEmployees();
	public boolean existsEmployee(String orderId);
	
	public void updateEmployee(OrderDTO ord);
	
	public void deleteEmployee(OrderDTO ord);

}
