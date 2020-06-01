package steps;

import cucumber.api.PendingException;
import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.When;
import definition.ProcessAPI;
import support.RESTSupport;

public class CrudSteps {
    @Given("^user would like to insert a new process$")
    public void userWouldLikeToInsertANewProcess() {
        ProcessAPI.clearFields();
    }

    @And("^user informs (.*) with value equal \"([^\"]*)\"$")
    public void userInformsFieldWithValueEqual(String field, String value) throws Throwable {
        if(value.equals("#null#")) {
            value = null;
        }

        ProcessAPI.addFields(field, value);
    }

    @When("^user clicks on save button$")
    public void userClicksOnSaveButton() {
        RESTSupport.executePost(ProcessAPI.getEndPoint(),ProcessAPI.getFields());
        ProcessAPI.setLastId(RESTSupport.key("id").toString());
        ProcessAPI.clearFields();
    }

    @And("^user wants to see process information registered$")
    public void userWantsToSeeProcessInformationRegistered() {
        RESTSupport.executeGet(ProcessAPI.getEndPoint() + ProcessAPI.getLastId() + ".json");
    }

    @And("^user clicks on save button again$")
    public void userClicksOnSaveButtonAgain() {
        RESTSupport.executePut(ProcessAPI.getEndPoint() + ProcessAPI.getLastId() + ".json", ProcessAPI.getFields());
    }

    @And("^user clicks on delete button$")
    public void userClicksOnDeleteButton() {
        RESTSupport.executeDelete(ProcessAPI.getEndPoint() + ProcessAPI.getLastId() + ".json");
    }
}
