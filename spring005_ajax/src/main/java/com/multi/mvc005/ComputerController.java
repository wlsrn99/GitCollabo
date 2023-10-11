package com.multi.mvc005;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller //컨트롤러로 등록 + 싱글톤 생성
public class ComputerController {

	@Autowired
	ComputerService computerService; //주소!!
	
	@RequestMapping("computer") //get/post!
	public void computer(ComputerDTO computerDTO, Model model) {
		System.out.println("컨트롤러에서 받은 데이터>> " + computerDTO);
		int total = computerService.total(computerDTO); //int
		//model.addAttribute("computerDTO", computerDTO);
		model.addAttribute("total", total);
		
	}
}
