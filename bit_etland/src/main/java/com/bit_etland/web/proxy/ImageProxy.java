package com.bit_etland.web.proxy;

import java.io.File;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;

import com.bit_etland.web.domain.ImageDTO;
import com.bit_etland.web.enums.Props;

import lombok.Data;

@Data
public class ImageProxy implements Proxy {
	ImageDTO img;

	@Override
	public void carryOut(Object o) {
		System.out.println("이미지 프록시 1번");
		HttpServletRequest request = (HttpServletRequest) o;
		if(!ServletFileUpload.isMultipartContent(request)) {
			System.out.println("멀티파트 리퀘스트가 아닙니다.");
			return;
		}
		FileItemFactory factory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(factory);
		upload.setFileSizeMax(1024 * 1024 * 40); //40MB
		upload.setSizeMax(1024 * 1024 * 50); //50MB
		List<FileItem> items = null;
		try {
			File file = null;
			items = upload.parseRequest(new ServletRequestContext(request));
			Iterator<FileItem> it = items.iterator();
			while(it.hasNext()) {
				FileItem item = it.next();
				if(!item.isFormField()) {
					String fileName = item.getName();
					file = new File(Props.IMG.getValue()+fileName);
					item.write(file);
					img = new ImageDTO();
					/*
					 * img.setImgName(fileName.substring(0,fileName.indexOf(".")));
					 * img.setImgExtention(fileName.substring(fileName.indexOf(".")+1));
					 * 
					 * System.out.println("파일명 : "+img.getImgName()+"******확장자 : "+img.
					 * getImgExtention());
					 * 
					 * System.out.println("이미지 : "+request.getParameter("customer_id"));
					 * img.setOwner(request.getParameter("customer_id"));
					 */
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
