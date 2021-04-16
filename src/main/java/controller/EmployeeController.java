package controller;

import model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EmployeeController {
    @RequestMapping(value = {"/","/showForm"}, method = RequestMethod.GET)
    public String showFormCreate(ModelMap modelMap){
        modelMap.addAttribute("employee",new Employee());
        return "/create";
    }
    @RequestMapping(value = {"/create",},method = RequestMethod.POST)
    public String createEmployee(@ModelAttribute("employee")Employee employee, Model model){
        model.addAttribute("id", employee.getId());
        model.addAttribute("name",employee.getName());
        model.addAttribute("contactNumber",employee.getContactNumber());
        return "/index";
    }
}
