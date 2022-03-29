package com.baemongsil.sns.instagram;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/sns")
public class InstagramController {

	@GetMapping("/instagram")
	public String instagramview() {
		return "sns/instagram";
	}
}
