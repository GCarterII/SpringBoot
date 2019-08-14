package com.cartocracy.thecode;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/secret", method = RequestMethod.POST)
	public String secretCheck(RedirectAttributes flashErr, @RequestParam(value="password") String password) {
		
		System.out.println(password);
		if(password.equals("domoarigato")) {
			System.out.println("TRUE");
			return "secret.jsp";
		} else {
			System.out.println("FALSE");
			flashErr.addFlashAttribute("error", "Incorrect!");
			System.out.println(flashErr.getFlashAttributes());
			return "redirect:/";
		}
		
	}

}
