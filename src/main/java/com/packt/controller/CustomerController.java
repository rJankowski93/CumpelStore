package com.packt.controller;

import com.packt.dao.CustomerDAO;
import com.packt.data.CustomerData;
import com.packt.service.UploadFileService;
import com.packt.util.ObjectUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private CustomerDAO customerDAO;

    @Autowired
    private UploadFileService uploadFileService;

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

    @RequestMapping(value = "/modifyCustomer", method = RequestMethod.GET)
    public String modifyCustomer(Model model, @RequestParam("id") Long id) {
        model.addAttribute("customer", customerDAO.findOne(id));
        return "Customer/CustomerModify";
    }

    @RequestMapping(value = "/modifyCustomer", method = RequestMethod.POST)
    public String save(@ModelAttribute("customer") CustomerData customer, HttpServletRequest request) {
        CustomerData targetCustomer = customerDAO.findOne(customer.getId());
        ObjectUtil.copyNotNullProperties(customer,targetCustomer);
        uploadFileService.uploadImage(customer.getId(), customer.getAvatar(), request.getSession().getServletContext().getRealPath("/"));
        customerDAO.save(targetCustomer);
        return "Customer/CustomerDetails";
    }
}
