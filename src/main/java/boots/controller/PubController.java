package boots.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boots.model.Pub;
import boots.service.PubService;


@Controller
public class PubController {
	
	


	@Autowired
	private PubService pubService;
	
	
	@GetMapping("/all-pubs")
	public String allPubs(HttpServletRequest request){
		request.setAttribute("pubs", pubService.findAll());
		request.setAttribute("mode", "MODE_PUBS");
		return "pub";
	}
	
	@GetMapping("/new-pub")
	public String newPub(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "pub";
	}
	
	@PostMapping("/save-pub")
	public String savePub(@ModelAttribute Pub pub, BindingResult bindingResult, HttpServletRequest request){
		pubService.save(pub);
		request.setAttribute("pubs", pubService.findAll());
		request.setAttribute("mode", "MODE_PUBS");
		return "pub";
	}
	
	@GetMapping("/update-pub")
	public String updatePub(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("pub", pubService.findPub(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "pub";
	}
	
	@GetMapping("/delete-pub")
	public String deletePub(@RequestParam int id, HttpServletRequest request){
		pubService.delete(id);
		request.setAttribute("pubs", pubService.findAll());
		request.setAttribute("mode", "MODE_PUBS");
		return "pub";
	}
	

	

}

