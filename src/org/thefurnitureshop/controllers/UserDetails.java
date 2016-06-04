package org.thefurnitureshop.controllers;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.thefurnitureshop.dto.User;

@Controller
public class UserDetails {

	private static List<User> userList = new ArrayList<User>();
	
	/*
	@Autowired
	private SessionFactory sessionFactory;
	Session session = null;
	
	
	static {
		User user1 = new User();
		user1.setFirstName("firstname1");
		user1.setLastName("lastName1");
		user1.setCity("city1");
		user1.setState("state1");
		user1.setStreet("street1");
		user1.setZipcode(1);

		User user2 = new User();
		user2.setFirstName("firstname2");
		user2.setLastName("lastName2");
		user2.setCity("city2");
		user2.setState("state2");
		user2.setStreet("street2");
		user2.setZipcode(2);

		userList.add(user1);
		userList.add(user2);
	}

	@RequestMapping("/UserDetails")
	public ModelAndView loadUserDetails() {
		ModelAndView modelAndView = new ModelAndView("UserDetails");
		
			sessionFactory = new Configuration().configure().buildSessionFactory();
			session = sessionFactory.openSession();
				
			String hqlQuery = "select * from user";
			Query query = session.createQuery(hqlQuery);
			userList = (List<User>) query.uniqueResult();
			
			session.close();
		
		modelAndView.addObject("userList", userList);
		return modelAndView;
	}
*/
}
