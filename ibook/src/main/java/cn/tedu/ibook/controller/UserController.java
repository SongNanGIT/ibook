package cn.tedu.ibook.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@Autowired
//	private UserService userService;
	@RequestMapping("/tologin")
	public String toLogin(){
		//userService.login(username);
		return "/login/login1";
	}
}
