@isTest
private class SlackPosterWrapperTest {

    private static User testAdminUser = CommonTester.getLoginUser();

	/**
     * コンストラクタ
     */
    static testMethod void SlackPosterWrapperTest() {
    
        System.runAs(testAdminUser) {

            Test.startTest();

            SlackPosterWrapper cls = new SlackPosterWrapper();

            Test.stopTest();

            System.assertEquals(String.isEmpty(cls.channel), true);
            System.assertEquals(String.isEmpty(cls.username), true);
            System.assertEquals(String.isEmpty(cls.text), true);
            System.assertEquals(String.isEmpty(cls.icon_emoji), true);
        }
    }
}