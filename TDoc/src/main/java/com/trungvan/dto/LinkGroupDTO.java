package com.trungvan.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LinkGroupDTO {

	private String groupTitle;
	private List<LinkDTO> linkDTOs;
	private LinkListDTO linkListDTO;

	public LinkGroupDTO(String groupTitle) {
		this.groupTitle = groupTitle;
		this.linkDTOs = new ArrayList<LinkDTO>();
	}

	// convenient method ...
	
	public boolean addLinkDTO(LinkDTO linkDTO) {
		if(linkDTO == null) {
			return false;
		} 
		
		linkDTO.setLinkGroupDTO(this);
		this.linkDTOs.add(linkDTO);
		
		return true;
	}
	
	public boolean deleteLinkDTO(String content) {
		if(content == null || content.trim().isEmpty()) {
			return false;
		}
		
		for(LinkDTO linkDTO : linkDTOs) {
			if(linkDTO.getContent().contentEquals(content)) {
				linkDTO.setLinkGroupDTO(null);
				this.linkDTOs.remove(linkDTO);
				break;
			}
		}
		
		return true;
	}
}
