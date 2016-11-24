package boots.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import boots.dao.PubRepository;

import boots.model.Pub;


@Service @Transactional
public class PubService {
	
	private final PubRepository pubRepository;

	public PubService(PubRepository pubRepository) {
		super();
		this.pubRepository = pubRepository;
	}
	
	public List <Pub> findAll(){
		List <Pub> pubs= new ArrayList<>();
		for(Pub pub: pubRepository.findAll()){
			pubs.add(pub);
			
		}
		return pubs;
	}
	
	public Pub findPub(int id){
		return pubRepository.findOne(id);
	}

	
	
	public void delete(int id){
		pubRepository.delete(id);
	}

	public void save(Pub pub) {
		pubRepository.save(pub);
		
	}
	
}


