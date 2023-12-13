import ballerinax/mysql;
import ballerina/sql;

configurable string USER = ?;
configurable string PASSWORD = ?;
configurable string HOST = ?;
configurable int PORT = ?;
configurable string DATABASE = ?;
configurable int CONNECTION_POOL = ?;

sql:ConnectionPool connPool = { maxOpenConnections: CONNECTION_POOL };

public final mysql:Client mysqlClient = check new(
    host=HOST, user=USER, password=PASSWORD, port=PORT, database=DATABASE, connectionPool=connPool
);

public final mysql:Client | sql:Error testDB = check new(
    host=HOST, user=USER, password=PASSWORD, port=PORT, database=DATABASE, connectionPool=connPool
);