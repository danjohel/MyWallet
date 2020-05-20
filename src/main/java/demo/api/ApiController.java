package demo.api;

import io.restassured.RestAssured;
import io.restassured.http.ContentType;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.json.simple.JSONObject;

import static io.restassured.RestAssured.given;

public class ApiController {

    public Response postLoginUser(String email, String password) {

        RestAssured.baseURI ="https://0b2cd30a.ngrok.io";
        RequestSpecification request = RestAssured.given().contentType(ContentType.JSON);

        JSONObject requestParams = new JSONObject();
        requestParams.put("email", email);
        requestParams.put("password", password);
        request.body(requestParams.toJSONString());
        Response response = request.post("/login");
        response.getBody().prettyPrint();
        return response;
    }

//    public Response getDataUser(){
//        RestAssured.baseURI ="http://restapi.demoqa.com/customer";
//        RequestSpecification request = RestAssured.given();
//
//        JSONObject requestUser = new JSONObject();
//        requestUser.put("idUser"); // Cast
//        requestUser.put("balance");
//        requestUser.put("name");
//        requestUser.put("Password");
//
//        requestUser.put("Email",  "sample2ee26d9@gmail.com");
//        request.body(requestUser.toJSONString());
//        Response response = request.post("/register");
//    }

}
