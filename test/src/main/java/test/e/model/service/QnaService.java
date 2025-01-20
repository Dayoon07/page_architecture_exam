package test.e.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.e.model.mapper.QnaMapper;
import test.e.model.vo.QnaVo;

@Service
public class QnaService {
	
	@Autowired
	private QnaMapper mapper;
	
	public List<QnaVo> findAll() {
		return mapper.findAll();
	}
	
	public QnaVo selectById(int id) {
		return mapper.selectById(id);
	}

	public void save(String category, String qnaTitle, String qnaContent) {
		mapper.save(category, qnaTitle, qnaContent);
	}

	public List<QnaVo> selectByCategoryIsDb() {
		return mapper.selectByCategoryIsDb();
	}

	public List<QnaVo> selectByCategoryIsSpring() {
		return mapper.selectByCategoryIsSpring();
	}

	public List<QnaVo> selectByCategoryIsJava() {
		return mapper.selectByCategoryIsJava();
	}

	public List<QnaVo> selectByCategoryIsFront() {
		return mapper.selectByCategoryIsFront();
	}

	public QnaVo selectById(long id) {
		return mapper.selectById(id);
	}
	
	public List<QnaVo> searchMapper(String rs) {
		return mapper.searchMapper(rs);
	}

}
