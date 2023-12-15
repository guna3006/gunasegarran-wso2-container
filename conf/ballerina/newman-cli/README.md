<h1> <center> Newman Codecoverage </center><h1>

<h2>Command-line runner for Postman collections, simplifying testing by executing collections directly from the command line. Designed for seamless integration with continuous integration servers and build systems, emphasizing extensibility.</h2>


### ![newman Badge](https://shields.io/badge/newman-lightgrey?logo=postman&style=for-the-badge&logoColor=black&labelColor=orange)

-----

### Installation

#### NPM
```
$ npm install -g newman
```

#### BREW
```
$ brew install newman
```


### Usage

#### Export postman collection as a json file from the Postman App and run it using ```newman run``` cli.
```
$ newman run examples/sample-collection.json
```

#### Using Reporters ```-r``` with Newman
```
$ newman run examples/sample-collection.json -r cli,json
```

----
# License

[MIT License](LICENSE)

# Support
This is a community-developed project. There is no official WSO2 nor Dynatrace support for this project


----
##### by
[![LinkedIn Badge](https://img.shields.io/badge/gunasegarran-323330?style=for-the-adge&logo=linkedin&logoColor=blue)](https://www.linkedin.com/in/gunasegarran/)