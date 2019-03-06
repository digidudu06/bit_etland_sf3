package com.bit_etland.web.service;

import java.util.List;

import com.bit_etland.web.domain.SuppolierDTO;
import org.springframework.stereotype.Component;

@Component
public interface SuppolierService {
	public void registSuppolier(SuppolierDTO sup);
	
	public List<SuppolierDTO> bringSuppolierList();
	public List<SuppolierDTO> retrieveSuppoliers(String supplierName);
	public SuppolierDTO retrieveSuppolier(String supplierId);
	public int countSuppolier();
	public boolean existsSuppolier();
	
	public void modifySuppolier(SuppolierDTO sup);
	
	public void removeSuppolier(SuppolierDTO sup);
}
