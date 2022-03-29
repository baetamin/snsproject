package com.baemongsil.sns.user;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@GetMapping("/signup_view")
	public String signupView() {
		return "user/signUp";
	}
	
	
	
}
