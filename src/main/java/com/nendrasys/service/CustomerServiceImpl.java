package com.nendrasys.service;

import com.nendrasys.dao.CustomerDaoImpl;
import com.nendrasys.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;

import java.security.Principal;
import java.util.List;

public class CustomerServiceImpl implements CustomerService {

    @Autowired
   CustomerDaoImpl customerDao;
    @Override
    public String saveCustomerData(Customer customer) {

        int count = 0;
        count = customerDao.saveCustomerData(customer);
        if (count == 1) {
            return "Data inserted Successfully";
        } else {
            return "Data insertion failed because of some reason try again with proper data ";
        }
    }

    @Override
    public String deleteCustomerData(String userName) {
        return null;
    }

    @Override
    public String updateCutomerdata(Customer cutomer) {
        return null;
    }

    @Override
    public Customer getDataByUserName(String userName)
    {
        return customerDao.getDataByUserName(userName);
    }

    @Override
    public List<Customer> getAllCustomerData() {
        return customerDao.getAllCustomerData();
    }

    @Override
    public Customer getDataBasedOnPrinciple(String UserName) {
        System.out.println("inside Service principle after query");
        return customerDao.getDataBasedOnPrinciple(UserName);
    }
}
