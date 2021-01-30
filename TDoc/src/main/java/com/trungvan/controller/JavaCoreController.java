package com.trungvan.controller;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trungvan.controller.bean.LinkListBean;
import com.trungvan.dto.LinkDTO;
import com.trungvan.dto.LinkGroupDTO;

@Controller
@RequestMapping("/java-core")
public class JavaCoreController {

	@Qualifier("linkListBean")
	@Autowired
	private LinkListBean linkListBean;

	@PostConstruct
	private LinkGroupDTO setupData() {
		// LinkGroupDTO adds LinkDTO
		LinkGroupDTO linkGroupDTO = new LinkGroupDTO("Java Basic");

		linkGroupDTO.addLinkDTO(new LinkDTO("/datatype", "Kiểu dữ liệu", 130));
		linkGroupDTO.addLinkDTO(new LinkDTO("/input-output", "Nhập xuất dữ liệu", 230));
		linkGroupDTO.addLinkDTO(new LinkDTO("/operator", "Toán tử", 30));
		linkGroupDTO.addLinkDTO(new LinkDTO("/if-else", "Câu lệnh điều khiển if-else", 330));
		linkGroupDTO.addLinkDTO(new LinkDTO("/comment", "Ghi chú", 430));
		linkGroupDTO.addLinkDTO(new LinkDTO("/passing-value", "Truyền biến tham chiếu và tham trị", 530));
		linkGroupDTO.addLinkDTO(new LinkDTO("/handling-exception", "Xử lý biệt lệ (try-catch-finally)", 630));
		linkGroupDTO.addLinkDTO(new LinkDTO("/array", "Mảng", 730));
		linkGroupDTO.addLinkDTO(new LinkDTO("/enum", "Enum", 830));
		linkGroupDTO.addLinkDTO(new LinkDTO("/boxing-and-unboxing", "Đóng gói dữ liệu", 930));
		
		// Not allow to use bean in @PostProduct
//		// LinkListDTO (bean) adds LinkGroupDTO
//		linkListDTOBeans.get(0).addLinkGroupDTO(linkGroupDTO);
		
		return linkGroupDTO;
	}
	
	@GetMapping(value = "/datatype")
	public String showHomeView(Model model) {
		linkListBean.getLinkListDTOByListTitle("Java").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Java").getLinkGroupDTOByTitle("Java Basic"));

		return "javaCoreView.datatypeView.definition";
	}
}
