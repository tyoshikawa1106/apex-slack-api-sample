@isTest
private class SlackPosterControllerTest {

	private static User testAdminUser = CommonTester.getLoginUser();

    /**
     * コンストラクタ
     */
    static testMethod void SlackPosterControllerTest() {
    
        System.runAs(testAdminUser) {

            Test.startTest();

            SlackPosterController cls = new SlackPosterController();

            Test.stopTest();
        }
    }

    /**
     * Slack API Post
     */
    static testMethod void postSlackApiTest() {
    
        System.runAs(testAdminUser) {

            Test.setMock(HttpCalloutMock.class, new SlackPosterCalloutTest());
            // カスタム設定情報登録
            SlackApiCtrl__c slackApiCtrl = CommonTester.createSlackApiCtrl(true);

            Test.startTest();

            SlackPosterWrapper wrapper = new SlackPosterWrapper();
            String result = SlackPosterController.postSlackApi(wrapper);

            Test.stopTest();
        }
    }
}