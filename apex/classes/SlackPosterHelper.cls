public with sharing class SlackPosterHelper {

    /**
     * コンストラクタ
     */
    public SlackPosterHelper() {
        
    }

    /**
     * JSONメッセージに変換
     */
    public String getPostMessage(SlackPosterWrapper wrapper) {
        return JSON.serialize(wrapper);
    }

    /**
     * Slack API実行
     */
    public String postSlackApi(String slackWebhockUrl, String msg) {
        Http http = new Http();
        HttpRequest req = new HttpRequest();
        req.setHeader('Content-Type', 'application/json');
        req.setEndpoint(slackWebhockUrl);
        req.setMethod('POST');
        req.setBody(msg);
        HttpResponse res = http.send(req);
        System.debug(res);
        String result = res.getBody();
        System.debug(result);
        return result;
    }
}