package sg.edu.rp.c346.employeeinfo;

public class EmployeeArrayList {
    private String name;
    private String title;
    private Double salary;

    public EmployeeArrayList(String name, String title, Double salary){
        this.name = name;
        this.title = title;
        this.salary = 0.0;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Double getSalary() {
        return salary;
    }

    public void setSalary(Double salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return name +":"+title +" :"+salary;
    }
}
