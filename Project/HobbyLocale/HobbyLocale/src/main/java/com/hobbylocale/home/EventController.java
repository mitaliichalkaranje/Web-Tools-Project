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
import org.springframework.web.client.HttpServerErrorException;

import com.hobbylocale.dao.EventDao;
import com.hobbylocale.dao.HobbyDao;
import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.Event;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.UserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
public class EventController {
	
	private static final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
//	@RequestMapping(value = {"/createEvent","*/createEvent"}, method = RequestMethod.GET)
//	public String createEventGet(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("event")Event event) {
//		
//		HttpSession session= request.getSession();
//		if(session.getAttribute("user")!=null)
//		{
//			System.out.println("session exists get");
//			return "viewHobby";
//		}
//		else
//		return "login";
//	}
//	
//	@RequestMapping(value = {"/createEvent","*/createEvent"}, method = RequestMethod.POST)
//	public String createEventPost(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("event")Event event) {
//		
//		HttpSession session= request.getSession();
//		System.out.println("inside create event ********");
//		UserDetails user=new UserDetails(); 
//		String hobbyName=request.getParameter("hobbyName");
//		if(session.getAttribute("user")!=null)
//		{
//			UserDao userDao=new UserDao();
//			HobbyDao hobbyDao=new HobbyDao();
//			EventDao eventDao=new EventDao();
//			Hobby hobby=hobbyDao.getHobbies(hobbyName);
//			System.out.println("session exists get");
//			hobby=eventDao.createEvent(user, hobby, event);
//			user=userDao.login(user.getUserName(), user.getPassword());
//			session.setAttribute("user", user);
//			request.setAttribute("hobby", hobby);
//			return "viewHobby";
//		}
//		else
//		return "login";
//	}
//	
	
}
