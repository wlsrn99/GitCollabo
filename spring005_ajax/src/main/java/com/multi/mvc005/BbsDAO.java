package com.multi.mvc005;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {

	@Autowired
	SqlSessionTemplate my;
	
	//게시물 1개당 아래쪽에 붙여넣을 댓글 list가지고 올 예정.
	public List<BbsDTO> list() {
		return my.selectList("bbs.list"); //List<BbsDTO>
	}
	
	//게시물 1개 검색 
	public BbsDTO one(int id) {
		return my.selectOne("bbs.one", id);
	}
}
