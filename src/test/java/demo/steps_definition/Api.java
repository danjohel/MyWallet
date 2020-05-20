package demo.steps_definition;

import demo.api.ApiController;
import io.cucumber.java.en.Then;
import io.restassured.response.Response;

public class Api {

    ApiController apiController = new ApiController();

    @Then("User login with email {string} and password {string}")
    public void userLoginWithEmailAndPassword(String email, String password) {
        Response response;
        response = apiController.postLoginUser(email,password);
        int id = response.path("idUser");
        String balance = response.path("balance");
        String token = response.path("token");

        System.out.println(id);
        System.out.println("saldo user adalah"+balance+"");
        System.out.println("token user adalah"+token+"");

    }
}
