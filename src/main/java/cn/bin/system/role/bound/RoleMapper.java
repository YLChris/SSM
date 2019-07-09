package cn.bin.system.role.bound;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;
@Repository
public interface RoleMapper {

	@Select("select role_id,role_name,role_desc from r_ssm_system_roleinfo")
	public List<RoleEntity> listInfo();
	@Select("select role_id,role_name,role_desc from r_ssm_system_roleinfo where role_id=#{entity.role_id} AND role_name=#{entity.role_name}")
	public List<RoleEntity> queryRole(@Param(value="entity")RoleEntity entity);
	@Delete("delete from r_ssm_system_roleinfo where role_id=#{entity.role_id}")
	public int deleteRole(@Param(value="entity")RoleEntity entity);
	@Insert("insert into r_ssm_system_roleinfo(role_name,role_desc) values(#{entity.role_name},#{entity.role_desc})")
	public int insertRole(@Param(value="entity")RoleEntity entity);
	@Update("update r_ssm_system_roleinfo set role_name=#{entity.role_name},role_desc=#{entity.role_desc} where role_id=#{entity.role_id};")
	public int editInfoRole(@Param(value="entity")RoleEntity entity);

}
