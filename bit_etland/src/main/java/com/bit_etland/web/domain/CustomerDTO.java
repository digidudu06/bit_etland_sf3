package com.bit_etland.web.domain;

import lombok.Data;

public @Data class CustomerDTO {
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
