package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.CategoryDTO;
import com.bit_etland.web.proxy.Proxy;

@Component
public interface CategoryMapper {
	public void insertCategory(CategoryDTO cus);
	
	public List<CategoryDTO> selectCategoryLists(Proxy pagePxy);
	public List<CategoryDTO> selectCategorys(String city);
	public CategoryDTO selectCategory(String categoryId);
	public int countCategory();
	public boolean existsCategory(String categoryId);
	
	public void updateCategory(CategoryDTO cus);
	
	public void deleteCategory(CategoryDTO cus);
}
