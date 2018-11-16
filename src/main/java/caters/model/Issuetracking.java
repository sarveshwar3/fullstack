package caters.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "issue_tracking_table")
@Table(name = "issue_tracking_table")
public class Issuetracking {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "issue_id")
	private int id;
	
	@Column(name = "issue_types")
	private String issue_types; 
	
	
	@Column(name = "date")
	private String date;
	
	@Column(name = "issue_description")
	private String issue_description;
	
	@Column(name = "reopen_date")
	private String reopen_date;
	
	@Column(name = "parent_id")
	private int parent_id; 
	
	@Column(name = "status")
	private String status;

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getIssue_description() {
		return issue_description;
	}

	public void setIssue_description(String issue_description) {
		this.issue_description = issue_description;
	}

	public String getReopen_date() {
		return reopen_date;
	}

	public void setReopen_date(String reopen_date) {
		this.reopen_date = reopen_date;
	}

	public int getParent_id() {
		return parent_id;
	}

	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	public String getIssue_types() {
		return issue_types;
	}

	public void setIssue_types(String issue_types) {
		this.issue_types = issue_types;
	}


	public Issuetracking(int id, String issue_types, String date, String issue_description, String reopen_date,
			int parent_id, String status) {
		super();
		this.id = id;
		this.issue_types = issue_types;
		this.date = date;
		this.issue_description = issue_description;
		this.reopen_date = reopen_date;
		this.parent_id = parent_id;
		this.status = status;
	}

	public Issuetracking(){}
}
