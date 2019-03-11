package com.bit_etland.web.controller;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	@Autowired ContextProxy pxy;
	
	@RequestMapping(value="/signin", method=RequestMethod.POST )
	public String signin(@ModelAttribute CustomerDTO cus,
				Model session) {
		logger.info("\n --------- CustomerController {} !! ----------","signin");
		System.out.println("로그인 전 : "+ customer.toString());
		
		customer = customerService.retrieveOneCustomer(cus);
		if(customer != null) session.addAttribute("cust", customer);
		System.out.println("로그인 후 결과" + customer.toString());
		return (customer != null)? 
				"public:customer/detail.tiles" 
					:
				"public:home/main.tiles";
	}
	@RequestMapping(value="/detail")
	public String detail(@RequestParam ("customerId")String customerId, Model model) {
		logger.info("\n --------- CustomerController {} !! ----------","signin");
		System.out.println("로그인 전 : "+ customer.toString());
		customer.setCustomerId(customerId);
		customer = customerService.retrieveOneCustomer(customer);
		model.addAttribute("cust", customer);
		System.out.println("로그인 후 결과" + customer.toString());
		return "public:customer/detail.tiles";
	}
	@RequestMapping(value="/update", method=RequestMethod.POST )
	public String update(@ModelAttribute CustomerDTO cus,
			Model session,
			RedirectAttributes red) {
		logger.info("\n --------- CustomerController {} !! ----------","update");
		customerService.modifyCustomer(cus);
		customer = customerService.retrieveOneCustomer(cus);
		session.addAttribute("cust", customer);
		red.addAttribute("customerId",cus.getCustomerId());
		return "redirect:/customer/detail";
	}
	
}
