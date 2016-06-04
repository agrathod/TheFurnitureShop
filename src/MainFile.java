import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.thefurnitureshop.dto.User;

public class MainFile {

	/*
	public static void main(String argsp[]) {

		
		SessionFactory sessionfactory = null;
		Session session = null;

		sessionfactory = new Configuration().configure().buildSessionFactory();
		session = sessionfactory.openSession();

		
		User user1 = new User();
		user1.setFirstName("firstname1");
		user1.setLastName("lastName1");
		user1.setUserName("user1");
		user1.setPassword("pass1");
		user1.setCity("city1");
		user1.setState("state1");
		user1.setStreet("street1");
		user1.setZipcode(1);

		User user2 = new User();
		user2.setFirstName("firstname2");
		user2.setLastName("lastName2");
		user1.setUserName("user2");
		user1.setPassword("pass2");
		user2.setCity("city2");
		user2.setState("state2");
		user2.setStreet("street2");
		user2.setZipcode(2);

		session.beginTransaction();

		session.save(user1);
		session.save(user2);

		session.getTransaction().commit();

		session.close();
		sessionfactory.close();
	}
	
	*/
}
