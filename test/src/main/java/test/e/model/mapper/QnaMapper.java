package test.e.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import test.e.model.vo.QnaVo;

@Mapper
public interface QnaMapper {
	List<QnaVo> findAll();
	void save(@Param("category") String category, @Param("qnaTitle") String qnaTitle, @Param("qnaContent") String qnaContent);
	List<QnaVo> selectByCategoryIsDb();
	List<QnaVo> selectByCategoryIsSpring();
	List<QnaVo> selectByCategoryIsJava();
	List<QnaVo> selectByCategoryIsFront();
	QnaVo selectById(long id);
	List<QnaVo> searchMapper(@Param("rs") String rs);
}
