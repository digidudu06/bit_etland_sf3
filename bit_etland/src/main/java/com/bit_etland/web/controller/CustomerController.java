package com.bit_etland.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.bit_etland.web.domain.CustomerDTO;
import com.bit_etland.web.proxy.ContextProxy;
import com.bit_etland.web.service.CustomerService;

@SessionAttributes ("cust")
@Controller
@RequestMapping("/customer")

public class CustomerController {
	static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@Autowired CustomerDTO customer;
	@Autowired CustomerService customerService;
	@Autowired HttpSession session;
	@Autowired ContextProxy pxy;
	
	@RequestMapping(value="/signin", method=RequestMethod.POST )
	public String signin(@ModelAttribute CustomerDTO cus) {
		logger.info("\n --------- CustomerController {} !! ----------","signin");
		System.out.println("로그인 전 : "+ customer.toString());
		
		customer = customerService.retrieveOneCustomer(cus);
		session.setAttribute("cust", customer);
		System.out.println("로그인 후 결과" + customer.toString());
		return (customer != null)? 
				"public:customer/detail.tiles" 
					:
				"public:home/main.tiles";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST )
	public String update(@ModelAttribute CustomerDTO cus) {
		logger.info("\n --------- CustomerController {} !! ----------","update");
		System.out.println("세션값 : "+session.getAttribute("cust"));
		customerService.modifyCustomer(cus);
		session.invalidate(); //session 제거
		pxy.setContext();
		customer = (CustomerDTO) session.getAttribute("cust");
		session.setAttribute("cust", customer);
		return "public:customer/detail.tiles";
	}
	
}
