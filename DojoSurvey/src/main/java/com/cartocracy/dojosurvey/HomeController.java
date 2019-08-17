package com.cartocracy.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index(HttpSession session) {
		return "index.jsp";
	}
	
	@RequestMapping(value = "/submit", method = RequestMethod.POST)
	public String submit(HttpSession session, RedirectAttributes flash, @RequestParam(value="name") String name, @RequestParam(value="location") String location,  @RequestParam(value="language") String language,@RequestParam(value="comment") String comment) {
		System.out.println();
		session.setAttribute("name", name);
		session.setAttribute("language", language);
		session.setAttribute("location", location);
		session.setAttribute("comment", comment);
		return "results.jsp";
	}

}
