package com.hobbylocale.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
import org.springframework.transaction.annotation.Transactional;

import com.hobbylocale.exception.AdException;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.User;
import com.hobbylocale.pojo.UserDetails;

@Transactional
public class HobbyDao extends DAO{

		public HobbyDao()
		{
			
		}
		
		public ArrayList<String> searchHobbyName(String name)
		{
			Criteria cr = getSession().createCriteria(Hobby.class);
			cr.add(Restrictions.ilike("hobbyName", "%"+name+"%"));
			
			List results = cr.list();
			ArrayList<Hobby> hobbies=(ArrayList<Hobby>)results;
			ArrayList<String> hobbyNames=new ArrayList<String>();
			for(Hobby h:hobbies)
			{
				hobbyNames.add(h.getHobbyName());
			}
			return hobbyNames;
		}
		
		public boolean hobbyExist(String hobbyName)
		{
			Criteria cr = getSession().createCriteria(Hobby.class);
			cr.add(Restrictions.eq("hobbyName", hobbyName));
			
			List results = cr.list();	
			if(results.isEmpty())
			{
				return false;
			}
			
			return true;
		}
		
		public Hobby getHobbies(String hobbyName)
		{
			Criteria cr = getSession().createCriteria(Hobby.class);
			cr.add(Restrictions.eq("hobbyName",hobbyName));
			
			List results = cr.list();
			if(results.isEmpty())
			{
				return null;
			}
			else
			{
				Hobby hobby=(Hobby)results.get(0);
				return hobby;
			}
			
			
			
		}
		
		public Hobby updateHobby(Hobby hobby)
		{
			try {
	            begin();
	            System.out.println("updating hobby");
	            Hobby h=(Hobby) getSession().merge(hobby);
	            commit();
	            return h;
	        } catch (HibernateException e) {
	        	
	        	System.out.println("Exception while updating hobby:"+e.getMessage());
	            rollback();
	        }
			return null;
			
			
			
		}
		
		public Hobby createHobby(UserDetails user,Hobby hobby)
		{
			try {
	            begin();
	            System.out.println("inside DAO");
	            Hobby h=(Hobby) getSession().merge(hobby);
	            commit();
	            return h;
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
