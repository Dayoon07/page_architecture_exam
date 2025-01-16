package com.e.d.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.e.d.model.mapper.MainTestMapper;
import com.e.d.model.vo.MainTestVo;

@Service
public class MainTestService {
	
	@Autowired
	private MainTestMapper mapper;
	
	public List<MainTestVo> findAll() {
		return mapper.findAll();
	}
	
	public void save(String category, String qnaTitle, String qnaContent) {
		mapper.save(category, qnaTitle, qnaContent);
	}
	
	public List<MainTestVo> selectByCategoryIsDb() {
		return mapper.selectByCategoryIsDb();
	}
	
	public List<MainTestVo> selectByCategoryIsFront() {
		return mapper.selectByCategoryIsFront();
	}
	
	public List<MainTestVo> selectByCategoryIsJava() {
		return mapper.selectByCategoryIsJava();
	}
	
	public List<MainTestVo> selectByCategoryIsSpring() {
		return mapper.selectByCategoryIsSpring();
	}
	
	public MainTestVo selectById(long id) {
		return mapper.selectById(id);
	}
	
}
