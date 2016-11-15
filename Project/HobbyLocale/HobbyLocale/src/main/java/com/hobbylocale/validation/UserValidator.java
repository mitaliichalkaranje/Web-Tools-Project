package com.hobbylocale.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.UserDetails;

@Component
public class UserValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return  UserDetails.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		UserDao userDao=new UserDao();
		UserDetails userDetails=(UserDetails)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "blank.username","Username cannot be blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "blank.firstname","First name cannot be blank");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "blank.lastname", "Last name cannot be blank");
		
		if(userDao.emailExist(userDetails.getEmailID()))
		{
			errors.rejectValue("emailID", "exist.emailID", "Email ID already exist");
		}
		
		if(userDao.usernameExist(userDetails.getUserName()))
		{
			errors.rejectValue("userName", "exist.username","Username already exist");
		}
	}

}
