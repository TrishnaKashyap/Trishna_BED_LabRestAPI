package com.project.employeeManagement.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@Table(name="employees")
public class Employee {
	@Id
	@Column(name="ID")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name="FULLNAME")
	private String fullName;
	@Column(name="EMAIL")
	private String email;
	@Column(name="PHONE")
	private String phone;
	@Column(name="DEPARTMENT")
	private String department;
	@Column(name="DOB")
	private String dob;
	@Column(name="DOJ")
	private String doj;

	public Employee(String fullName, String email, String phone, String dob, String doj, String department) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.phone = phone;
		this.dob = dob;
		this.doj = doj;
		this.department = department;
	}
}