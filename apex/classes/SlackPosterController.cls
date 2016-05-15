public with sharing class SlackPosterController {

    // Helper Class
    private static SlackPosterHelper helper = new SlackPosterHelper();

    /**
     * コンストラクタ
     */
	public SlackPosterController() {
		
	}

    /**
     * Slack API Post
     */
    @RemoteAction
    public static String postSlackApi(SlackPosterWrapper wrapper) {
        // カスタム設定情報取得
        SlackApiCtrl__c slackApiCtrl = SlackApiCtrl__c.getOrgDefaults();
        // Slack WebhockURLを取得
        String slackWebhockUrl = slackApiCtrl.WebhockUrl__c;
        // Postするメッセージを取得
        String msg = helper.getPostMessage(wrapper);
        // Slack APIを実行
        String result = helper.postSlackApi(slackWebhockUrl, msg);

        return result;
    }
}