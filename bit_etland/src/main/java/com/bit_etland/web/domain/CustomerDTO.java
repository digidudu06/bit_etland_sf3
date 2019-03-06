package com.bit_etland.web.domain;

import org.springframework.stereotype.Component;

import lombok.Data;

 @Data @Component
public class CustomerDTO {
	private String rnum,
					customerId,
					customerName,
					password,
					ssn,
					photo,
					phone,
					city, //지번주소
					address, 
					postalCode;

}
