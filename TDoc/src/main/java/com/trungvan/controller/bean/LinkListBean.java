package com.trungvan.controller.bean;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.trungvan.dto.LinkListDTO;

import lombok.Getter;
import lombok.Setter;

@Component("linkListBean")
@Getter
@Setter
public class LinkListBean {
	
	// Khong can thiet nhung van giu lai vi:
	//	> Day la vi du khi tu tao Bean de dung
	//	> Day la VD de khong bi nham lan giua Bean Singleton
	//		voi tao nhieu Bean Singleton
//	private LinkListDTO javaLinkListDTOBean;
//	private LinkListDTO javascriptLinkListDTOBean;
	
	// Khong can thiet nhung van giu lai vi:
	//	> Day la vi du khi tu tao Bean de dung
	//	> Day la VD de khong bi nham lan giua Bean Singleton
	//		voi tao nhieu Bean Singleton
//	@Bean("javaLinkListDTOBean")
//	public LinkListDTO getJavaLinkListDTOBean() {
//		javaLinkListDTOBean = new LinkListDTO("Java");
//		return javaLinkListDTOBean;
//	}
//
//	@Bean("javascriptLinkListDTOBean")
//	public LinkListDTO getJavascriptLinkLisDTOtBean() {
//		javascriptLinkListDTOBean = new LinkListDTO("Javascript");
//		return javascriptLinkListDTOBean;
//	}
	
	private List<LinkListDTO> linkListDTOs;
	
	public LinkListBean() {
		linkListDTOs = new ArrayList<LinkListDTO>();
		linkListDTOs.add(new LinkListDTO("Java"));
		linkListDTOs.add(new LinkListDTO("Javascript"));
		linkListDTOs.add(new LinkListDTO("CSharp"));
		linkListDTOs.add(new LinkListDTO("Spring"));
	}
	
	public LinkListDTO getLinkListDTOByListTitle(String listTitle) {
		if(listTitle == null || listTitle.trim().isEmpty()) {
			return null;
		}
		
		for(LinkListDTO linkListDTO : this.linkListDTOs) {
			if(linkListDTO.getListTitle().contentEquals(listTitle)) {
				return linkListDTO;
			}
		}
		
		return null;
	}
}
