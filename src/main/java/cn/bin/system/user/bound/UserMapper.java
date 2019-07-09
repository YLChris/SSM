package cn.bin.system.user.bound;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

@Repository
public interface UserMapper {

	@Select("select user_id,realname,username,password,gender,birth,hobby,telephone,area,description from t_ssm_system_userInfo where status=1")
	public List<UserEntity> listUser();
	
	@Select("select user_id,realname,username,password,gender,birth,hobby,telephone,area,description from t_ssm_system_userInfo where username=#{entity.username}")
	public List<UserEntity> searchUser(@Param(value="entity")UserEntity entity);
	
/*	@Delete("delete from t_ssm_system_userInfo where user_id=#{entity.user_id}")*/
	@Update("update t_ssm_system_userinfo set status=0 where user_id=#{entity.user_id}")
	public int delUserInfo(@Param(value="entity")UserEntity entity);
	
	@Insert("insert into t_ssm_system_userInfo(username,password) values(#{entity1.username},#{entity1.password})")
	public int insertInfo(@Param(value="entity1")UserEntity entity);
	
	@Update("update t_ssm_system_userinfo set username=#{entity.username},password = #{entity.password} where user_id=#{entity.user_id}")
	public int updateInfo(@Param(value="entity")UserEntity entity);
}
