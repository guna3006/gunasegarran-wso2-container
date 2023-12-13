import ballerina/sql;

public function getAllCountries() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllCountries()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}



public function getAllDepartments() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllDepartments()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}

public function getAllDependents() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllDependents()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}


public function getAllEmployees() returns  employeeStructure[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllEmployees()`;
        stream<employeeStructure, error?> results = mysqlClient->query(sqlQuery);
        employeeStructure[]? report = check from employeeStructure entry in results
        select entry;
        return report ?: [];

}

public function getAllJobs() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllJobs()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}

public function getAllLocations() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllLocations()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}

public function getAllRegions() returns record{|anydata...;|}[]|error?{
    sql:ParameterizedQuery sqlQuery = `CALL getAllRegions()`;
        stream<record {|anydata...;|}, sql:Error?> results = mysqlClient->query(sqlQuery);
        record{|anydata...;|}[]? report = check from record{|anydata...;|} entry in results
        select entry;
        return report ?: [];
}



public function getEmployeesById(int employee_id) returns employeeStructure|error {
    sql:ParameterizedQuery getEmployeesById = `CALL getEmployeesById(${employee_id})`;
    employeeStructure|sql:Error response = mysqlClient -> queryRow(getEmployeesById);
    
    if (response is sql:Error) {
        return error(response.message());
    } else {
        return response;
    }
}