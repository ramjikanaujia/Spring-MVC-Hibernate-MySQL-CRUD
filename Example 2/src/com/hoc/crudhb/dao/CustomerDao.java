package com.hoc.crudhb.dao;

import com.hoc.crudhb.entity.Customer;

import java.util.List;

public interface CustomerDao {
  List<Customer> getAllCustomers();

  void deleteCustomerById(long id);

  void addCustomer(Customer customer);

  Customer findById(long id);

  void update(Customer customer);
}
