package cn.bin.system.user;

import java.util.List;

import cn.bin.system.user.bound.UserEntity;

public interface UserService {
	public List<UserEntity> listUser();

	public List<UserEntity> searchUser(UserEntity entity);
	
	public int delUserInfo(UserEntity entity);

	public int insertInfo(UserEntity entity);

	public int updateInfo(UserEntity entity);
}