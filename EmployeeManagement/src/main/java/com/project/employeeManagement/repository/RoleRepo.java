package com.project.employeeManagement.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.project.employeeManagement.entity.User;

@Repository
public interface RoleRepo extends CrudRepository<User, Long> {

}
