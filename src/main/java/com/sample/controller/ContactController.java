package com.sample.controller;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
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
		
		// Is necessary to execute cause there're problems with java 1.7
		System.setProperty("jsse.enableSNIExtension", "false");

		ObjectMapper mapper = new ObjectMapper();
		
		// Get JSON via JACKSON in server url.
		List<Contact> contacts = mapper.readValue(new URL("https://solstice.applauncher.com/external/contacts.json"), new TypeReference<List<Contact>>(){});
		
		String contactsJSON = mapper.writeValueAsString(contacts);

        Map<String, Object> myModel = new HashMap<String, Object>();
        System.out.println(contactsJSON);
        myModel.put("contacts", contactsJSON);
		
		return new ModelAndView("contacts", "model", myModel);
	}
	
	@RequestMapping(value="/contacts", method = RequestMethod.GET)
	public ModelAndView contactId(HttpServletRequest request, HttpServletResponse response, Map<String, Object> model) {
		
		return new ModelAndView("contacts");

	}
}