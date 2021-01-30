package com.trungvan.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.trungvan.controller.bean.LinkListBean;

@Controller
public class HomeController {
	
	@Qualifier("linkListBean")
	@Autowired
	private LinkListBean linkListBean;

	@GetMapping("/")
	public String showHome(Model model) {
		model.addAttribute("linkListBean", linkListBean);
		
		return "home-view";
	}
}
