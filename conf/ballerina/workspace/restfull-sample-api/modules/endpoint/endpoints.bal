import ballerina/http;

configurable string GEO_API_URL = ?;
configurable string GEO_API_KEY = ?;
configurable string API_FORMAT = ?;
configurable string GEO_URI_REVERSE = ?;
configurable string GEO_URI_SEARCH = ?;

public http:Client endpointGeoAPI = check new(string `${GEO_API_URL}`);

public http:Client | http:Error testGeoAPI = check new(string `${GEO_API_URL}`);