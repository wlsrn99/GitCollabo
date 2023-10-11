package com.multi.mvc005;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ReplyController {
	@Autowired
	ReplyDAO replyDAO;
	
	@RequestMapping("reply_insert")
	public void isert(ReplyDTO replyDTO, Model model) {
		int result = replyDAO.insert(replyDTO);
		model.addAttribute("result", result);
	}
}
