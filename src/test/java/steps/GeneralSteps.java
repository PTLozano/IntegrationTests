package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import cucumber.api.java.pt.Então;
import groovy.json.internal.LazyMap;
import org.junit.Assert;
import support.RESTSupport;

public class GeneralSteps {
    @Then("^user should see \"([^\"]*)\" message$")
    @Então("^o usuário deveria ver a mensagem de \"([^\"]*)\"$")
    public void userShouldSeeMessage(String type) {
        LazyMap messageJson = new LazyMap();
        messageJson.put("save with success", 201);
        messageJson.put("success", 200);
        messageJson.put("no content", 204);
        messageJson.put("not found", 404);
        messageJson.put("unauthorized", 401);

        Assert.assertEquals(messageJson.get(type), RESTSupport.getResponseCode());
    }

    @And("^user should see (.*) with value equal \"([^\"]*)\"$")
    public void userShouldSeeFieldWithValue(String field, String value) {
        if(value.equals("#null#")) {
            value = null;
        }

        Assert.assertEquals(value, RESTSupport.key(field));
    }
}
