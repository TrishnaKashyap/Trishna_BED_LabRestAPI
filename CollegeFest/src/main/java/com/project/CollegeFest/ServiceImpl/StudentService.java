package com.project.CollegeFest.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.CollegeFest.Entity.Student;
import com.project.CollegeFest.Repo.StudentRepo;

@Service
public class StudentService {

	@Autowired
	private StudentRepo StudentRepo;
	
	public void saveStudent(Student theStudent) {
		StudentRepo.save(theStudent);
		
	}
	public Student findStudentById(int id) {
		return StudentRepo.findById(id).get();
	}
	
	public List<Student> fetchAllStudents(){
		return StudentRepo.findAll();
	}
	
	public void deleteById(int id) {
		 StudentRepo.deleteById(id);
	}
}
