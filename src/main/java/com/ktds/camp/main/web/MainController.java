package com.ktds.camp.main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController{
	
	@RequestMapping("/")
	public ModelAndView viewIndexPage() {
		ModelAndView result = new ModelAndView();
		result.setViewName("main/index");
		result.addObject("isMainPage","TRUE");
		return result;
	}
	
	@RequestMapping("/main")
	public String footerPage() {
		return "common/footer/footer";
	}
	
	
	
}
