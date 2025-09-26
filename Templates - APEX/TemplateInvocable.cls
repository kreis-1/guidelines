/**
 * @description  : Invocable method template with success and status code outputs.
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
            
            // You can add your try/catch logic here to set success or failure
            // For this template, we'll default to success
            response.isSuccess = true;
            response.statusCode = 'OK';
            response.outputValue = 'test' + request.userId;
            
            responses.add(response);
        }
        
        return responses;
    }
    
    // ---------------------------------------

    public class Request {
        @InvocableVariable(
            label = 'User ID'
            description = 'The ID of the user to process.'
            required = true
        )
        public ID userId;
    }
        
    public class Response {
        @InvocableVariable(
            label = 'Was Successful'
            description = 'True if the operation completed without errors.'
        )
        public Boolean isSuccess;

        @InvocableVariable(
            label = 'Status Code'
            description = 'A machine-readable code for the outcome (e.g., OK, NOT_FOUND, ERROR).'
        )
        public String statusCode;

        @InvocableVariable(
            label = 'Output Value'
            description = 'The resulting output value from the operation.'
        )
        public String outputValue;
    }

}
