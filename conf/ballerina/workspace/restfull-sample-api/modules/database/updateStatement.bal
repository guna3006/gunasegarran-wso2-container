import ballerina/sql;
import ballerinax/mysql.driver as _;

public function updateEmployeeSalary(int employee_id,decimal salary) returns record {}|error {
sql:ProcedureCallResult|sql:Error result =  check mysqlClient -> call(`CALL updateEmployeeSalary(${employee_id},${salary})`);
    if (result is error) {
         return error(result.message());
    } else {
        return getEmployeesById(employee_id);
    }

}