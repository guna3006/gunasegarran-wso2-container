import ballerina/time;

public json successPayload = {
    "status": "Success",
    "message": "Test connection successful!",
    "timestamp": time:utcToString(time:utcNow())
};


public json errorPayload = {
    "status": "Fail",
    "message": "Test connection lost!",
    "timestamp": time:utcToString(time:utcNow())
};