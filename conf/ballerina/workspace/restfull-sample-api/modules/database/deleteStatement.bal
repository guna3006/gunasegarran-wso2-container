import ballerina/sql;
import ballerinax/mysql.driver as _;

public function deleteEmployee(int employee_id) returns afterDeleteRecord|error{
    employeeStructure verifyEmployee = check getEmployeesById(employee_id);
    if (verifyEmployee.count() >= 1) {
        sql:ProcedureCallResult|sql:Error response =  check mysqlClient -> call(`CALL deleteEmployee(${employee_id})`);
            if (response is sql:Error) {
                return error(response.message());
            } else {
                return deleteRecordSuccess(employee_id);
            }
    }else{
        string errorResp = deleteRecordFail(employee_id).toJsonString();
        return error(errorResp);
    }

}

public function deleteRecordSuccess (int empID) returns afterDeleteRecord {
    afterDeleteRecord getAfterDeleteRecord = {status: "", message: "", employee_id: 0};
    getAfterDeleteRecord.status = "Success";
    getAfterDeleteRecord.message = "Record deleted";
    getAfterDeleteRecord.employee_id = empID;
    return getAfterDeleteRecord;
}

public function deleteRecordFail (int empID) returns afterDeleteRecord {
    afterDeleteRecord getAfterDeleteRecord = {status: "", message: "", employee_id: 0};
    getAfterDeleteRecord.status = "Fail";
    getAfterDeleteRecord.message = "No records to delete";
    getAfterDeleteRecord.employee_id = empID;
    return getAfterDeleteRecord;
}