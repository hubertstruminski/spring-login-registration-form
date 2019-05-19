package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginController {

    @RequestMapping("/showMyLoginPage")
    public String showPage() {
        return "login-form";
    }

    @RequestMapping("/login/authenticateTheUser")
    public String processForm() {

        return "registration-confirmation";
    }
}
