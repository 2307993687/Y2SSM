package cn.controller;

import cn.service.Smbms_UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;

/***
 *
 * 实验SSM框架整合是否有问题
 * 2018-5-7
 */
@Controller
public class IndexController {
	@Resource
	private Smbms_UserService userService;

	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView index(@RequestParam(required=false,defaultValue="xxx",value="uname") String username) {
		String str = "学框架就学Spring  MVC";
		ModelAndView mav = new ModelAndView();
		mav.addObject("message", str);
		mav.setViewName("index");
		return mav;
	}

	/*
	 * 验证用户名与密码是否一致
	 * @param userCode  用户名
	 * @param userPassword 密码
	 * @return 返回页面
	 */
	@RequestMapping("/add")
	public String add(String userCode, String userPassword,Model model) {
		System.out.println("userCode");
		System.out.println("userPassword");
		if(userService.list(userCode,userPassword)>0){
			return "add";
		}
		return "index";
	}
}
