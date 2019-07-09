package cn.bin.system.index.bound;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.bin.system.user.bound.UserEntity;

@Repository
public interface IndexMapper{

	@Select("select * from t_ssm_system_module")
	public List<ModuleEntity> listModule();

	@Select("select t.username,t.password from t_ssm_system_userInfo t where t.username = #{entity.username}")
	public UserEntity getUserByUsername(@Param(value="entity")UserEntity entity);
}
