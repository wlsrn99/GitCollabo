package com.multi.mvc005;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BbsController {

	@Autowired
	BbsDAO bbsDAOoosfislfkj
		oo;
	
	@Autowired
	ReplyDAO replyDAO;
	
	@RequestMapping("bbs_list")
	public void list(Model model, HttpSession session) {
		List<BbsDTO> list = bbsDAO.list();
		model.addAttribute("list", list);
		session.setAttribute("user_id", "apple");
	}
	
	@RequestMapping("bbs_one")
	public void one(int id, Model model) {
		BbsDTO dto = bbsDAO.one(id);
		//댓글리스트를 구해서, 모델 속성으로 
		//댓글리스트를 지정!
		List<ReplyDTO> list = replyDAO.list(id);
		model.addAttribute("dto", dto);
		model.addAttribute("list", list);
	}
}
