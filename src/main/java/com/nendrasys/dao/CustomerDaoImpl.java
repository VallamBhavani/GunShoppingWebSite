package com.nendrasys.dao;

import com.nendrasys.model.Customer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.security.Principal;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class CustomerDaoImpl implements  CustomerDao {

    @Autowired
   JdbcTemplate jdbcTemplate;
    @Override
    public int saveCustomerData(Customer customer)
    {
        String str="insert into customer values ('"+customer.getFirstName()+"','"+customer.getLastName()+"','"+customer.getEmail()+"','"+customer.getUserName()+"','"+customer.getPassword()+"','"+customer.getGender()+"','"+customer.getAddress()+"','"+customer.getCountry()+"','"+customer.getContactNum()+"','"+customer.getConfirmPassword()+"','"+customer.getAgree()+"')";
        return jdbcTemplate.update(str);
    }

    @Override
    public int deleteCustomerData(String userName)
    {
        String del="delete from customer where userName="+userName+"";
        return jdbcTemplate.update(del);
    }

    @Override
    public int updateCutomerdata(Customer cutomer) {
        return 0;
    }

    @Override
    public Customer getDataByUserName(String userName)
    {
        String str="select * from customer where userName=?";

        Customer customer= (Customer) jdbcTemplate.queryForObject(str,new BeanPropertyRowMapper<>(Customer.class),userName);

        return customer;
    }


    @Override
    public List<Customer> getAllCustomerData()
    {
        String str="select * from customer";

        List<Customer> customerList = jdbcTemplate.query(str, new RowMapper<Customer>() {
            @Override
            public Customer mapRow(ResultSet rs, int i) throws SQLException {
               Customer customer= new Customer();
               customer.setFirstName(rs.getString(1));
               customer.setLastName(rs.getString(2));
               customer.setEmail(rs.getString(3));
               customer.setUserName(rs.getString(4));
               customer.setPassword(rs.getString(5));
               customer.setGender(rs.getString(6));
               customer.setAddress(rs.getString(7));
               customer.setCountry(rs.getString(8));
               customer.setContactNum(rs.getString(9));
                customer.setConfirmPassword(rs.getString(10));
                customer.setAgree(rs.getString(11));

                return customer;
            }
        });

        return customerList;
    }

    @Override
    public Customer getDataBasedOnPrinciple(String UserName) {
        System.out.println("inside principle method");
        String str="select * from customer where userName=?";
        System.out.println("inside dao principle after query");

        Customer customer= (Customer) jdbcTemplate.queryForObject(str,new BeanPropertyRowMapper<>(Customer.class),UserName);
        System.out.println(customer);
        return customer;
    }
}
