package caters.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import caters.model.Issuetracking;

@Repository("Issuetrackingdao")
public class Issuetrackingdaoimpl implements Issuetrackingdao {

	
    @Autowired
	private SessionFactory sessionfactory;
	
    
    @Transactional
	public void addcomplain(Issuetracking track) {
		Session session = sessionfactory.getCurrentSession();
        session.save(track);
		
	}

	@Transactional
	public void deletecomplain(Issuetracking track) {
		Session session = sessionfactory.getCurrentSession();
		session.delete(track);
		
	}

	@Transactional
	public List<Issuetracking> list() {
		@SuppressWarnings("unchecked")
		   
		  Session session = sessionfactory.getCurrentSession();
		  @SuppressWarnings("deprecation")
		Query q = session.createQuery("from issue_tracking_table");
		  List<Issuetracking> tracking = q.list();
		  for(Issuetracking c: tracking){ 
		System.out.println(c);
		  }
		  return tracking;
			 
	} 
	


	public void saveOrUpdate(Issuetracking track) {
        sessionfactory.getCurrentSession().saveOrUpdate(track);
		
		
	}


	public Issuetracking findIssueById(int id) {
		Issuetracking tracks = (Issuetracking)sessionfactory.getCurrentSession().get(Issuetracking.class, id);
		return tracks;
	}

}
