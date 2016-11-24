package boots.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;



import boots.service.PubService;


@Controller
public class MainController {
	
	

	@GetMapping("/")
	public String home(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "index";
	}
	
	@GetMapping("staff")
	public String staff(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "staff";
	}
	
	@GetMapping("task")
	public String task(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "task";
		
		
	}
	@GetMapping("pub")
	public String pub(HttpServletRequest request){
		request.setAttribute("mode", "MODE_HOME");
		return "pub";
	}
	
	
	
	
	

	

}
