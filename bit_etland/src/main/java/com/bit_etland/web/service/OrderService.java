package com.bit_etland.web.service;

import java.util.List;

import com.bit_etland.web.domain.OrderDTO;
import org.springframework.stereotype.Component;

@Component
public interface OrderService {
	public void registOrder(OrderDTO ord);
	
	public List<OrderDTO> bringEmplyoeeList();
	public List<OrderDTO> retrieveEmplyoees(String OrderDate);
	public OrderDTO retrieveEmployee(String OrderId);
	public int countEmployees();
	public boolean existsEmployee(String orderId);
	
	public void modifyEmployee(OrderDTO ord);
	
	public void removeEmployee(OrderDTO ord);
}
