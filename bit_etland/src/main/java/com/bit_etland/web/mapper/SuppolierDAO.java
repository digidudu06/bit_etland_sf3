package com.bit_etland.web.mapper;

import java.util.List;

import com.bit_etland.web.domain.SuppolierDTO;

public interface SuppolierDAO {
	public void insertSuppolier(SuppolierDTO sup);
	
	public List<SuppolierDTO> selectSuppolierList();
	public List<SuppolierDTO> selectSuppoliers(String supplierName);
	public SuppolierDTO selectSuppolier(String supplierId);
	public int countSuppolier();
	public boolean existsSuppolier();
	
	public void updateSuppolier(SuppolierDTO sup);
	
	public void deteleSuppolier(SuppolierDTO sup);

}
