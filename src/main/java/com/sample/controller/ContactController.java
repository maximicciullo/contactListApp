package com.sample.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public ModelAndView contacts(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		return new ModelAndView("contacts");
	}
}