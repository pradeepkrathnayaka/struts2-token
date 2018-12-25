package com.rmpk.prj.token.action;

import java.text.MessageFormat;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class EmployeeMgmtAction extends ActionSupport implements ModelDriven<EmployeeMgmtForm> {
	private static final long serialVersionUID = 1L;
	private EmployeeMgmtForm employeeMgmtForm = new EmployeeMgmtForm();

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
}