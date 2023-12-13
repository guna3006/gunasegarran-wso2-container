import restfull_sample_api.common;

 public function coordinateURL(float lat, float lon) returns string | error {
    string finalURL = string `${GEO_URI_REVERSE}`+"lat="+string `${lat}`+"&lon="+string `${lon}`+"&format="+string `${API_FORMAT}`+"&apiKey="+ string `${GEO_API_KEY}`;
    return finalURL;
}   


public function searchURL(string key) returns string | error{
    string finalURL = string `${GEO_URI_SEARCH}`+"text="+key+"&format="+string `${API_FORMAT}`+"&apiKey="+ string `${GEO_API_KEY}`;
    return finalURL;
}


public function coordinate(float lat, float lon, int? pageNumber, int? pageSize) returns map<json>|error?{
                string endpoint1 = check coordinateURL(lat,lon);
                string endpoint2 = common:pagination(pageNumber ?: 1,pageSize ?: 10);
                map<json>|error result = check endpointGeoAPI -> get(endpoint1+endpoint2);
                    if (result is map<json>){
                        return result;
                        }else{
                        return error(result.message());
                        }
}

public function search(string key, int? pageNumber, int? pageSize) returns map<json>|error?{
                string endpoint1 = check searchURL(key);
                string endpoint2 = common:pagination(pageNumber ?: 1,pageSize ?: 10);
                map<json>|error result = check endpointGeoAPI -> get(endpoint1+endpoint2);
                    if (result is map<json>){
                        return result;
                        }else{
                        return error(result.message());
                        }
        }
