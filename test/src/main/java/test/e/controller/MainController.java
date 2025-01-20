package test.e.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import test.e.model.service.FrontUsersService;
import test.e.model.service.QnaService;
import test.e.model.vo.FrontUsersVo;

@Controller
public class MainController {

	@Autowired
	private FrontUsersService frontUsersService;
	
	@Autowired
	private QnaService qnaService;
	
	@GetMapping("/")
	public String index(Model m, HttpSession s) {
		if (s.getAttribute("user") == null) return "login/login";
		m.addAttribute("allQuestion", qnaService.findAll());
		m.addAttribute("dbQuestion", qnaService.selectByCategoryIsDb());
		m.addAttribute("javaQuestion", qnaService.selectByCategoryIsJava());
		m.addAttribute("springQuestion", qnaService.selectByCategoryIsSpring());
		m.addAttribute("frontQuestion", qnaService.selectByCategoryIsFront());
		m.addAttribute("dashboardFindAll", frontUsersService.findAll());
		return "dashboard/dashboard";
	}
	
	@GetMapping("/login")
	public String loginPage() {
		return "login/login";
	}
	
	@GetMapping("/write")
	public String writeFormPage() {
		return "etc/writeForm";
	}
	
	@GetMapping("/main")
	public String qnaPage(Model model, HttpSession s) {
		if (s.getAttribute("user") == null) return "login/login";
		model.addAttribute("allQuestion", qnaService.findAll());
		model.addAttribute("dbQuestion", qnaService.selectByCategoryIsDb());
		model.addAttribute("javaQuestion", qnaService.selectByCategoryIsJava());
		model.addAttribute("springQuestion", qnaService.selectByCategoryIsSpring());
		model.addAttribute("frontQuestion", qnaService.selectByCategoryIsFront());
		return "main/main";
	}
	
	@PostMapping("/loginF")
	public String login(
	        @RequestParam String userid1,
	        @RequestParam String userid2,
	        @RequestParam String userid3,
	        @RequestParam String password,
	        HttpSession session) {
		FrontUsersVo loginUser = frontUsersService.login(userid1, userid2, userid3, password);

		if (loginUser != null && loginUser.getPassword().equals(password)) {
			session.setAttribute("user", loginUser);
		}
		
	    return "redirect:/";
	}
	
	@PostMapping("/logout")
	public String logout(HttpSession s,
			@RequestParam int id) {
		FrontUsersVo user = (FrontUsersVo) s.getAttribute("user");
		if (user.getId() == id) {
			s.invalidate();
		}
		return "login/login";
	}
	
	@PostMapping("/qnaQuestion")
	public String write(@RequestParam String category,
			@RequestParam String qnaContent,
			@RequestParam String qnaTitle) {
		qnaService.save(category, qnaTitle, qnaContent);
		
		return "redirect:/";
	}
	
	@GetMapping("/qna")
	public String qnaParticular(@RequestParam long qnaId, Model m) {
		m.addAttribute("qnaQuestionInfo", qnaService.selectById(qnaId));
		return "etc/particularQnaPage";
	}
	
	@GetMapping("search")
	public String search(@RequestParam String rs, Model m) {
		m.addAttribute("searchResult", qnaService.searchMapper(rs));
		m.addAttribute("searchWord", rs);
		return "etc/searchResult";
	}
	
	@GetMapping("/dashboard")
	public String dashboardPage(Model m) {
		m.addAttribute("dashboardFindAll", frontUsersService.findAll());
		return "dashboard/dashboard";
	}
	
}
