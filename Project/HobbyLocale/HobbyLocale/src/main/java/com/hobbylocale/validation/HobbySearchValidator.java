package com.hobbylocale.validation;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.hobbylocale.dao.HobbyDao;
import com.hobbylocale.dao.UserDao;
import com.hobbylocale.pojo.Hobby;
import com.hobbylocale.pojo.UserDetails;

@Component
public class HobbySearchValidator implements Validator{

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return  UserDetails.class.isAssignableFrom(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		HobbyDao hobbyDao=new HobbyDao();
		Hobby hobby=(Hobby)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "hobbyName", "blank.username","Hobby name cannot be blank");
		
		if(!hobbyDao.hobbyExist(hobby.getHobbyName()))
		{
			errors.rejectValue("hobbyName", "exist.hobbyName", "This Hobby Already Exists");
		}
		
	}

}
