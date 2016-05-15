public with sharing class SlackPosterWrapper {

    public String channel {get; set;}
    public String username {get; set;}
    public String text {get; set;}
    public String icon_emoji {get; set;}

    /**
     * コンストラクタ
     */
    public SlackPosterWrapper() {
        this.channel = '';
        this.username = '';
        this.text = '';
        this.icon_emoji = '';
    }
}