package com.project.CollegeFest.Repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.project.CollegeFest.Entity.User;

@Repository
public interface UserRepo extends JpaRepository<User, Integer>{

	User findByUsername(String username);

}
