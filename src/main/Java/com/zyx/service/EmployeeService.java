package com.zyx.service;

import com.zyx.dao.EmployeeMapper;
import com.zyx.domain.Employee;
import com.zyx.domain.EmployeeExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class EmployeeService {
    @Autowired
    EmployeeMapper employeeMapper;
    public List<Employee> getAll(){
        return employeeMapper.selectByExampleWithDept(null);
    }
}
