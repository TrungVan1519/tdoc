package com.trungvan.dto;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class LinkListDTO {

	private String listTitle;
	private List<LinkGroupDTO> linkGroupDTOs;
	
	public LinkListDTO(String listTitle) {
		this.listTitle = listTitle;
		this.linkGroupDTOs = new ArrayList<LinkGroupDTO>();
	}

	// convenient method ...
	
	public boolean addLinkGroupDTO(LinkGroupDTO linkGroupDTO) {
		if(linkGroupDTO == null) {
			return false;
		} 
		
		for(LinkGroupDTO existingLinGroupDTO : this.linkGroupDTOs) {
			if(linkGroupDTO.getGroupTitle().contentEquals(existingLinGroupDTO.getGroupTitle())) {
				return true;
			}
		}
		
		linkGroupDTO.setLinkListDTO(this);
		this.linkGroupDTOs.add(linkGroupDTO);
		
		return true;
	}
	
	public boolean deleteLinkDTOByTitle(String groupTitle) {
		if(groupTitle == null || groupTitle.trim().isEmpty()) {
			return false;
		}
		
		for(LinkGroupDTO linkGroupDTO : linkGroupDTOs) {
			if(linkGroupDTO.getGroupTitle().contentEquals(groupTitle)) {
				linkGroupDTO.setLinkListDTO(null);
				this.linkGroupDTOs.remove(linkGroupDTO);
				break;
			}
		}
		
		return true;
	}
	
	public LinkGroupDTO getLinkGroupDTOByTitle(String groupTitle) {
		if(groupTitle == null || groupTitle.trim().isEmpty()) {
			return null;
		}
		
		for(LinkGroupDTO linkGroupDTO : linkGroupDTOs) {
			if(linkGroupDTO.getGroupTitle().contentEquals(groupTitle)) {
				return linkGroupDTO;
			}
		}
		
		return null;
	}
	
}
