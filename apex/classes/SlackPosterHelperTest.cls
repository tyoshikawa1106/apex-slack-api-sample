@isTest
private class SlackPosterHelperTest {

	private static SlackPosterHelper helper = new SlackPosterHelper();
    private static User testAdminUser = CommonTester.getLoginUser();

    /**
     * JSONメッセージに変換
     */
    static testMethod void getPostMessageTest() {
    
        System.runAs(testAdminUser) {

            Test.startTest();

            SlackPosterWrapper wrapper = new SlackPosterWrapper();
            String result = helper.getPostMessage(wrapper);

            Test.stopTest();

            System.assertEquals(String.isNotEmpty(result), true);
        }
    }

    /**
     * Slack API実行
     */
    static testMethod void postSlackApiTest() {
    
        System.runAs(testAdminUser) {

            Test.setMock(HttpCalloutMock.class, new SlackPosterCalloutTest());

            String slackWebhockUrl = 'https://hooks.slack.com/services/testid';
            String msg = 'TEST MESSAGE';

            Test.startTest();

            String result = helper.postSlackApi(slackWebhockUrl, msg);

            Test.stopTest();

            System.assertEquals(String.isNotEmpty(result), true);
        }
    }
}