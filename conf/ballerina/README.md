<h1> <center> Ballerina Programming Language</center><h1>

<h2>Dance to the rhythm of Ballerina, the agile and expressive programming language designed for integration and orchestration. Amplify your coding experience within the Dockerized environment.</h2>


### ![Ballerina Badge](https://shields.io/badge/Ballerina-lightgrey?logo=react&style=for-the-badge&logoColor=black&labelColor=blue)
- `docker pull gunasegarran/ballerina:12.12.23`
[![Static Badge](https://img.shields.io/badge/12.12.23-blue?style=for-the-badge&logo=docker&logoColor=blue&label=gunasegarran/ballerina&labelColor=grey&color=lightblue)](https://hub.docker.com/repository/docker/gunasegarran/wso2-apim/general)

-----

### Deployment Configuration
- The relevant configuration for each service is specified in the file:
[![Static Badge](https://img.shields.io/badge/TOML-lightgrey?style=for-the-badge&logo=toml&logoColor=with&label=deployment&labelColor=grey&color=red)](conf/api-manager/conf/deployment.toml)


-----

### Ballerina Integration with WSO2-APIM

- Ballerina serves as the programming language tool for API publication and integration with WSO2-APIM, leveraging the file:
![OpenAPI Badge](https://shields.io/badge/openAPI-lightgrey?logo=swagger&style=for-the-badge&logoColor=black&labelColor=green)

---

#### Code Structure

* Project is initiated:
    * `bal new <:project-name:>`

    * [![Static Badge](https://img.shields.io/badge/Ballerina-.toml-white?logo=TOML&logoColor=white&label=Ballerina)](Ballerina.toml) - is genarated with project details, including user-set organization information.

* Creation of multiple modules :
    * `bal add <:module-name:>` - each functions, variables, and custom types.

* Main functions or services :
    * [![Static Badge](https://img.shields.io/badge/main-.bal-white?logo=mulesoft&logoColor=white&label=main)](main.bal) - define the functions and services here.
    * [![Static Badge](https://img.shields.io/badge/Config-.toml-white?logo=toml&logoColor=white&label=Config)](Config.toml) - define the secrets for the enviroment here.
    
* Test Unit :
    * [![Static Badge](https://img.shields.io/badge/maifunction_test-.bal-white?logo=testinglibrary&logoColor=white&label=function_test)](/tests) - define the unit test function here.
    * [![Static Badge](https://img.shields.io/badge/Config-.toml-white?logo=toml&logoColor=white&label=Config)](/tests/Config.toml) - define the secrets for the enviroment here.


* Compiling the current package :
    * `bal build`


* Compile and run the current package :
    * `bal run`

* Run package test :
    * `bal test` - Execute test
    * `bal test --test-report` - Generate test report
    * `bal test --code-coverage` - Generate code coverage
    * `bal test --code-coverage` - Generate code coverage
    * `bal test --test-report --code-coverage` - Generate test report and code coverage

* Enable SSL :
    * Configuring the `http:Listener` for **HTTPS** involves specifying a [![Static Badge](https://img.shields.io/badge/serverpubliccert-.crt-white?logo=keycdn&logoColor=white&label=serverpubliccert)](/shared/resources/keys/serverpubliccert.crt) and a [![Static Badge](https://img.shields.io/badge/serverpvtkey-.key-white?logo=keycdn&logoColor=white&label=serverpvtkey)](/shared/resources/keys/serverpvtkey.key) file.
    * To secure the service, obtain **SSL** certificates and store them in a folder named [![Static Badge](https://img.shields.io/badge/keys-lightblue?logo=docusign&logoColor=grey)](/shared/resources/keys).
    * Command to execute:
   ```openssl req -new -newkey rsa:2048 -sha256 -days 365 -nodes -x509 -keyout serverpvtkey.key -out serverpubliccert.crt```

-------------

----
### Bridge Network

- A bridge network is used in Docker to connect each container.
- Network Name: 
![Static Badge](https://img.shields.io/badge/middleware--network-323330?style=for-the-badge&logo=dotnet&logoColor=white)


------

# License

[MIT License](LICENSE)

# Support
This is a community-developed project. There is no official WSO2 nor Dynatrace support for this project


----
##### by
[![LinkedIn Badge](https://img.shields.io/badge/gunasegarran-323330?style=for-the-adge&logo=linkedin&logoColor=blue)](https://www.linkedin.com/in/gunasegarran/)