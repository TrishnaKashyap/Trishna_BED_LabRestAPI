package com.project.employeeManagement.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import com.project.employeeManagement.entity.Employee;
import com.project.employeeManagement.repository.EmployeeRepo;
import com.project.employeeManagement.service.EmployeeService;
//import com.project.employeeManagement.serviceImpl.EmployeeServiceImpl;


@Controller
@RequestMapping("/directory")
public class EmployeeController {
	
	@Autowired
	EmployeeService service;

	@GetMapping("/employees")
	public String getAllEmployees(Map<String, List<Employee>> map) {
		List<Employee> emp = service.findAll();
		map.put("Employees", emp);
		return "employees";
	}

	@RequestMapping("/add-employee")
	public String showFormForAdd(Model theModel) {
		Employee emp = new Employee();
		theModel.addAttribute("Employee", emp);
		return "addNewEmployee";
	}

	@RequestMapping("/edit-employee")
	public String showFormForUpdate(@RequestParam("id") int id, Model theModel) {

		Employee emp = service.findById(id);
		theModel.addAttribute("Employee", emp);
		return "addNewEmployee";
	}

	@PostMapping("/save")
	public String saveBook(@RequestParam("id") int id, @RequestParam("fullName") String fullName,
			@RequestParam("email") String email, @RequestParam("phone") String phone,
			@RequestParam("department") String department, @RequestParam("dob") String dob,
			@RequestParam("doj") String doj) {

		System.out.println(id);
		Employee emp;
		if (id != 0) {
			emp = service.findById(id);
			emp.setFullName(fullName);
			emp.setEmail(email);
			emp.setPhone(phone);
			emp.setDepartment(department);
			emp.setDob(dob);
			emp.setDoj(doj);
		} else
			emp = new Employee(fullName, email, phone, department, dob, doj);
		// save the Book
		service.save(emp);

		// use a redirect to prevent duplicate submissions
		return "redirect:/directory/employees";

	}

	@GetMapping("/delete")
	public String delete(@RequestParam("id") int id) {

		// delete the Book
		service.deleteById(id);

		// redirect to /Books/list
		return "redirect:/directory/employees";

	}

	@GetMapping("/search")
	public String search(@RequestParam("fullName") String fullName, @RequestParam("phone") String phone , Map<String, List<Employee>> map) {

		// check names, if both are empty then just give list of all Books

		if (fullName.trim().isEmpty() && phone.trim().isEmpty()) {
			return "redirect:/directory/employees";
		} else {
			// else, search by first name and last name
			List<Employee> emp = service.findEmpByNameAndPhone(fullName, phone);

			// add to the spring model
			map.put("Employee", emp);

			// send to list-Books
			return "employees";
		}

	}
}
