import ballerina/http;

configurable string CERT_FILE = ?;
configurable string KEY_FILE = ?;
configurable int HTTP_PORT = ?;
configurable int HTTPS_PORT = ?;


public listener http:Listener httpsListener = new (HTTPS_PORT,
    secureSocket = {
        key: {
            certFile: CERT_FILE,
            keyFile: KEY_FILE
        }
    }
);

public listener http:Listener httpListener = new(HTTP_PORT);