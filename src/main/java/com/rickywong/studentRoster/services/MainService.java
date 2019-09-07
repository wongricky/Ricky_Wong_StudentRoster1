package com.rickywong.studentRoster.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.rickywong.studentRoster.models.Contact;
import com.rickywong.studentRoster.models.Student;
import com.rickywong.studentRoster.repositories.ContactRepository;
import com.rickywong.studentRoster.repositories.StudentRepository;

@Service
public class MainService {
	private StudentRepository studentRepo;
	private ContactRepository contactRepo;
	
	public MainService(StudentRepository studentRepo, ContactRepository contactRepo) {
		this.studentRepo = studentRepo;
		this.contactRepo = contactRepo;
	}
	
	// List all students
	public List<Student> allStudents(){
		return studentRepo.findAll();
	}
	
	// Create student
	public void createStudent(Student student) { 
		studentRepo.save(student);
	}
	
	// Create contact
	public void createContact(Contact contact) {
		contactRepo.save(contact);
	}
}
