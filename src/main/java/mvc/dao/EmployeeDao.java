package mvc.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;import mvc.dto.Employee;

@Repository
public class EmployeeDao {
EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("m5");
EntityManager entityManager=entityManagerFactory.createEntityManager();
EntityTransaction entityTransaction=entityManager.getTransaction();

public void save(Employee employee) {
	entityTransaction.begin();
	entityManager.persist(employee);
	entityTransaction.commit();
}
public List<Employee> fetchAll() {
	return entityManager.createNativeQuery("select * from employee",Employee.class).getResultList();
}
	
public Employee find(int id) {
	return entityManager.find(Employee.class, id);
}
public void delete(Employee employee) {
	entityTransaction.begin();
	entityManager.remove(employee);
	entityTransaction.commit();
	
}
public void update(Employee employee) {
	entityTransaction.begin();
	entityManager.merge(employee);
	entityTransaction.commit();
	
}

}
