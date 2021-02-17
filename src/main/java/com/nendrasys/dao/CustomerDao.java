package com.nendrasys.dao;

import com.nendrasys.model.Customer;

import java.security.Principal;
import java.util.List;

public interface CustomerDao
{
    public int saveCustomerData(Customer customer);
    public int deleteCustomerData(String userName);
    public int updateCutomerdata(Customer cutomer);
    public Customer getDataByUserName(String userName);
    public List<Customer> getAllCustomerData();
    public Customer getDataBasedOnPrinciple(String UserName);
}
