package com.hobbylocale.dao;

import java.util.ArrayList;
import java.util.List;import javax.xml.transform.Result;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.criterion.ProjectionList;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.User;
import com.hobbylocale.pojo.UserDetails;
import com.hobbylocale.exception.AdException;

@Transactional
public class UserDao extends DAO {


	@Autowired
	public UserDao()
	{
		
	}
	
	public UserDetails updateUser(UserDetails user)
	{
		try {
            begin();
            System.out.println("updating user");
            UserDetails u=(UserDetails) getSession().merge(user);
            commit();
            return u;
        } catch (HibernateException e) {
            System.err.println("exception while updating user:"+e.getMessage());
        	rollback();
        }
		return null;
	}
	
	public boolean hobbyExist(UserDetails user,Hobby hobby)
	{
		Criteria cr = getSession().createCriteria(UserDetails.class);
		cr.add(Restrictions.eq("userID", user.getUserID()));
		Criteria hobbies=cr.createCriteria("hobbies");
		hobbies.add(Restrictions.eq("hobbyID", hobby.getHobbyID()));
		
		List results=cr.list();
		if(results.isEmpty())
		{
			return false;
		}
		else
		{
			return true;
		}
		
	}
	
	
	
	public UserDetails addHobby(UserDetails user, Hobby hobby)
	{
		
		try {
            begin();
            System.out.println("inside DAO");
            user.getHobbies().add(hobby);
            UserDetails u=(UserDetails) getSession().merge(user);
            commit();
            return u;
        } catch (HibernateException e) {
            rollback();
        }
		return null;
	}
	public UserDetails updateUserPic(UserDetails user,byte[] image)
	{
		try {
            begin();
            System.out.println("inside DAO");
            user.setProfilePhoto(image);
            UserDetails u=(UserDetails) getSession().merge(user);
            commit();
            return u;
        } catch (HibernateException e) {
            rollback();
        }
		return user;
	}
	
	public boolean usernameExist(String username)
	{
		Criteria cr = getSession().createCriteria(User.class);
		cr.add(Restrictions.eq("userName", username));
		
		List results = cr.list();	
		if(results.isEmpty())
		{
			return false;
		}
		
		return true;
	}
	public boolean emailExist(String email)
	{
		Criteria cr = getSession().createCriteria(User.class);
		cr.add(Restrictions.eq("emailID", email));
		List results = cr.list();	
		if(results.isEmpty())
		{
			return false;
		}
		
		return true;
	}
	public UserDetails createUser(UserDetails userDetails) throws AdException {
        try {
            begin();
            System.out.println("inside DAO");
            userDetails.setRole("user");
            getSession().save(userDetails);
            commit();
            return userDetails;
        } catch (HibernateException e) {
            rollback();
            throw new AdException("Exception while creating user: " + e.getMessage());
            
        }
        finally{
        	close();
        }
	}
	
	public UserDetails login(String username,String password)
	{
		try{
			System.out.println("login user");
			Criteria cr = getSession().createCriteria(User.class);
			cr.add(Restrictions.eq("userName", username));
			List results = cr.list();	
			if(!results.isEmpty())
			{
				
				UserDetails userDetails=(UserDetails)results.get(0);
				return userDetails;
			}
		}catch(Exception e)
		{
			return null;
		}
		
		
		return null;
	}
	
	public UserDetails updateUserHobby(UserDetails user,Hobby hobby)
	{
		try {
            begin();
            System.out.println("inside DAO");
            user.getHobbies().add(hobby);
            UserDetails u=(UserDetails) getSession().merge(user);
            commit();
            return u;
        } catch (HibernateException e) {
            rollback();
            try {
				throw new AdException("Exception while creating user: " + e.getMessage());
			} catch (AdException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
            
        }
		return null;
	}
}

