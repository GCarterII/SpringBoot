package com.cartocracy.datetime;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping("/date")
	public String datePage(Model model) {
		model.addAttribute("currDate", new java.util.Date());
		return "date.jsp";
	}
	
	@RequestMapping("/time")
	public String timePage(Model model) {
		model.addAttribute("currTime", new java.util.Date());
		return "time.jsp";
	}

}
