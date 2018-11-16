package caters.service;

import java.util.List;

import caters.model.Issuetracking;

public interface Issuetrackingservice { 
  
	  public void addcomplain(Issuetracking track);
	  
	  public void saveOrUpdate(Issuetracking track);
	  
	  public Issuetracking findIssueById(int id);
	 
	  public void deletecomplain(Issuetracking track);
	 
	  List<Issuetracking> list();
}
