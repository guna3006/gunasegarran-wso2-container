
public type employeeStructure record {
    int employee_id;
    string first_name;
    string last_name;
    string email;
    string phone_number;
    string hire_date;
    int job_id;
    decimal salary;
    int manager_id;
    int department_id;
};



public type afterDeleteRecord record {
        string status;
        string message;
        int employee_id;
};
