package com.project.employeeManagement.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.employeeManagement.entity.Employee;

public interface EmployeeService {
	public List<Employee> findAll();

	public Employee findById(int theId);

	public void save(Employee theBook);

	public void deleteById(int theId);

	public List<Employee> findEmpByNameAndPhone(String fullName, String phone);
}