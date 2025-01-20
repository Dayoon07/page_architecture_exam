package test.e.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import test.e.model.mapper.FrontUsersMapper;
import test.e.model.vo.FrontUsersVo;

@Service
public class FrontUsersService {
	
	@Autowired
	private FrontUsersMapper mapper;
	
	public List<FrontUsersVo> findAll() {
		return mapper.findAll();
	}
	
	public void save(String userid1, String userid2, String userid3, String password) {
		mapper.save(userid1, userid2, userid3, password);
	}
	
	public FrontUsersVo login(String userid1, String userid2, String userid3, String password) {
		return mapper.login(userid1, userid2, userid3, password);
	}
	
	public List<FrontUsersVo> findById(int id) {
		return mapper.findById(id);
	}
	
}
