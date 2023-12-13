import ballerina/sql;
import ballerinax/mysql.driver as _;

public function newEmployee(json payload) returns record {}|error {
    employeeStructure|error paramMap = payload.cloneWithType(employeeStructure);
            if (paramMap is error ){
            return error(paramMap.message());
           } else {
            anydata | error employee_id = paramMap.get("employee_id");
            anydata first_name = paramMap.get("first_name");
            anydata last_name = paramMap.get("last_name");
            anydata email = paramMap.get("email");
            anydata phone_number = paramMap.get("phone_number");
            anydata hire_date = paramMap.get("hire_date");
            anydata job_id = paramMap.get("job_id");
            anydata salary = paramMap.get("salary");
            anydata manager_id = paramMap.get("manager_id");
            anydata department_id = paramMap.get("department_id");
            if (employee_id is error){
                return error(employee_id.message());
            }else {
               record {| anydata...; |}|error response = check insertNewEmployee(<int>employee_id,<string>first_name,<string>last_name,<string>email,<string>phone_number,<string>hire_date,<int>job_id,<decimal>salary,<int>manager_id ,<int>department_id);
                    if (response is error ){
                        return error(response.message().toJsonString());
                    }else{
                        return response;
                    }           
            }
            
        }
    }

function insertNewEmployee(int employee_id,string first_name,string last_name,string email,string phone_number,string hire_date,int job_id,decimal salary,int manager_id ,int department_id) returns record {|anydata...;|}|error {
sql:ProcedureCallResult|sql:Error result =  check mysqlClient -> call(`call newEmployee(${employee_id}, ${first_name}, ${last_name}, ${email}, ${phone_number}, ${hire_date}, ${job_id}, ${salary}, ${manager_id}, ${department_id})`);
    if (result is error) {
         return error(result.message());
    } else {
        return getEmployeesById(employee_id);
    }

}