package com.nendrasys.controller;

import com.nendrasys.RestService.RestCall;
import com.nendrasys.model.Customer;
import com.nendrasys.model.Gun;
import com.nendrasys.service.CustomerServiceImpl;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.security.Principal;
import java.util.*;

/**
 * This class will handle all Rest Call type of requests.
 */

@Controller
public class GunRestCallController
{
    @Autowired
    RestCall restCall;
    @Autowired
    CustomerServiceImpl customerService;
    private static Logger logger = LogManager.getLogger(GunRestCallController.class);
    private Object Float;

    //Get Gun list withoutLogin implementation
    @RequestMapping(value = "/gunListWithOutLogin",method = RequestMethod.GET)
    public String getGunAllData( Model model)
    {
        List<Gun> gunList= restCall.getGunDataFromWareHouse();
        logger.info("inside getGunAllData method at RestCallController"+gunList);
        model.addAttribute("gunData",gunList);
        return "PLPWithOutLogin";
    }


    //Get Gun Data By id.
    @RequestMapping(value = "/getGunDataById/{id}",method = RequestMethod.GET)
    public String getGunDataByIdWithLogin(@PathVariable ("id")int id, Model model ,Principal principal)
    {


            try {
                //getting current user details
                String userName = principal.getName();
                Customer customer = customerService.getCurrentLogedInUserData(userName);

                model.addAttribute("currentUserData", customer);
                logger.info(" inside getGunDataById method at  RestCallController class"+customer);

                if(customer.getCountry().equals("India"))
                {
                    Currency india = Currency.getInstance("INR");
                    model.addAttribute("currency", india);
                }

                else
                    {
                    Currency us = Currency.getInstance(Locale.US);
                    model.addAttribute("currency", us);
                    }

                    //Rest call for get Data By id
                    Gun gun = restCall.getDataById(id);
                    model.addAttribute("data", gun);

                     return "PDPwithPrice";
            }
            catch (NullPointerException e)
            {
               List<Gun> gunList = restCall.getGunDataFromWareHouse();
                model.addAttribute("gunData", gunList);
                return "PLPWithOutLogin";

            }

        }


    //Gun list implementation
    @RequestMapping(value = "/gunListWithLogin",method = RequestMethod.GET)
    public String getGunAllData(Model model , Principal principal) {

        //getting all Gun data
        List<Gun> gunList = restCall.getGunDataFromWareHouse();
        model.addAttribute("gunData", gunList);

        // getting current user data
        String userName= principal.getName();
        Customer customer = customerService.getCurrentLogedInUserData(userName);
        model.addAttribute("currentUserData",customer);


       //India currency
        if(customer.getCountry().equals("India"))
        { Currency india = Currency.getInstance("INR");
            model.addAttribute("currency", india);
        }
        else
        {
            Currency us = Currency.getInstance(Locale.US);
            model.addAttribute("currency", us);
        }

        return "PLPwithLogin";
    }


    }
