package com.project.employeeManagement.controller;

import java.security.Principal;

import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class ErrorHandlingController implements ErrorController {
	private static final String PATH = "/error";

	@RequestMapping(value = PATH)
	public ModelAndView accesssDenied(Principal user) {

		ModelAndView model = new ModelAndView();

		System.out.println(user);
		if (user != null) {
			model.addObject("msg", "Hi " + user.getName() + ", You do not have permission to access this page!");
		} else {
			model.addObject("msg", "You do not have permission to access this page!");
		}
		model.setViewName("403");
		return model;
	}

	@Override
	public String getErrorPath() {
		return PATH;
	}
}
