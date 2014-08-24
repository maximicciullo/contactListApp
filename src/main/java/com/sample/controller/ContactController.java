package com.sample.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestClientException;
import org.springframework.web.servlet.ModelAndView;

import com.sample.model.Contact;

@Controller
public class ContactController {
	
	@RequestMapping(value = "/contacts", method = RequestMethod.GET)
	public ModelAndView contacts(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) throws JsonParseException, JsonMappingException, MalformedURLException, IOException, RestClientException, URISyntaxException {
		
		System.setProperty("jsse.enableSNIExtension", "false");
//		List<Contact> contacts = (List<Contact>) resttample.getForObject(new URI("https://solstice.applauncher.com/external/contacts.json"), Contact.class);
//		System.out.println("JSON: " + contacts);
		
		ObjectMapper mapper = new ObjectMapper();
		
		List<Contact> contacts = (List<Contact>) mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), Contact.class);
//		Map<String,Object> map = mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), Map.class);		
		Map<String,String> result = mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), new TypeReference<Map<String,String>>() { });
		// just for test the response.
//		System.out.println("Json: " + map);
		System.out.println("JSON: " + contacts);
		return new ModelAndView("contacts");
	}
}