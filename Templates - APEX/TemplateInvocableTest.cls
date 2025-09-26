@isTest
private class TemplateInvocableTest {

    @isTest
    static void testSuccessScenario() {
        TemplateInvocable.Request request = new TemplateInvocable.Request();
        request.userId = UserInfo.getUserId();
        List<TemplateInvocable.Request> requests = new List<TemplateInvocable.Request>{ request };

        Test.startTest();
            List<TemplateInvocable.Response> responses = TemplateInvocable.execute(requests);
        Test.stopTest();

        System.assertEquals(1, responses.size());
        System.assertEquals(true, responses[0].isSuccess);
        System.assertEquals('OK', responses[0].statusCode);
        System.assertEquals('test' + UserInfo.getUserId(), responses[0].outputValue);
    }
}
