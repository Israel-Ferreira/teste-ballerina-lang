import ballerina/http;

listener  http:Listener httpListener = new(8080);

service / on httpListener {
    resource function get greeting() returns  json {
        return {
            "msg": "Hello World"
        };
    }


    resource function get greeting/[string name]() returns json {
        return {
            "msg": "Hello " + name
        };
    }

}