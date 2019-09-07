package com.rickywong.studentRoster.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.rickywong.studentRoster.models.Contact;
import com.rickywong.studentRoster.models.Student;
import com.rickywong.studentRoster.services.MainService;

@Controller
@RequestMapping("/")
public class MainController {
	private MainService service;
	
	public MainController(MainService service) {
		this.service = service;
	}
	
	@RequestMapping("students")
	public String show(Model model) {
		model.addAttribute("students", service.allStudents());
		return "students/show.jsp";
	}
	
	@RequestMapping("students/new")
	public String newStudent(Model model) {
		model.addAttribute("student", new Student());
		return "students/createStudent.jsp";
	}
	
	@RequestMapping(value = "students/create", method = RequestMethod.POST) // New student
	public String createStudent(@ModelAttribute("student") Student student, Model model) {
		service.createStudent(student);
		model.addAttribute("students", service.allStudents());
		return "redirect:/students";
	}
	
	@RequestMapping("contacts/new")
	public String newContact(Model model) {
		model.addAttribute("contact", new Contact());
		model.addAttribute("students", service.allStudents());
		return "students/createContact.jsp";
	}
	
	@RequestMapping(value = "contacts/create", method = RequestMethod.POST)
	public String createContact(@ModelAttribute("contact") Contact contact, Model model) {
		service.createContact(contact);
		model.addAttribute("students", service.allStudents());
		return "redirect:/students";
	}
	
}
