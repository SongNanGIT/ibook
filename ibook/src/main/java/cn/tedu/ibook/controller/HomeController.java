package cn.tedu.ibook.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	//转向欢迎页面
	@RequestMapping("/home")
	public String home(){
		return "/home/home";
	}

//	@RequestMapping("/{module}/Left")
//	public String sysadminLeft(@PathVariable String module){
//		return "/"+module+"/left";
//	}
//	@RequestMapping("/{module}/Main")
//	public String sysadminMain(@PathVariable String module){
//		return "/"+module+"/main";
//	}
}
