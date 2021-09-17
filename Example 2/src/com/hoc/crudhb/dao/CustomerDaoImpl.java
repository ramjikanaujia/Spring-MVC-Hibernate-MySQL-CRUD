package com.hoc.crudhb.dao;

import com.hoc.crudhb.entity.Customer;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CustomerDaoImpl implements CustomerDao {
  private final SessionFactory sessionFactory;

  @Autowired
  public CustomerDaoImpl(SessionFactory sessionFactory) {
    this.sessionFactory = sessionFactory;
  }

  @Override
  public List<Customer> getAllCustomers() {
    return sessionFactory
        .getCurrentSession()
        .createQuery("from Customer", Customer.class)
        .getResultList();
  }

  @Override
  public void deleteCustomerById(long id) {
    final Session session = sessionFactory.getCurrentSession();
    final Customer customer = session.load(Customer.class, id);
    session.remove(customer);
  }

  @Override
  public void addCustomer(Customer customer) {
    sessionFactory.getCurrentSession().save(customer);
  }

  @Override
  public Customer findById(long id) {
    return sessionFactory.getCurrentSession().get(Customer.class, id);
  }

  @Override
  public void update(Customer customer) {
    sessionFactory.getCurrentSession().update(customer);
  }

}
