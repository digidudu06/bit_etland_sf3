package com.bit_etland.web.mapper;

import java.util.List;

import com.bit_etland.web.domain.ProductDTO;

public interface ProductDAO {
	public void insertProduct(ProductDTO pro);
	
	public List<ProductDTO> selectProductList();
	public List<ProductDTO> selectProducts(String productId);
	public ProductDTO selectProduct(String productName);
	public int countProduct();
	public boolean existsProduct();
	
	public void updateProduct(ProductDTO pro);
	
	public void deleteProduct(ProductDTO pro);
}
