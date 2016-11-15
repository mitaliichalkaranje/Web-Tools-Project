 package com.hobbylocale.pojo;
import java.sql.Blob;
import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Base64;
import java.util.Calendar;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import org.hibernate.annotations.Parameter;
import org.springframework.web.multipart.MultipartFile;
import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="userDetails")
@PrimaryKeyJoinColumn(name="userID")
@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
public class UserDetails extends User{
	

	@Column(name="firstName")
	private String firstName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="emailID")
	private String emailID;
	
	@Column(name="phoneNumber")
	private String phoneNumber;
	
	@Column(name="aboutMe")
	private String aboutMe;

	@Column(name="joinedDate")
	private Date joinedDate;
	
	
	@Column(name="profilePhoto")
	@Lob
	private byte[] profilePhoto;
	

	public byte[] getProfilePhoto() {
		
		return profilePhoto;
	}

	public void setProfilePhoto(byte[] profilePhoto) {
		this.profilePhoto = profilePhoto;
	}

	@ManyToMany(cascade = {CascadeType.ALL},fetch = FetchType.EAGER)
	@JoinTable(name="registered_events", 
				joinColumns={@JoinColumn(name="userID")}, 
				inverseJoinColumns={@JoinColumn(name="eventID")})
	private Set<Event> events = new HashSet<Event>();
	
	@ManyToMany(cascade = {CascadeType.ALL},fetch = FetchType.EAGER)
	@JoinTable(name="user_hobbies", 
				joinColumns={@JoinColumn(name="userID")}, 
				inverseJoinColumns={@JoinColumn(name="hobbyID")})
	private Set<Hobby> hobbies = new HashSet<Hobby>();
	
	
	@OneToOne(cascade = {CascadeType.ALL},fetch = FetchType.EAGER)
	@JoinTable(name="event_creators", 
				joinColumns={@JoinColumn(name="userID")}, 
				inverseJoinColumns={@JoinColumn(name="eventID")})
	private Event event;
	
	
	@Transient
	private String imageUrl;
	
	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public Set<Hobby> getHobbies() {
		return hobbies;
	}

	public void setHobbies(Set<Hobby> hobbies) {
		this.hobbies = hobbies;
	}

	public Event getEvent() {
		return event;
	}

	public void setEvent(Event event) {
		this.event = event;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmailID() {
		return emailID;
	}

	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}



	public String getAboutMe() {
		return aboutMe;
	}

	public void setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
	}

	public Date getJoinedDate() {
		return joinedDate;
	}

	public void setJoinedDate(Date joinedDate) {
		
		this.joinedDate = joinedDate;
	}
	
	

	public Set<Event> getEvents() {
		return events;
	}

	public void setEvents(Set<Event> events) {
		this.events = events;
	}
	
//	@OneToOne(mappedBy="employee", cascade=CascadeType.ALL)
//	private Event eventCreated;
//	
	
	
}
