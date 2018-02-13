package com.vtirsina.webapp.service;

import com.vtirsina.webapp.domain.Employee;
import com.vtirsina.webapp.repository.EmployeeRepository;
import java.util.Collection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
@Transactional
public class EmployeeServiceImplementation implements EmployeeServiceInterface{

	private final Logger logger = LoggerFactory.getLogger(EmployeeServiceImplementation.class);

	@Autowired
	protected EmployeeRepository employeeRepository;

	@Override
	public Employee saveEmployee(Employee emp) {
		logger.info("Employee " + emp.getEmpName() + " saved");
		return employeeRepository.save(emp);
	}

	@Override
	public Boolean deleteEmployee(String empId) {
		Employee temp = employeeRepository.findOne(empId);
		if(temp!=null){
			 employeeRepository.delete(temp);
			 logger.info("Employee " + temp.getEmpName() + " is deleted");
			 return true;
		}
		logger.warn("Employee with id " + empId + " could not be found");
		return false;
	}

	@Override
	public Employee editEmployee(Employee emp) {
		logger.info("Employee " + emp.getEmpName() + " is being updated");
		return employeeRepository.save(emp);
	}

	@Override
	public Collection<Employee> getAllEmployees() {
		Iterable<Employee> itr = employeeRepository.findAll();
		logger.info("Number of employees found: " + ((Collection<Employee>)itr).size());
		return (Collection<Employee>)itr;
	}

	@Override
	public Employee findEmployee(String empId) {
		return employeeRepository.findOne(empId);
	}
}
