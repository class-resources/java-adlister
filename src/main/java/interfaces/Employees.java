package interfaces;

import models.Employee;

import java.util.List;

public interface Employees {
    List<Employee> all();
    List<Employee> filter(String term);
    Employee find(long id);
    void insert(Employee emp);
    void update(Employee emp);
    void delete(Employee emp);
}
