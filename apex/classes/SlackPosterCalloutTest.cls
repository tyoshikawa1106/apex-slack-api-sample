@isTest
public with sharing class SlackPosterCalloutTest implements HttpCalloutMock {
	  
    /**
     * Slack API Calloutテスト
     */
    public HTTPResponse respond(HTTPRequest req) {
        HttpResponse res = new HttpResponse();
        res.setHeader('Content-Type', 'application/json');
        res.setBody('{"Status":"OK", "StatusCode":"200"}');
        res.setStatusCode(200);
        return res;
    }
}