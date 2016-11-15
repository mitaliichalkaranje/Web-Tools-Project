package com.hobbylocale.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpServerErrorException;

import com.hobbylocale.pojo.UserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model,HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
		
		return "home";
	}
	
	@RequestMapping(value = "/registerLogin", method = RequestMethod.GET)
	public String register(Locale locale, Model model,HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
		return "registerLogin";
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
		return "login";
	}
	
}
