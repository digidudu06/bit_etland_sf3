package com.bit_etland.web.service;

import java.util.List;

import com.bit_etland.web.domain.CategoryDTO;
import com.bit_etland.web.proxy.Proxy;

public interface CategoryService {
	public void joinCategory(CategoryDTO cus);
	
	public List<CategoryDTO> bringCategoryLists(Proxy pxy);
	public List<CategoryDTO> retrieveCategorys(String city);
	public CategoryDTO retrieveCategory(String categoryId);
	public int countCategory();
	public boolean existsCategory(String categoryId);
	
	public void modifyCategory(CategoryDTO cus);
	
	public void removeCategory(CategoryDTO cus);
	
}
