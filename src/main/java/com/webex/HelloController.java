package com.webex;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class HelloController {

    /**
     * home page
     * @param model
     * @param request
     * @param response
     * @return
     * @throws Exception
     */
    @RequestMapping(method = RequestMethod.GET, value="/home")
    public String main(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "/home";
    }

    @RequestMapping(method = RequestMethod.GET, value="/home2")
    public String main2(ModelMap model, HttpServletRequest request, HttpServletResponse response) throws Exception {

        return "/home";
    }
}
