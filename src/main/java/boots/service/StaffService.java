package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.StaffRepository;

import boots.model.Staff;


@Service @Transactional
public class StaffService {
	
	private final StaffRepository staffRepository;

	public StaffService(StaffRepository staffRepository) {
		super();
		this.staffRepository = staffRepository;
	}
	
	public List <Staff> findAll(){
		List <Staff> staffs= new ArrayList<>();
		for(Staff staff: staffRepository.findAll()){
			staffs.add(staff);
			
		}
		return staffs;
	}
	
	public Staff findStaff(int id){
		return staffRepository.findOne(id);
	}

	
	
	public void delete(int id){
		staffRepository.delete(id);
	}

	public void save(Staff staff) {
		staffRepository.save(staff);
		
	}
	
}


