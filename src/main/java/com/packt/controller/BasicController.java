package com.packt.controller;


import com.packt.dao.ProductDAO;
import com.packt.dao.UserDAO;
import com.packt.data.ProductData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BasicController {

    @Autowired
    UserDAO userDAO;

    @Autowired
    ProductDAO productDAO;

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
    public ModelAndView login() {
        ModelAndView model = new ModelAndView();
        model.setViewName("General/Login");
        return model;
    }
}
