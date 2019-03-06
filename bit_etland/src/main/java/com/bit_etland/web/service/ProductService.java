package com.bit_etland.web.service;

import java.util.List;

import com.bit_etland.web.domain.ProductDTO;
import org.springframework.stereotype.Component;

@Component
public interface ProductService {
	public void registProduct(ProductDTO pro);
	
	public List<ProductDTO> bringProductList();
	public List<ProductDTO> retrieveProducts(String productId);
	public ProductDTO retrieveProduct(String productName);
	public int countProduct();
	public boolean existsProduct();
	
	public void modifyProduct(ProductDTO pro);
	
	public void deleteProduct(ProductDTO pro);
}
