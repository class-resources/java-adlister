import interfaces.Employees;
import models.Employee;

import java.util.ArrayList;
import java.util.List;

public class ListEmployeesDao implements Employees {

    public ListEmployeesDao(){
        insert(new Employee("01-01-0000","Fer","Mendoza", 'M', "01-01-0000"));
        insert(new Employee("01-01-0000","Ana","Rodriguez", 'M', "01-01-0000"));
        insert(new Employee("01-01-0000","justin","Mendoza", 'M', "01-01-0000"));
        insert(new Employee("01-01-0000","Ryan","Mendoza", 'M', "01-01-0000"));
        insert(new Employee("01-01-0000","Daniel","Mendoza", 'M', "01-01-0000"));
    }

    private static List<Employee> employees = new ArrayList<>();

    @Override
    public List<Employee> all() {
        return employees;
    }

    @Override
    public List<Employee> filter(String term) {
        return null;
    }

    @Override
    public Employee find(long id) {
        return employees.get((int) id-1);
    }

    @Override
    public void insert(Employee emp) {
        emp.setEmpNo(employees.size()+1);
        employees.add(emp);
    }

    @Override
    public void update(Employee emp) {

    }

    @Override
    public void delete(Employee emp) {

    }

}
