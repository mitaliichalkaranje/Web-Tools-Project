package com.hobbylocale.home;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.hobbylocale.dao.EventDao;
import com.hobbylocale.dao.HobbyDao;
import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.Event;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.UserDetails;
import com.hobbylocale.validation.HobbySearchValidator;
import com.hobbylocale.validation.HobbyValidator;
import com.hobbylocale.validation.UserValidator;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HobbyController {
	@Autowired
	  HobbyValidator hobbyValidator;
	  @Autowired
	  HobbySearchValidator hobbySearchValidator;
	private static final Logger logger = LoggerFactory.getLogger(HobbyController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = {"/hobbyPage","*/hobbyPage"}, method = RequestMethod.GET)
	public String hobby(@ModelAttribute("hobby")Hobby hobby,HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "addHobbies";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/hobbyCreate","*/hobbyCreate"}, method = RequestMethod.GET)
	public String hobbyCreate(@ModelAttribute("hobby")Hobby hobby,HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "newHobby";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/hobbyPage","*/hobbyPage"}, method = RequestMethod.POST)
	public String hobbyPage(@ModelAttribute("hobby")Hobby hobby,HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "addHobbies";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/showHobbies","*/showHobbies"}, method = RequestMethod.GET)
	public String hobbyShow(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "userHome";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/showHobbies","*/showHobbies"}, method = RequestMethod.POST)
	public String showHobby(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			HobbyDao hobbyDao=new HobbyDao();
			String hobbyName=request.getParameter("hobbyName");
			Hobby hobbyFound=hobbyDao.getHobbies(hobbyName);
			if(hobbyFound!=null)
			{
				String url=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(hobbyFound.getHobbyImage());
				System.out.println(hobbyFound.getHobbyName());
				request.setAttribute("hobbyImage", url);
				request.setAttribute("hobby", hobbyFound);
				request.setAttribute("message","");
				return "addHobbies";
			}
			request.setAttribute("message","Hobby Not Found. Create a new Hobby");
			
			return "addHobbies";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/addHobbyToUser","*/addHobbyToUser"}, method = RequestMethod.POST)
	public String addHobbyTouserPost(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			HobbyDao hobbyDao=new HobbyDao();
			UserDao userDao=new UserDao();
			String hobbyName=request.getParameter("hobby");
			Hobby hobby=hobbyDao.getHobbies(hobbyName);
			UserDetails user=(UserDetails)session.getAttribute("user");
			System.out.println("Hobby Name:"+hobbyName);
			if(userDao.hobbyExist( user,hobby))
			{
				request.setAttribute("message", "Hobby Already Added. Please check in My Hobbies tab");
			}
			else
			{
				UserDetails u=userDao.addHobby(user,hobby);
						if(u!=null)
						{
							session.setAttribute("user",u );
							request.setAttribute("message", "Hobby Added Successfully");
						}
						else
						{
							request.setAttribute("message", "Problem in adding Hobby");
						}
			}
			
			return "addHobbies";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/createHobby","*/createHobby"}, method = RequestMethod.POST)
	public String createHobby(@ModelAttribute("hobby")Hobby hobby,HttpServletRequest request,HttpServletResponse response,BindingResult results) {
		
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails)session.getAttribute("user");
		if(session.getAttribute("user")!=null)
		{
			HobbyDao hobbyDao=new HobbyDao();
			UserDao userDao=new UserDao();
			hobbyValidator.validate(hobby, results);
			if(results.hasErrors())
			{
				System.out.println("returning");
				return 	"newHobby";
			}
			hobby=hobbyDao.createHobby(user, hobby);
			if(hobby!=null)
			{
				user=userDao.updateUserHobby(user, hobby);
				request.setAttribute("message", "Hobby added successfully");
				return "userHome";
			}
			else
				request.setAttribute("message", "Problem Creating hobby");
			return "userHome";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/viewHobby","*/viewHobby"}, method = RequestMethod.POST)
	public String viewHobbyPost(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails)session.getAttribute("user");
		if(session.getAttribute("user")!=null)
		{
			HobbyDao hobbyDao=new HobbyDao();
			UserDao userDao=new UserDao();
			System.out.println("inpost");
			return "viewHobby";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/viewHobby","*/viewHobby"}, method = RequestMethod.GET)
	public String viewHobbyGet(@ModelAttribute("event")Event event,HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails)session.getAttribute("user");
		String hobbyName=request.getParameter("hobby");
		if(session.getAttribute("user")!=null)
		{
			HobbyDao hobbyDao=new HobbyDao();
			UserDao userDao=new UserDao();
			Hobby hobby=hobbyDao.getHobbies(hobbyName);
			request.setAttribute("hobby", hobby);
			String url=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(hobby.getHobbyImage());
			request.setAttribute("hobbyImage", url);
			System.out.println("inget");
			return "viewHobby";
		}
		else
			return "login";
	}
	
	@RequestMapping(value = {"/createEvent","*/createEvent"}, method = RequestMethod.GET)
	public String createEventGet(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("event")Event event) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get");
			return "viewHobby";
		}
		else
		return "login";
	}
	
	@RequestMapping(value = {"/createEvent","*/createEvent"}, method = RequestMethod.POST)
	public String createEventPost(HttpServletRequest request,HttpServletResponse response,@ModelAttribute("event")Event event) {
		try{
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails) session.getAttribute("user"); 
		String hobbyName=request.getParameter("hobbyName");
		Date startDate=null;
		Date endDate=null;
		
			startDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("startDate"));
			 endDate = new SimpleDateFormat("yyyy-MM-dd").parse(request.getParameter("endDate"));
		
		System.out.println("startdate:"+startDate);
		
		String startTime=request.getParameter("startTime");
		String endTime=request.getParameter("endTime");
		if(session.getAttribute("user")!=null)
		{
			UserDao userDao=new UserDao();
			HobbyDao hobbyDao=new HobbyDao();
			EventDao eventDao=new EventDao();
			System.out.println("StartDate:"+request.getParameter("startDate"));
			Hobby hobby=hobbyDao.getHobbies(hobbyName);
			System.out.println("session exists get");
			event.setEventCreated();
			event.setEventCreator(user);
			event.setStartDate(startDate);
			event.setEndDate(endDate);
			event.setStartTime(startTime);
			event.setEndTime(endTime);
			event.getHobbies().add(hobby);
			event=eventDao.createEvent(event);
			user.setEvent(event);
			user=userDao.updateUser(user);
			hobby.getEvents().add(event);
			hobby=hobbyDao.updateHobby(hobby);
			user=userDao.login(user.getUserName(), user.getPassword());
			session.setAttribute("user", user);
			request.setAttribute("hobby", hobby);
			return "viewHobby";
		}
		else
		return "login";
	}
		 catch (ParseException e) {
				// TODO Auto-generated catch block
				System.out.println("error in date parsin:"+e.getMessage());
			}
		return null;
	
}}
