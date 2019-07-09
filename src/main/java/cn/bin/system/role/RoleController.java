package cn.bin.system.role;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.bin.system.role.bound.RoleEntity;


@Controller
public class RoleController {

	@Resource
	private RoleService roleService;
	
	@RequestMapping("role.html")
	public String role() {	
		return "system/role";
	}
	@RequestMapping("role/listRole.html")
	public @ResponseBody List<RoleEntity> listUser() {
		List<RoleEntity> roleList=roleService.listInfo();
		return roleList;
	}
   /* @RequestMapping("/role.html")//此处功能和role一样  
    public ModelAndView show1(HttpServletRequest request,  
               HttpServletResponse response) throws Exception {  
           ModelAndView mav = new ModelAndView("system/role");  
          // mav.setViewName("system/role");可以跳转到指定页面
           mav.addObject("account", "account -1");  
           return mav;  
       }  */
	@RequestMapping("role/queryRole.html")//查询
	public @ResponseBody List<RoleEntity> queryRole(@ModelAttribute RoleEntity entity){
		List<RoleEntity> rolelist=roleService.queryRole(entity);
		return rolelist;
	}
	
	
	@RequestMapping("role/deleteRole.html")//删除
	public @ResponseBody int deleteRole(@ModelAttribute RoleEntity entity){
		return roleService.deleteRole(entity);	
	}
	
	@RequestMapping("role/insertOrEditRole.html")//添加或修改
	public @ResponseBody int insertRole(@ModelAttribute RoleEntity entity){
		if(entity.getRole_id()==null){
			return roleService.insertRole(entity);
		}else{
			return roleService.editInfoRole(entity);
		}
		
	}
	
	
}
