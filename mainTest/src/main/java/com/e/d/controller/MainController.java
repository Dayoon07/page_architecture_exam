package com.e.d.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.e.d.model.service.MainTestService;

@Controller
public class MainController {

	@Autowired
	private MainTestService service;
	
	@GetMapping("/")
	public String index(Model m) {
		m.addAttribute("dbQuestion", service.selectByCategoryIsDb());
		m.addAttribute("javaQuestion", service.selectByCategoryIsJava());
		m.addAttribute("springQuestion", service.selectByCategoryIsSpring());
		m.addAttribute("frontQuestion", service.selectByCategoryIsFront());
		return "index";
	}
	
	@GetMapping("/write")
	public String writeFormPage() {
		return "write/writeForm";
	}
	
	@PostMapping("/submitQuestion")
	public String write(@RequestParam String category,
			@RequestParam String qnaTitle,
			@RequestParam String qnaContent) {
		service.save(category, qnaTitle, qnaContent);
		return "redirect:/";
	}
	
	@GetMapping("/qna")
	public String qnaParticular(@RequestParam long qnaId, Model m) {
		m.addAttribute("qnaQuestionInfo", service.selectById(qnaId));
		return "etc/qnaParticular";
	}
	
}
