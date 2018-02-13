package com.vtirsina.webapp.service;

import com.vtirsina.webapp.domain.Employee;

import java.util.Collection;


public interface EmployeeServiceInterface {

	public Employee saveEmployee(Employee emp);
	public Boolean deleteEmployee(String empId);
	public Employee editEmployee(Employee emp);
	public Employee findEmployee(String empId);
	public Collection<Employee> getAllEmployees();
}
