package com.rmpk.prj.token.action;

import java.text.MessageFormat;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EmployeeMgmtAction extends ActionSupport implements ModelDriven<EmployeeMgmtForm> {
	private static final long serialVersionUID = 1L;
	private EmployeeMgmtForm employeeMgmtForm = new EmployeeMgmtForm();
	private String jsonString;
	private String firstName;
	private String lastName;
	private String email;

	public String index() {
		return SUCCESS;
	}

	@Override
	public EmployeeMgmtForm getModel() {
		return employeeMgmtForm;
	}

	public String save() {
		String name = MessageFormat.format("Employee First Name : {0}, Last Name {1}",
				employeeMgmtForm.getFirstName(), employeeMgmtForm.getFirstName());
		System.out.println(name);
		System.out.println("Email : " + employeeMgmtForm.getFirstName());
		return SUCCESS;
	}
	
	public String saveAjax() {
		String name = MessageFormat.format("Employee First Name : {0}, Last Name {1}",
				employeeMgmtForm.getFirstName(), employeeMgmtForm.getFirstName());
		System.out.println(name);
		System.out.println("Email : " + employeeMgmtForm.getFirstName());
		
		 Gson gson = new Gson();
		 jsonString = gson.toJson("saved");
		// System.out.println(jsonString);
		 
		return SUCCESS;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getJsonString() {
		return jsonString;
	}

	public void setJsonString(String jsonString) {
		this.jsonString = jsonString;
	}
	
}