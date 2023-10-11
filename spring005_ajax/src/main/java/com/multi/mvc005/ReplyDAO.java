package com.multi.mvc005;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReplyDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//게시물 1개당 아래쪽에 붙여넣을 댓글 list가지고 올 예정.
	public List<ReplyDTO> list(int oriid) {
		return my.selectList("reply.list", oriid); //List<ReplyDTO>
	}
	
	//댓글 insert
	public int insert(ReplyDTO replyDTO) {
		return my.insert("reply.insert", replyDTO);
	}
}
