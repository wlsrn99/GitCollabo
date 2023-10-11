package com.multi.mvc005;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ListController {

	@RequestMapping("fruit")
	public void fruit(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("수박");
		list.add("사과");
		list.add("복숭아");
		list.add("포도");
		model.addAttribute("list", list);
	}
	
	@RequestMapping("tour")
	public void tour(Model model) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("제주도");
		list.add("부산");
		list.add("여수");
		list.add("거제도");
		model.addAttribute("list", list);
	}
}
