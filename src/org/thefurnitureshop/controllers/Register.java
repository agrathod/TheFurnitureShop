package org.thefurnitureshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.thefurnitureshop.dto.User;

@Controller
public class Register {

	@RequestMapping(value = "/registrationForm", method = RequestMethod.GET)
	public ModelAndView getRegistrationForm() {
		ModelAndView modelAndView = new ModelAndView("RegistrationForm");
		return modelAndView;
	}
	
	@RequestMapping(value = "/submitRegistrationForm", method = RequestMethod.POST)
	public ModelAndView submitRegistrationForm(@ModelAttribute("user") User user) {
		ModelAndView modelAndView = new ModelAndView("RegistrationSuccess");
		return modelAndView;
	}
}
