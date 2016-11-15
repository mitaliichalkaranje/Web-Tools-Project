package com.hobbylocale.pojo;
import javax.persistence.*;

@Entity
@Table(name="address")
public class Address {
	@Id @GeneratedValue
	   @Column(name = "addressID")
	   private int addressID;
	
	@Column(name="street1")
	private String street1;
	
	@Column(name="street2")
	private String street2;
	
	@Column(name="zipCode")
	private String zipCode;
	
	@Column(name="state")
	private String state;
	
	@Column(name="country")
	private String country;

}
