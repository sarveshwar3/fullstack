package caters.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import caters.dao.Issuetrackingdao;
import caters.model.Issuetracking;
 
@Service
@Transactional
public class Issuetrackingserviceimpl implements Issuetrackingservice {

	Issuetrackingdao trackdao;
	
    @Autowired	
	public void setTrackdao(Issuetrackingdao trackdao) {
		this.trackdao = trackdao;
	}

	public void addcomplain(Issuetracking track) {
		trackdao.addcomplain(track);
		
	}


	public void saveOrUpdate(Issuetracking track) {
		trackdao.saveOrUpdate(track);
		
	} 

	
	public Issuetracking findIssueById(int id) {
		return trackdao.findIssueById(id);
	}


	public void deletecomplain(Issuetracking track) {
		trackdao.deletecomplain(track);
		
	}


	public List<Issuetracking> list() {
		return trackdao.list();
	}

	
	
}
