package com.hobbylocale.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.transaction.annotation.Transactional;

import com.hobbylocale.exception.AdException;
import com.hobbylocale.pojo.Event;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.User;
import com.hobbylocale.pojo.UserDetails;

@Transactional
public class EventDao extends DAO{

		public EventDao()
		{
			
		}
		
		
		public Event createEvent(Event event)
		{
			try {
	            begin();
	            System.out.println("creating event");
	            Event e=(Event) getSession().merge(event);
	            commit();
	            return e;
	        } catch (HibernateException e) {
	            rollback();
	            try {
					throw new AdException("Exception while creating event: " + e.getMessage());
				} catch (AdException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
	            
	        }
			return null;
		}
		
		@Cacheable(value="getEventCache", key="#hobbyName")
		public ArrayList<Event> getEventByHobby(String hobbyName)
		{
			Criteria cr = getSession().createCriteria(Hobby.class);
			cr.add(Restrictions.eq("hobbyName",hobbyName));
			Criteria events=cr.createCriteria("events");
			
			
			ArrayList<Event> eventList = (ArrayList<Event>)events.list();
			if(eventList.isEmpty())
			{
				return null;
			}
			else
			{
				
				return eventList;
			}
			
		}
}
