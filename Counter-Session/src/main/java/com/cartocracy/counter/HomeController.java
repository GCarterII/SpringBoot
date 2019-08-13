package com.cartocracy.counter;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping("/")
	public String index(HttpSession session) {
		if(session.getAttribute("count") != null) {
			session.setAttribute("count", Integer.parseInt(session.getAttribute("count").toString()) + 1);
			//Integer.parseInt(session.getAttribute("count").toString())
		} else {
			session.setAttribute("count", 1);
		}
		return "index.jsp";
	}

	@RequestMapping("/2")
	public String index2(HttpSession session) {
		if(session.getAttribute("count") != null) {
			session.setAttribute("count", Integer.parseInt(session.getAttribute("count").toString()) + 2);
			//Integer.parseInt(session.getAttribute("count").toString())
		} else {
			session.setAttribute("count", 2);
		}

		return "index2.jsp";
	}
	
	@RequestMapping("/counter")
	public String counter(HttpSession session) {
		if(session.getAttribute("count") == null) {
			session.setAttribute("count", 0);
		}

		return "counter.jsp";
	}
	
	@RequestMapping("/clear")
	public String clear(HttpSession session) {
		
		if(session.getAttribute("count") != null) {
			session.setAttribute("count", 0);
		} else {
			session.setAttribute("count", 0);
		}
		
		return "counter.jsp";
	}
	
}
