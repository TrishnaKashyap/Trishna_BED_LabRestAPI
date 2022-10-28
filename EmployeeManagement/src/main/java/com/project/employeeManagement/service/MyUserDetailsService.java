package com.project.employeeManagement.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.project.employeeManagement.entity.MyUserDetails;
import com.project.employeeManagement.entity.User;
import com.project.employeeManagement.repository.UserRepo;

public class MyUserDetailsService implements UserDetailsService {
	@Autowired
	private UserRepo repo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		System.out.println("Username entered by the user " + username);
		User user = repo.findByUsername(username);
		if (user == null)
			throw new UsernameNotFoundException("user not found");
		return new MyUserDetails(user);
	}
}
