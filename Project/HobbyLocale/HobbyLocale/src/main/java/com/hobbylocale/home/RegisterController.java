package com.hobbylocale.home;


import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.UserDetails;
import com.hobbylocale.validation.UserValidator;
/**
 * Handles requests for the application home page.
 */
@Controller

public class RegisterController {
	  @Autowired
	  UserValidator userValidator;
	  
	private static final Logger logger = LoggerFactory.getLogger(RegisterController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/registerUser.htm", method = RequestMethod.GET)
	public String initializeForm(@ModelAttribute("user")UserDetails userDetails,HttpServletRequest request)throws Exception {
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
		
		return "login";
	}
	
	@RequestMapping(value = "/checkAvailability", method = RequestMethod.GET)
	public String ajax(@ModelAttribute("user")UserDetails userDetails,HttpServletRequest request)throws Exception {
		
		
		return "login";
	}
	
	@RequestMapping(value = "/checkAvailability", method = RequestMethod.POST)
	public String checkUsername(HttpServletRequest request,HttpServletResponse response)throws Exception {
		
		UserDao userDao=new UserDao();
		String username=request.getParameter("username").trim();
		System.out.println("Inside Controller");
		
		if(userDao.usernameExist(username))
		{
			String text="no";
			System.out.println(username+":"+text);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
		}
		else if(username.isEmpty())
		{
			String text="empty";
			System.out.println(username+":"+text);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
		}
		
		else
		{
			String text="yes";
			System.out.println(username+":"+text);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
		}
		
		return null;
	}
	
	@RequestMapping(value = "/checkEmail", method = RequestMethod.POST)
	public String checkEmail(HttpServletRequest request,HttpServletResponse response)throws Exception {
		
		UserDao userDao=new UserDao();
		String email=request.getParameter("email").trim();
		System.out.println("Inside Controller");
		
		if(userDao.emailExist(email))
		{
			String text="yes";
			System.out.println(email+":"+text);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
		}
		
		else
		{
			String text="no";
			System.out.println(email+":"+text);
			response.setContentType("text/plain");
			response.setCharacterEncoding("UTF-8");
			response.getWriter().write(text);
		}
		
		return null;
	}
	@RequestMapping(value = "/registerUser", method = RequestMethod.GET)
	public String createUser(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletResponse response,HttpServletRequest request)
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
	@RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	public String createUserAccount(@ModelAttribute("userDetails")UserDetails userDetails,HttpServletResponse response,HttpServletRequest request,BindingResult results)throws Exception {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
		
		try{
			UserDao userDao=new UserDao();
			Date date=new Date(Calendar.getInstance().getTime().getTime());
			userDetails.setJoinedDate(date);
			userValidator.validate(userDetails, results);
			if(results.hasErrors())
			{
				System.out.println("returning");
				return 	"login";
			}
			userDao.createUser(userDetails);
			request.setAttribute("success", "Congratulations "+userDetails.getFirstName()+"Account is created with username "+userDetails.getUserName());
			return "addedSuccess";
		}catch(Exception e){
			request.setAttribute("message","Account cannot be created");
			return "login";
		}
	}
	
	
	
}
