package com.hoc.crudhb.service;

import com.hoc.crudhb.dao.CustomerDao;
import com.hoc.crudhb.entity.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional(rollbackFor = Exception.class)
public class CustomerService {
  private final CustomerDao customerDao;

  @Autowired
  public CustomerService(CustomerDao customerDao) {
    this.customerDao = customerDao;
  }

  public List<Customer> getAllCustomers() {
    return customerDao.getAllCustomers();
  }

  public void deleteCustomerById(long id) {
    customerDao.deleteCustomerById(id);
  }

  public void addCustomer(Customer customer) {
    customerDao.addCustomer(customer);
  }

  public Customer findById(long id) {
    return customerDao.findById(id);
  }

  public void updateCustomer(Customer customer) {
    customerDao.update(customer);
  }
}
