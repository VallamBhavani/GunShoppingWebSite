package com.nendrasys.controller;

import com.nendrasys.model.Customer;
import com.nendrasys.model.Gun;
import com.nendrasys.service.CustomerServiceImpl;
import com.nendrasys.validator.CustomerValidator;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.parameters.P;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import java.security.Principal;

@Controller
public class CustomerController
{
    @Autowired
    CustomerServiceImpl customerService;

    @Autowired
    CustomerValidator customerValidator;
    @InitBinder
    protected void initBinder(WebDataBinder binder) {
        binder.addValidators(customerValidator);
    }

    private static Logger logger = LogManager.getLogger();



        @RequestMapping(value = "/signUp", method = RequestMethod.GET)
    public String cutomerRegistration(Model model)
    {
        model.addAttribute("custom",new Customer());
        logger.trace("This is a debug message");
        logger.info("This is an info message");
        logger.warn("This is a warn message");
        logger.error("This is an error message");
        logger.fatal("This is a fatal message");

        return "signUpPage";
    }

    @RequestMapping(value="/saveCustomer",method = RequestMethod.POST)
    public String customerRegistrationSaveData(@ModelAttribute("custom") @Validated Customer customer, BindingResult result, Model model) {
        if (result.hasErrors()) {
            return "signUpPage";
        } else {

            String str = customerService.saveCustomerData(customer);


            model.addAttribute("reg", str);

            return "successMsgOFCustomerReg";

        }
    }


    @RequestMapping(value = "/getByUserName/{userName}",method = RequestMethod.GET)
    @ResponseBody
    public Customer getByUserName(@PathVariable String userName)
    {
        Customer customer=customerService.getDataByUserName(userName);

        return customer;
    }

   /* @RequestMapping("/p")
    public String getDataUsingPrinciple(Model model,Principal principal)
    {  String UserName=principal.getName();
       Customer customer=customerService.getDataBasedOnPrinciple(UserName) ;
       model.addAttribute("data",customer);

       return "p";
    }*/



}
