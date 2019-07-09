package cn.bin.system.role;

import java.util.List;

import cn.bin.system.role.bound.RoleEntity;

public interface RoleService {

	public List<RoleEntity> listInfo();//整表显示
	public List<RoleEntity> queryRole(RoleEntity entity);
	public int deleteRole(RoleEntity entity);
	public int insertRole(RoleEntity entity);
	public int editInfoRole(RoleEntity entity);

}
