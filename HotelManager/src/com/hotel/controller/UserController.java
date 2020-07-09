package com.hotel.controller;

import javax.annotation.Resource;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.hotel.entity.User;
import com.hotel.service.UserService;

/**
 * 处理用户请求控制器
 * */
@Controller
public class UserController {
	
	/**
	 * 自动注入UserService
	 * */
	@Resource
	private UserService userService;

	/**
	 * 处理/login请求
	 * */
	@PostMapping(value="/login")
	 public ModelAndView login(
			User user,
			 ModelAndView mv,
			 HttpSession session){
		// 根据登录名和密码查找用户，判断用户登录
		User user1 = userService.login(user);
	
		if(user1 != null){
			// 登录成功，将user对象设置到HttpSession作用范围域
			session.setAttribute("user", user1);
			System.out.println("*********************"+session.getAttribute("user"));
			// 跳转
			mv.setViewName("main");
		}else{
			// 登录失败，设置失败提示信息，并跳转到登录页面
			mv.addObject("message", "登录名或密码错误，请重新输入!");
			mv.setViewName("loginForm");
		}
		return mv;
	}
	
	
}
