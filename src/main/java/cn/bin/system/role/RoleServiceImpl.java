package cn.bin.system.role;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bin.system.role.bound.RoleEntity;
import cn.bin.system.role.bound.RoleMapper;
@Service
public class RoleServiceImpl implements RoleService{

	@Autowired
	private RoleMapper roleMapper;
	@Override
	public List<RoleEntity> listInfo() {
		return roleMapper.listInfo();
		
	}
	@Override
	public List<RoleEntity> queryRole(RoleEntity entity) {
		return roleMapper.queryRole(entity);
	}
	@Override
	public int deleteRole(RoleEntity entity) {
		return roleMapper.deleteRole(entity);
	}
	@Override
	public int insertRole(RoleEntity entity) {
		return roleMapper.insertRole(entity);
	}
	@Override
	public int editInfoRole(RoleEntity entity) {
		return roleMapper.editInfoRole(entity);
	}
	
	

}
