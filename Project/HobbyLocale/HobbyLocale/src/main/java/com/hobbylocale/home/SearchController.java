package com.hobbylocale.home;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;
import org.json.simple.JSONArray;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.HttpServerErrorException;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.hobbylocale.dao.HobbyDao;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.UserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
public class SearchController {
	
	private static final Logger logger = LoggerFactory.getLogger(SearchController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	@RequestMapping(value = "/searchHobby", method = RequestMethod.GET)
	public String search(HttpServletRequest request,HttpServletResponse response) {
		return "hobbies";
		
	}
	@RequestMapping(value = "/searchHobby", method = RequestMethod.POST)
	public String searchHobby(HttpServletRequest request,HttpServletResponse response) {
		
		HobbyDao hobbyDao=new HobbyDao();
		System.out.println("Inside Search HOBBY **********************");
		String name=request.getParameter("name");
	    ArrayList<String> hobbies=hobbyDao.searchHobbyName(name);
	    
	    JSONObject obj = new JSONObject();
        PrintWriter out;
		try {
			obj.put("hobbies", hobbies);
			
			out = response.getWriter();
			out.println(obj.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		return null;
	}
	
	@RequestMapping(value = "/hobbyExist", method = RequestMethod.POST)
	public String hobbyExist(HttpServletRequest request,HttpServletResponse response) {
		
		HobbyDao hobbyDao=new HobbyDao();
		System.out.println("Inside Search HOBBY **********************");
		String name=request.getParameter("name");
	    boolean result=hobbyDao.hobbyExist(name);
	    JSONObject obj = new JSONObject();
        PrintWriter out;
		try {
			obj.put("result", result);
			
			out = response.getWriter();
			out.println(obj.toString());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (JSONException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
		return null;
	}
	
	
}
