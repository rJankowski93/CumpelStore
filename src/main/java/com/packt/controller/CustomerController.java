package com.packt.controller;

import com.packt.dao.CustomerDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private CustomerDAO customerDAO;

    @RequestMapping()
    public String list(Model model) {
        model.addAttribute("customers", customerDAO.findAll());
        return "Customer/CustomersList";
    }

    @RequestMapping("/customer")
    public String getCustomer(Model model, @RequestParam("id") Long id) {
        model.addAttribute("customer", customerDAO.findOne(id));
        return "Customer/CustomerDetails";
    }

    @RequestMapping("/removeCustomer")
    public String removeCustomer(@RequestParam("id") Long id) {
        customerDAO.delete(id);
        return "redirect:/customers";
    }
}
