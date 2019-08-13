package com.cartocracy.firstproject;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

	@RequestMapping("/")
	public String hello() {
		return "Hello asdf World";
	}
	
	@RequestMapping("/world")
	public String world() {
		return "This is a world!";
	}


}
