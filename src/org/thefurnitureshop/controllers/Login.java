package org.thefurnitureshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Login {
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public ModelAndView getLoginForm() {
		ModelAndView modelAndView = new ModelAndView("Login");
		return modelAndView;
	}
	
	@RequestMapping(value = "/logincheck", method = RequestMethod.POST)
	public ModelAndView loginSuccessful(@RequestParam("userName") String userName, @RequestParam("password") String password) {
		String message ="";
		ModelAndView modelAndView = new ModelAndView("LoginVerify");
		modelAndView.addObject("userName",userName);
		modelAndView.addObject("password",password);
		modelAndView.addObject("message",message);
		return modelAndView;
	}
}
