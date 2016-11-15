package com.hobbylocale.pojo;
import java.sql.Date;
import java.sql.Time;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;


@Entity
@Table(name="EVENT")
public class Event {
	@Id @GeneratedValue
	   @Column(name = "eventID")
	   private int eventID;
	
	@Column(name="eventName")
	private String eventName;
	
	@Column(name="startTime")
	private Time startTime;
	
	@Column(name="endTime")
	private Time endTime;
	
	public int getEventID() {
		return eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public Time getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm");
		long ms;
		try {
			ms = sdf.parse(startTime).getTime();
			this.startTime = new Time(ms);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	public Time getEndTime() {
		return endTime;
	}

	public void setEndTime(String endTime) {
		SimpleDateFormat sdf = new SimpleDateFormat("hh:mm");
		long ms;
		try {
			ms = sdf.parse(endTime).getTime();
			this.startTime = new Time(ms);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(java.util.Date startDate) {
		SimpleDateFormat format = new SimpleDateFormat("MM/dd/yyyy");
      
		java.sql.Date sql = new java.sql.Date(startDate.getTime());
		this.startDate = sql;
        
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(java.util.Date endDate) {
	      
		java.sql.Date sql = new java.sql.Date(endDate.getTime());
		this.startDate = sql;
	}

	@Column(name="eventCreated")
	private Date eventCreated;

	public Date getEventCreated() {
		return eventCreated;
	}

	public void setEventCreated() {
		this.eventCreated = new Date(Calendar.getInstance().getTime().getTime());
	}

	@Column(name="startDate")
		private Date startDate;
	
	
	@Column(name="endDate")
	private Date endDate;
	 
	
//	@OneToOne(mappedBy="Event", cascade=CascadeType.ALL)
//	private Address eventAddress;
	
	@OneToOne(mappedBy="event",fetch = FetchType.EAGER,cascade = {CascadeType.ALL})
	private UserDetails eventCreator;

	@ManyToMany(mappedBy="events",fetch = FetchType.EAGER,cascade = {CascadeType.ALL})
	private Set<UserDetails> users = new HashSet<UserDetails>();
	
	@ManyToMany(cascade = {CascadeType.ALL},fetch = FetchType.EAGER)
	@JoinTable(name="event_hobbies", 
				joinColumns={@JoinColumn(name="eventID")}, 
				inverseJoinColumns={@JoinColumn(name="hobbyID")})
	private Set<Hobby> hobbies = new HashSet<Hobby>();
	
	public Set<Hobby> getHobbies() {
		return hobbies;
	}

	public void setHobbies(Set<Hobby> hobbies) {
		this.hobbies = hobbies;
	}

	public UserDetails getEventCreator() {
		return eventCreator;
	}

	public void setEventCreator(UserDetails eventCreator) {
		this.eventCreator = eventCreator;
	}

	public Set<UserDetails> getUsers() {
		return users;
	}

	public void setUsers(Set<UserDetails> users) {
		this.users = users;
	}
}
