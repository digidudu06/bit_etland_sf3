package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ShipperDTO;
@Component
public interface ShipperMapper {
	public void insertShipper(ShipperDTO shi);
	
	public List<ShipperDTO> selectShipperList();
	public List<ShipperDTO> selectShippers(String shipperName);
	public ShipperDTO selectShipper(String shipperId);
	public int countShipper();
	public boolean existsShipper(String shipperId);
	
	public void updateShipper(ShipperDTO shi);
	
	public void deteleShipper(ShipperDTO shi);

}
