package com.bit_etland.web.domain;

import lombok.Data;

public @Data class OrderDetailDTO {
	private int orderDetailId, orderId, productId, quantity;

	
}
