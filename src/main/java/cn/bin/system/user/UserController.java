package cn.bin.system.user;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bin.system.user.bound.UserEntity;

@Controller
public class UserController {

	@Resource
	private UserService userService;

	@RequestMapping("user.html")
	public String init() {
		return "system/user";
	}

	@RequestMapping("user/listUser.html")
	public @ResponseBody List<UserEntity> listUser() {
		List<UserEntity> userList = userService.listUser();
		return userList;
	}
	
	@RequestMapping("user/delUser.html")
	public @ResponseBody int delUserInfo(@RequestParam("user_id") String user_id){
		String[] id_arr = user_id.split(",");
		
		int rst = 0;
		for(String id : id_arr){
			UserEntity item = new UserEntity();
			item.setUser_id(Long.parseLong(id));
			rst+=userService.delUserInfo(item);
		}
		return rst;
	}
	
	@RequestMapping("user/insertOrUpdateUser.html")
	public @ResponseBody int insertOrUpdateUser(@ModelAttribute UserEntity entity){
		if(entity.getUser_id() == null){
			return userService.insertInfo(entity);	
		}else{
			return userService.updateInfo(entity);	
		}
	}
	@RequestMapping("user/searchUser.html")
	public @ResponseBody List<UserEntity> searchUser(@ModelAttribute UserEntity entity){
		List<UserEntity> userList = userService.searchUser(entity);
		return userList;
	}
	
}
