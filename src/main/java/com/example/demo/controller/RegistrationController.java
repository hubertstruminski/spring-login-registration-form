package com.example.demo.controller;

import com.example.demo.dao.UserRepository;
import com.example.demo.entity.Role;
//import com.example.demo.service.UserService;
import com.example.demo.validation.CrmUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import com.example.demo.entity.User;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/register")
public class RegistrationController {

//    @Autowired
//    private UserService userService;
    @Autowired
    private UserRepository userRepository;

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @GetMapping("/showRegistrationForm")
    public String showMyLoginPage(Model model) {
        model.addAttribute("crmUser", new CrmUser());
        return "registration-form";
    }

    @PostMapping("/processRegistrationForm")
    public String processRegistrationForm(@Valid @ModelAttribute("crmUser") CrmUser crmUser, BindingResult bindingResult,
            Model model) {

        String userName = crmUser.getUserName();

        if (bindingResult.hasErrors()) {
            return "registration-form";
        }

        User existing = userRepository.findByUserName(userName);
        if (existing != null){
            model.addAttribute("crmUser", new CrmUser());
            model.addAttribute("registrationError", "User name already exists.");

            return "registration-form";
        }

        User user = convertToActualUser(crmUser);
        userRepository.save(user);

        return "registration-confirmation";
    }

    private User convertToActualUser(CrmUser crmUser) {
        List<Role> roles = new ArrayList<>();
        Role role = new Role("USER");
        roles.add(role);

        User user = null;

        String userName = crmUser.getUserName();
        String password = crmUser.getPassword();
        String firstName = crmUser.getFirstName();
        String lastName = crmUser.getLastName();
        String email = crmUser.getEmail();
        boolean is_active = true;

        return new User(userName, password, firstName, lastName, email, is_active, roles);
    }
}
