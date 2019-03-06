package com.bit_etland.web.mapper;

import java.util.List;

import org.springframework.stereotype.Component;

import com.bit_etland.web.domain.ImageDTO;
import com.bit_etland.web.proxy.Proxy;
@Component
public interface ImageMapper {
	public void insertImage(ImageDTO img);
	
	public List<ImageDTO> selectImageList(Proxy pxy);
	public List<ImageDTO> selectImages(Proxy pxy);
	public ImageDTO selectOneImage(ImageDTO img);
	public String lastImageSeq(ImageDTO img);
	
	public int countImages(Proxy pxy);
	public boolean existImage(ImageDTO img);
	
	public void updateImage(ImageDTO img);
	
	public void deleteImage(ImageDTO img);
}
