package com.packt.controller;


import com.packt.dao.ProductDAO;
import com.packt.dao.UserDAO;
import com.packt.data.CustomerData;
import com.packt.data.ProductData;
import com.packt.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
public class BasicController {

    @Autowired
    UserDAO userDAO;

    @Autowired
    ProductDAO productDAO;

    @Autowired
    CustomerService customerService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("Product1", productDAO.getProductByCode("8297"));
        model.addAttribute("Product2", productDAO.getOne(77L));
        model.addAttribute("Product3", productDAO.getProductsByCategoryOrCategory(ProductData.Category.MONITOR, ProductData.Category.LAPTOP));
        model.addAttribute("Product4", productDAO.getPromotionProductsList());
        model.addAttribute("Product5", productDAO.getProductsByGreaterUnitsInStock(20L));
        return "Hello";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, @RequestParam(value = "message", required = false) String message) {
        model.addAttribute("message", message);
        return "General/Login";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        CustomerData customer = new CustomerData();
        model.addAttribute("customer", customer);
        return "General/Registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registrationProcess(Model model, @ModelAttribute("customer")  CustomerData customer, @RequestParam("matchingPassword") String matchingPassword) {
        customerService.registrationCustomer(customer, matchingPassword);
        return "redirect:/login?message=The mail was sent to your address";
    }

    @RequestMapping(value = "/confirmRegistration", method = RequestMethod.GET)
    public String confirmRegistration(Model model, @RequestParam(value = "id") Long userId, @RequestParam(value = "login") String login) {
        customerService.activateUser(userId, login);
        return "redirect:/login?message=Your account is active";
    }
}
