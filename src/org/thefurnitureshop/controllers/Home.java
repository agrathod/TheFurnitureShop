package org.thefurnitureshop.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Home {

	@RequestMapping("/")
	public ModelAndView helloWorld() {
		ModelAndView modelAndView = new ModelAndView("Index");
		modelAndView.addObject("msg", "Hello Message");
		return modelAndView;
	}

	@RequestMapping("/About")
	public ModelAndView About() {
		ModelAndView modelAndView = new ModelAndView("About");
		modelAndView.addObject("msg", "About Message");
		return modelAndView;
	}
	
	@RequestMapping("/logout")
	public ModelAndView Logout() {
		ModelAndView modelAndView = new ModelAndView("Logout");
		return modelAndView;
	}
	
	@RequestMapping("/tables")
	public ModelAndView Tables() {
		ModelAndView modelAndView = new ModelAndView("Tables");
		return modelAndView;
	}
	
	@RequestMapping("/chairs")
	public ModelAndView Chairs() {
		ModelAndView modelAndView = new ModelAndView("Chairs");
		return modelAndView;
	}
	
	@RequestMapping("/sofas")
	public ModelAndView Sofas() {
		ModelAndView modelAndView = new ModelAndView("Sofas");
		return modelAndView;
	}
	
	@RequestMapping("/diningsets")
	public ModelAndView DiningSets() {
		ModelAndView modelAndView = new ModelAndView("DiningSets");
		return modelAndView;
	}
}
