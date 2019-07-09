package cn.bin.system.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.bin.system.user.bound.UserEntity;

@Controller
public class noticeController {

	@RequestMapping("notice.html")
	public String homepage(@ModelAttribute UserEntity entity) {
		return "system/notice";
	}
}
