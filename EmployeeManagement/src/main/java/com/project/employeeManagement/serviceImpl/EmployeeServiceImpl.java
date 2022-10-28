package com.project.employeeManagement.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.employeeManagement.entity.Employee;
import com.project.employeeManagement.repository.EmployeeRepo;
import com.project.employeeManagement.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService{

	@Autowired
	EmployeeRepo repo;
	
	@Override
	public List<Employee> findAll() {
		System.out.println("step 1");
		return repo.findAll();
	}

	@Override
	public Employee findById(int theId) {
		return repo.findById(theId).get();
	}

	@Override
	public void save(Employee emp) {
		repo.save(emp);
		
	}

	@Override
	public void deleteById(int theId) {
		repo.deleteById(theId);
		
	}

	@Override
	public List<Employee> findEmpByNameAndPhone(String fullName, String phone) {
		return repo.findEmpByFullNameAndPhone(fullName, phone);
	}
}
