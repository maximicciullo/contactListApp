package com.sample.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ContactController {
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public ModelAndView contacts(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) throws JsonParseException, JsonMappingException, MalformedURLException, IOException {
		
		ObjectMapper mapper = new ObjectMapper();
		
//		List<Contact> conacts = mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), Contact.class);
//		Map<String,Object> map = mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), Map.class);		
		
		// just for test the response.
//		System.out.println("Json: " + map);
		
		return new ModelAndView("contacts");
	}
}