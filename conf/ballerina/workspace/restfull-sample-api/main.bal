import restfull_sample_api.database as mySQL;
import restfull_sample_api.'listener as apiListener;
import restfull_sample_api.endpoint;
import restfull_sample_api.common;
import ballerina/http;
import ballerina/sql;

service /status on apiListener:httpListener{
    resource function get database/mysql() returns json|error{
        if (mySQL:testDB is sql:Error){
            string errorResp = common:errorPayload.toJsonString();
            return error(errorResp);
        }else {
            return common:successPayload;
        }
    }

    resource function get endpoint/GeoAPI() returns json|error{
        if (endpoint:testGeoAPI is http:Error){
            string errorResp = common:errorPayload.toJsonString();
            return error(errorResp);
        }else {
            return common:successPayload;
        }
    }
}

service /database on apiListener:httpListener{

    //employee
        resource function post employee/create(http:Request req) returns record{}|error{
            json payload = check req.getJsonPayload();
            return check mySQL:newEmployee(payload);
    }

        resource function get employee/all() returns mySQL:employeeStructure[]|error?{
            return mySQL:getAllEmployees();
    }

        resource function get employee(int employee_id) returns mySQL:employeeStructure |error{
            return mySQL:getEmployeesById(employee_id);
    }

        resource function delete employee/delete(int employee_id) returns record{}|error{
            return check mySQL:deleteEmployee(employee_id);
            
    }

        resource function put employee/update/salary(int employee_id, decimal salary) returns record {} |error{
            return check mySQL:updateEmployeeSalary(employee_id,salary);
    }

    //others getAll functions
            resource function get countries/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllCountries();
    }

            resource function get departments/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllDepartments();
    }

            resource function get dependents/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllDependents();
    }

            resource function get jobs/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllJobs();
    }

            resource function get locations/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllLocations();
            
    }
            resource function get regions/all() returns record{|anydata...;|}[]|error?{
            return mySQL:getAllRegions();
    }

}


service /geo on apiListener:httpListener{
    resource function get coordinate(float lat, float lon, int? pageNumber, int? pageSize) returns map<json>|error?{
        return check endpoint:coordinate(lat,lon,pageNumber ?: 0,pageSize ?: 0);
        }
    
    resource function get search(string key, int? pageNumber, int? pageSize) returns map<json>|error?{
        return check endpoint:search(key,pageNumber ?: 0,pageSize ?: 0);
        }
}