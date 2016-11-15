package com.hobbylocale.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.UserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/login","*/login"}, method = RequestMethod.GET)
	public String initialize(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
			return "login";
	}
	@RequestMapping(value = {"/login","*/login"}, method = RequestMethod.POST)
	public String login(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletRequest request,HttpServletResponse response) {
		
		UserDao userDao=new UserDao();
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists post");
			return "userHome";
		}
		UserDetails user=userDao.login(username,password);
		if(user!=null)
		{
			session.setAttribute("user", user);
			session.setAttribute("userHobbies", user.getHobbies());
			String profilePic=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(user.getProfilePhoto());
			session.setAttribute("url", profilePic);
			return "userHome";
		}
		else
		{
			request.setAttribute("message", "Login Failed.");
			return "loginFailed";
		}
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String initializeLogout(@ModelAttribute("user")UserDetails userDetails,HttpServletRequest request)
	{
		request.getSession().invalidate();
		System.out.println("invalidating");
		return "home";
	}
	@RequestMapping(value = "/logout", method = RequestMethod.POST)
	public String logout(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletRequest request) {
		
		request.getSession().invalidate();
		System.out.println("invalidating");
		return "home";
	}
	
}
