/**
 * @description  : Invocable method template
 * @group        : Invocable
**/
public with sharing class TemplateInvocable {

    @InvocableMethod(
        label = 'Name'
        description = 'Description'
    )
    public static List<Response> execute( List<Request> requests ) {
        List<Response> responses = new List<Response>();
        
        for ( Request request : requests ) {
            Response response = new Response();
            response.outputValue = 'test' + request.userId;
            responses.add(response);
        }
        
        return responses;
    }
    
    // ---------------------------------------

    public class Request {
        @InvocableVariable(
            label = 'Label of this input variable'
            description = 'Description for this input variable'
            required = true
        )
        public ID userId;
    }
        
    public class Response {
        @InvocableVariable(
            label = 'Label of this output variable'
            description = 'Description for this output variable'
        )
        public String outputValue;
    }

}