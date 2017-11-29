package cn.tedu.ibook.controller;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tedu.ibook.exception.MsgException;
//import cn.tarena.ht.tool.Md5Utils;
import cn.tedu.ibook.pojo.User;
import cn.tedu.ibook.service.UserService;
import cn.tedu.ibook.tool.Md5Utils;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping("/tologin") // home里拦截
	public String toLogin() {
		return "/login/login";
	}

	// @RequestMapping("/login")
	// public String login(String username,String password){
	//
	// List<User> users = userService.login(username,password);
	// return "home";
	// }

	@RequestMapping("/login") // 正式登录按钮点击时拦截的信息
	public String login(String username, String password, Model model, HttpSession session) {

		// 代表当前用户
		// Subject作为Shiro框架的唯一接口，先创建subject对象来实例化接口
		Subject subject = SecurityUtils.getSubject();
		// 用户输入的用户名和密码，存到token中
		UsernamePasswordToken token = new UsernamePasswordToken(username, password);
		System.out.println(token);
		try {
			subject.login(token);

			// 得到登录成功的user
			User user = (User) subject.getPrincipal();

			session.setAttribute("_CURRENT_USER", user);

			return "home/home";
		} catch (AuthenticationException e) {
			e.printStackTrace();

			model.addAttribute("errorInfo", "用户名或密码不正确！");
			return "login/login";
		}

	}

	@RequestMapping("/toregist")
	public String toRegist() {
		return "login/login";
	}

	@RequestMapping("/regist")
	public String regist(User user, Model model) throws MsgException {

		if (StringUtils.isEmpty(user.getUsername()) || StringUtils.isEmpty(user.getPassword())) {

			model.addAttribute("errorInfo1", "用户名或密码不能为空！");
			return "login/login";
		}

		// 用户名校验
		User un = userService.findUn(user);
		if (un != null) {
			model.addAttribute("errorInfo4", "该名称被占用！");
			return "login/login";
		}
		// >>邮箱格式是否正确
		// admin123@163.com admin123@sina.com.cn
		// 邮箱正则: "^\\w+@\\w+(\\.[a-z]+)+$"
		if (!user.getEmail().matches("^\\w+@\\w+(\\.[a-z]+)+$")) {
			model.addAttribute("errorInfo3", "邮箱格式不正确！");
			return "login/login";
		}

		// 手机号校验
		// 11位移动手机号
		// 以13、14、15、18开头
		if (!user.getPhone().matches("^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$")) {
			model.addAttribute("errorInfo5", "手机号格式不正确！");
			return "login/login";
		}

		// 密码校验
		// ^[a-zA-Z]\w{5,17}$
		// 匹配 以字母开头，长度在6~18之间，只能包含字符、数字和下划线
		if (!user.getPassword().matches("^[a-zA-Z]\\w{5,17}$")) {
			model.addAttribute("errorInfo6", "密码格式不正确！");
			return "login/login";
		}

		String password = user.getPassword();
		password = Md5Utils.getMd5(user.getPassword(), user.getUsername());
		user.setPassword(password);
		userService.regist(user);
		model.addAttribute("errorInfo2", "注册成功！");
		// 跳转到登录页面
		return "login/login";

	}

	// 退出登录
	@RequestMapping("/tologout")
	public String logout(HttpSession session) {
		session.removeAttribute("_CURRENT_USER");

		// 通知shiro框架 退出登录
		Subject subject = SecurityUtils.getSubject();

		// 判断是否是登录状态 如果是则退出
		if (subject.isAuthenticated()) {
			subject.logout();
		}

		return "/home/home";

	}

}
