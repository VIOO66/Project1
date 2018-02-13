package com.vtirsina.webapp.repository;

import com.vtirsina.webapp.domain.Employee;
import org.springframework.data.repository.CrudRepository;


public interface EmployeeRepository extends CrudRepository<Employee, String>{}
