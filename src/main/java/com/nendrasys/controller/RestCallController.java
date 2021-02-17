package com.nendrasys.controller;

import com.nendrasys.RestService.RestCall;
import com.nendrasys.model.Customer;
import com.nendrasys.model.Gun;
import com.nendrasys.model.GunList;
import com.nendrasys.service.CustomerServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.security.Principal;
import java.util.List;

@Controller
public class RestCallController
{
    @Autowired
    RestCall restCall;
    @Autowired
    CustomerServiceImpl customerService;

    @RequestMapping(value = "/gunList",method = RequestMethod.GET)
    public String getGunAllData( Model model)
    {

        List<Gun> gunList= restCall.getGunDataFromWareHouse();

        model.addAttribute("data",gunList);
        System.out.println(gunList);

        return "gunList";
    }


    @RequestMapping(value = "/gunListWithLogin",method = RequestMethod.GET)
    public String getGunAllData1(Model model , Principal principal) {

        List<Gun> gunList = restCall.getGunDataFromWareHouse();
         String userName= principal.getName();
         model.addAttribute("userName",userName);
        model.addAttribute("data", gunList);
        System.out.println(gunList);

        return "gunListWithLogin";
    }

     /*   @RequestMapping(value = "/al",method = RequestMethod.GET)
        @ResponseBody
    public List<Gun> getGunlData() throws IOException {

        List<Gun> gunList= restCall.getGunDataFromWareHouse1();

        System.out.println(gunList);

        return gunList;
    }*/

    @RequestMapping(value = "/getGunById/{id}",method = RequestMethod.GET)
    public String getGunDataByID(@PathVariable int id , Model model,Principal principal)
    {
        Gun gun=restCall.getById(id);

     String userName=principal.getName();

     Customer customer=customerService.getDataBasedOnPrinciple(userName);
        model.addAttribute("currentUserData",customer);
        model.addAttribute("data",gun);

        return "getGunDataById";
    }
}
