package com.nendrasys.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;

@Controller

public class LoginController
{
    @RequestMapping("/")
    public String Home()
    {
        return "home";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login()
    {
        return "login";
    }


    @RequestMapping("/log")
    public String logout()
    {
        return "logoutSuccessMsg";
    }

    @RequestMapping(value="/loginError", method = RequestMethod.GET)
    public String loginError(ModelMap model) {
             model.addAttribute("msg", "Sorry your username or password is not correct " +
                     "    ___ Try again");
        return "login";

    }

    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "logoutSuccessMsg";
    }


    @RequestMapping(value = "/403", method = RequestMethod.GET)
    public String accessDenied(Model model, Principal principal) {

        if (principal != null) {
            model.addAttribute("message", "Hi " + principal.getName()
                    + "<br> You do not have permission to access this page!");
        } /*else {
            model.addAttribute("msg",
                    "You do not have permission to access this page!");
        }*/
        return "403Page";
    }



}
