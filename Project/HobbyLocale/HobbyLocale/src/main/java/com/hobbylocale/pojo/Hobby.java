package com.hobbylocale.pojo;

import java.sql.Time;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

@Entity
@Table(name="hobby")
public class Hobby {
	
	@Id @GeneratedValue
	   @Column(name = "hobbyID")
	   private int hobbyID;
	
	@Column(name="hobbyName")
	private String hobbyName;
	
	@ManyToMany(mappedBy="hobbies",fetch = FetchType.EAGER,cascade = {CascadeType.ALL})
	private Set<Event> events = new HashSet<Event>();
	
	@Column(name="hobbyImage")
	@Lob
	private byte[] hobbyImage;
	
	@Transient
	private String hobbyImageUrl;
	
	
	
	
	public String getHobbyImageUrl() {
	
		return this.hobbyImageUrl;
	}


	public byte[] getHobbyImage() {
		return hobbyImage;
	}

	public void setHobbyImage(byte[] hobbyImage) {
		this.hobbyImageUrl=com.sun.org.apache.xerces.internal.impl.dv.util.Base64.encode(hobbyImage);
		this.hobbyImage = hobbyImage;
	}

	public int getHobbyID() {
		return hobbyID;
	}

	public void setHobbyID(int hobbyID) {
		this.hobbyID = hobbyID;
	}

	public String getHobbyName() {
		return hobbyName;
	}

	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}

	public Set<Event> getEvents() {
		return events;
	}

	public void setEvents(Set<Event> events) {
		this.events = events;
	}

	public Set<UserDetails> getUsers() {
		return users;
	}

	public void setUsers(Set<UserDetails> users) {
		this.users = users;
	}

	@ManyToMany(mappedBy="hobbies",fetch = FetchType.EAGER,cascade = {CascadeType.ALL})
	private Set<UserDetails> users = new HashSet<UserDetails>();
}
