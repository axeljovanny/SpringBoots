package boots.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boots.model.Staff;
import boots.service.StaffService;

@Controller
public class StaffController {
	
	




	@Autowired
	private StaffService staffService;
	
	
	
	@GetMapping("/all-staffs")
	public String allStaffs(HttpServletRequest request){
		request.setAttribute("staffs", staffService.findAll());
		request.setAttribute("mode", "MODE_STAFFS");
		return "staff";
	}
	
	@GetMapping("/new-staff")
	public String newStaff(HttpServletRequest request){
		request.setAttribute("mode", "MODE_NEW");
		return "staff";
	}
	
	@PostMapping("/save-staff")
	public String saveStaff(@ModelAttribute Staff staff, BindingResult bindingResult, HttpServletRequest request){
		staffService.save(staff);
		request.setAttribute("staffs", staffService.findAll());
		request.setAttribute("mode", "MODE_STAFFS");
		return "staff";
	}
	
	@GetMapping("/update-staff")
	public String updateStaff(@RequestParam int id, HttpServletRequest request){
		request.setAttribute("staff", staffService.findStaff(id));
		request.setAttribute("mode", "MODE_UPDATE");
		return "staff";
	}
	
	@GetMapping("/delete-staff")
	public String deleteStaff(@RequestParam int id, HttpServletRequest request){
		staffService.delete(id);
		request.setAttribute("staffs", staffService.findAll());
		request.setAttribute("mode", "MODE_STAFFS");
		return "staff";
	}
	
	
	
	
	
	
	
	

}

