package com.zyx.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.zyx.domain.Employee;
import com.zyx.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class EmployeeController {
    @Autowired
    EmployeeService employeeService;
    @RequestMapping("/list")
    public String getAllEmp(@RequestParam(value = "pn", defaultValue = "1") int pn, Model model) {
        PageHelper.startPage(pn,5);
        List<Employee> list =  employeeService.getAll();
        PageInfo page = new PageInfo(list);
        model.addAttribute("pageInfo",page);
        return "list";
    }
}
