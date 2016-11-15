package com.hobbylocale.home;

import java.io.File;
import java.io.IOException;
import java.sql.Blob;
import java.text.DateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.Base64OutputStream;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.engine.jdbc.BinaryStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.HttpServerErrorException;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.UserDetails;

/**
 * Handles requests for the application home page.
 */
@Controller
public class UserProfileController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserProfileController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/uploadImage", method = RequestMethod.GET)
	public String getMethod(HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get now");
			return "userHome";
		}
		return "home";
	}
	@RequestMapping(value = "/removePic", method = RequestMethod.GET)
	public String getMethodRemovePic(HttpServletRequest request) {
		
		HttpSession session= request.getSession();
		if(session.getAttribute("user")!=null)
		{
			System.out.println("session exists get now");
			return "userHome";
		}
		return "home";
	}
	
	@RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
	public String uploadImage(HttpServletRequest request,@RequestParam("photo")MultipartFile image,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails)session.getAttribute("user");
		UserDao userDao=new UserDao();
		System.out.println("inside image upload controller");
		
			try {
				session.setAttribute("user",userDao.updateUserPic(user,image.getBytes()));
				String url=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(user.getProfilePhoto());
				session.setAttribute("url",url);
				System.out.println("Image URL:");
				System.out.println(url);
				System.out.println("image saved");
				return "userHome";
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return "home";
	}
	
	@RequestMapping(value = "/removePic", method = RequestMethod.POST)
	public String removePic(HttpServletRequest request,HttpServletResponse response) {
		
		HttpSession session= request.getSession();
		UserDetails user=(UserDetails)session.getAttribute("user");
		UserDao userDao=new UserDao();
		System.out.println("inside image upload controller");
		
			session.setAttribute("user",userDao.updateUserPic(user,null));
			String url=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(user.getProfilePhoto());
			session.setAttribute("url",url);
			System.out.println("Image URL:");
			System.out.println(url);
			System.out.println("image saved");
			return "userHome";
		
	}
	
	
	
}
