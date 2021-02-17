package com.nendrasys.validator;

import com.nendrasys.model.Customer;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import java.util.regex.Pattern;

public class CustomerValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return Customer.class.equals(aClass);
    }

    @Override
    public void validate(Object obj, Errors err) {

        ValidationUtils.rejectIfEmpty(err, "firstName", "customer.firstName.empty");
        ValidationUtils.rejectIfEmpty(err, "lastName", "customer.lastName.empty");
        ValidationUtils.rejectIfEmpty(err, "email", "customer.email.empty");
        ValidationUtils.rejectIfEmpty(err, "userName", "customer.userName.empty");
        ValidationUtils.rejectIfEmpty(err, "password", "customer.password.empty");
        ValidationUtils.rejectIfEmpty(err, "confirmPassword", "customer.confirmPassword.empty");
        ValidationUtils.rejectIfEmpty(err, "gender", "customer.gender.empty");
        ValidationUtils.rejectIfEmpty(err, "address", "customer.address.empty");
        ValidationUtils.rejectIfEmpty(err, "country", "customer.country.empty");
        ValidationUtils.rejectIfEmpty(err, "agree", "customer.agree.empty");
        ValidationUtils.rejectIfEmpty(err, "contactNum", "customer.contactNum.empty");


        Customer customer = (Customer) obj;

        Pattern pattern = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
                Pattern.CASE_INSENSITIVE);
        if (!(pattern.matcher(customer.getEmail()).matches())) {
            err.rejectValue("email", "customer.email.invalid");
        }



        ValidationUtils.rejectIfEmptyOrWhitespace(err, "password",
                "required.password", "");

        ValidationUtils.rejectIfEmptyOrWhitespace(err, "confirmPassword",
                "required.confirmPassword", "");

        if(!(customer.getPassword().equals(customer.getConfirmPassword()))){
            err.rejectValue("password", "customer.notmatch.password");
        }

    }

    }

