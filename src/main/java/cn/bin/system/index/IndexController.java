package cn.bin.system.index;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bin.system.index.bound.ModuleEntity;
import cn.bin.system.user.bound.UserEntity;

@Controller
public class IndexController {

	@Resource(name = "indexService")
	private IndexService indexService;


	@RequestMapping("index.html")
	public String index(@ModelAttribute UserEntity entity, HttpServletRequest request, HttpServletResponse response) {
		if (entity.getUsername() == null) {
			return "system/login";
		}
		entity = indexService.getUserByUsername(entity);
		if (entity != null) {
			List<ModuleEntity> listModule = indexService.listModule();
			List<String> name_list = new ArrayList<>();
			List<String> icon_list = new ArrayList<>();
			HttpSession session = request.getSession();
			for (ModuleEntity moduleEntity : listModule) {
				name_list.add(moduleEntity.getModule_name());
				icon_list.add(moduleEntity.getIcon_class());
			}
			for (int i = 0; i < name_list.size(); i++) {
				session.setAttribute("moduleEntity" + i, name_list.get(i));
				session.setAttribute("icon_name" + i, icon_list.get(i));
			}
			return "system/index";
		} else {
			return "system/login";
		}
	}

	@RequestMapping("homepage.html")
	public String homepage(@ModelAttribute UserEntity entity) {
		return "system/homepage";
	}

	/*
	 * @Resource public void setIndexService(IndexService indexService) {
	 * this.indexService = indexService; }
	 */
}
