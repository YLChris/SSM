package cn.bin.system.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bin.system.user.bound.UserEntity;
import cn.bin.system.user.bound.UserMapper;

@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	
	public List<UserEntity> listUser(){
		return userMapper.listUser();
	}

	@Override
	public int delUserInfo(UserEntity entity) {
		return userMapper.delUserInfo(entity);
	}

	@Override
	public int insertInfo(UserEntity entity) {
		return userMapper.insertInfo(entity);
	}

	@Override
	public int updateInfo(UserEntity entity) {
		return userMapper.updateInfo(entity);
	}

	@Override
	public List<UserEntity> searchUser(UserEntity entity) {
		return userMapper.searchUser(entity);
	}

	
}
