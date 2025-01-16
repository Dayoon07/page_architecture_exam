package com.e.d.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.e.d.model.vo.MainTestVo;

@Mapper
public interface MainTestMapper {
	List<MainTestVo> findAll();
	void save(String category, String qnaTitle, String qnaContent);
	List<MainTestVo> selectByCategoryIsDb();
	List<MainTestVo> selectByCategoryIsSpring();
	List<MainTestVo> selectByCategoryIsJava();
	List<MainTestVo> selectByCategoryIsFront();
	MainTestVo selectById(long id);
}
