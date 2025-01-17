package test.e.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import test.e.model.vo.FrontUsersVo;

@Mapper
public interface FrontUsersMapper {
	List<FrontUsersVo> findAll();
	void save(@Param("userid1") String userid1, @Param("userid2") String userid2, 
            @Param("userid3") String userid3, @Param("password") String password);
	FrontUsersVo login(@Param("userid1") String userid1, @Param("userid2") String userid2, 
            @Param("userid3") String userid3, @Param("password") String password);
}
