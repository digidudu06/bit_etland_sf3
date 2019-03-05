package com.bit_etland.web.domain;

import lombok.Data;

public @Data class ProductDTO {
	private String productId, productName, supplierId, categoryId, unit, price;

}
