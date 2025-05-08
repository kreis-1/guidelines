/**
 * @description  : Test for Invocable method template
 * @group        : Invocable
**/
@isTest
private class TemplateInvocableTest {
    @isTest
    static void testTemplateInvocable() {
        List<TemplateInvocable.Request> requests = new List<TemplateInvocable.Request>();
        TemplateInvocable.Request request = new TemplateInvocable.Request();
        request.userId = UserInfo.getUserId();
        requests.add(request);

        Test.startTest();
            List<TemplateInvocable.Response> responses = TemplateInvocable.execute(requests);
        Test.stopTest();

        System.assertEquals('test' + UserInfo.getUserId(), responses[0].outputValue);
    }

}