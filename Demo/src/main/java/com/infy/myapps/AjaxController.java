package com.infy.myapps;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.infy.model.User;

@RestController
@RequestMapping("/test")
public class AjaxController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/one", method = RequestMethod.POST)
	public User getUserDetails(@RequestBody String id){
		System.out.println(id);
		User user = new User();
		//user.setId(id);
		user.setPassword("test123");
		user.setStatus(0);
		return user;
	}
}
