package com.sample.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/loginfailed", method = RequestMethod.GET)
	public ModelAndView loginerror(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("login");
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("login");
	}
}