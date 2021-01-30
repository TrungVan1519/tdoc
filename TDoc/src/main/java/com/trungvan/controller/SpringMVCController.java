package com.trungvan.controller;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.trungvan.controller.bean.LinkListBean;
import com.trungvan.dto.LinkDTO;
import com.trungvan.dto.LinkGroupDTO;

@Controller
@RequestMapping("/spring-mvc")
public class SpringMVCController {
	
	@Autowired
	private LinkListBean linkListBean;
	
	@PostConstruct
	private LinkGroupDTO setupData() {
		// LinkGroupDTO adds LinkDTO
		LinkGroupDTO linkGroupDTO = new LinkGroupDTO("Spring MVC");

		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/concept", "Khái niệm", 1));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/creating-project", "Cách tạo 1 Spring MVC Project", 1));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/project-structure", "Cấu trúc một Spring MVC Project", 2));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/three-layer-structure", "Cấu trúc 3 lớp", 1));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/about-controller", "Hiểu về Controller", 30));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/about-view", "Hiểu về View", 330));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/reading-form-data", "Đọc dữ liệu từ Form", 530));
		
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/form-validator", "Xác thực dữ liệu Form", 630));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/serving-static-resource", "Sử dụng các resource tĩnh", 1));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/exception-handler", "Xử lý lỗi", 1));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/uploading-and-downloading-file", "Upload File và Download File", 730));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/crud-db-hibernate-and-spring-transaction", "Tương tác với database không sử dụng c3p0", 830));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/crud-db-hibernate-and-spring-transaction-and-c3p0", "Tương tác với database có sử dụng c3p0", 830));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/spring-log4j", "Làm việc với Spring Log4J", 930));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/spring-tiles-3", "Làm việc với Spring Tiles 3", 930));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/spring-httpsession", "Tạo session trong web", 930));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/spring-security", "Làm việc với Spring Security", 930));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/spring-mail", "Làm việc với Spring Mail", 930));
		linkGroupDTO.addLinkDTO(new LinkDTO("spring-mvc/annotation", "Các Annotation sử dụng trong Spring MVC", 930));
		
		// Not allow to use bean in @PostProduct
//		// LinkListDTO (bean) adds LinkGroupDTO
//		linkListDTOBeans.get(0).addLinkGroupDTO(linkGroupDTO);
		
		return linkGroupDTO;
	}

	@GetMapping(value = "/concept")
	public String showConceptView(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.concept.definition";
	}

	@GetMapping(value = "/creating-project")
	public String showCreatingProjectView(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.creatingProject.definition";
	}

	@GetMapping(value = "/project-structure")
	public String showProjectStructure(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.projectStructure.definition";
	}

	@GetMapping(value = "/three-layer-structure")
	public String show3LayerStructure(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.threeLayerStructure.definition";
	}

	@GetMapping(value = "/about-controller")
	public String showAboutController(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));
		
		String fileNameSourceCode = "Example_RequestParam_And_PathVariable.rar";
		System.out.println(">> fileNameSourceCode: " + fileNameSourceCode);
		model.addAttribute("fileNameSourceCode", fileNameSourceCode);

		return "springMVCView.aboutController.definition";
	}

	@GetMapping(value = "/about-view")
	public String showAboutView(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.aboutView.definition";
	}

	@GetMapping(value = "/reading-form-data")
	public String showReadingFormData(Model model, HttpServletResponse response) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.readingFormData.definition";
	}

	@GetMapping(value = "/annotation")
	public String showAnnotation(Model model) {
		linkListBean.getLinkListDTOByListTitle("Spring").addLinkGroupDTO(setupData());
		
		model.addAttribute("linkListBean", linkListBean);
		model.addAttribute("linkGroupDTO", linkListBean.getLinkListDTOByListTitle("Spring").getLinkGroupDTOByTitle("Spring MVC"));

		return "springMVCView.annotation.definition";
	}
}
