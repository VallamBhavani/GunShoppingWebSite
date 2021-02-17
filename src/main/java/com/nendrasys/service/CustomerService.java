package com.nendrasys.service;

import com.nendrasys.model.Customer;

import java.security.Principal;
import java.util.List;

public interface CustomerService
{
    public String saveCustomerData(Customer customer);
    public String deleteCustomerData(String userName);
    public String updateCutomerdata(Customer cutomer);
    public Customer getDataByUserName(String userName);
    public List<Customer> getAllCustomerData();
    public Customer getDataBasedOnPrinciple(String UserName);
}
