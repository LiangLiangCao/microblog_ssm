package com.control;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.entity.User;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserLoginControl {
	
	@Resource
	private UserService userService;
	
	@RequestMapping("/login")
	public String toLogin(User user,HttpServletRequest request){
		
		User u = userService.userLogin(user);
		
		request.getSession().setAttribute("loginUser", u);
		
		return "forward:/topicList/select";
		
	}

}
