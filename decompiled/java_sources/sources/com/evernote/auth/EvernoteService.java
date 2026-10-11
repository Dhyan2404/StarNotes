package com.evernote.auth;

import com.evernote.client.android.EvernoteSession;

/* loaded from: classes4.dex */
public enum EvernoteService {
    PRODUCTION(EvernoteSession.HOST_PRODUCTION),
    SANDBOX(EvernoteSession.HOST_SANDBOX),
    YINXIANG(EvernoteSession.HOST_CHINA);

    private String host;

    EvernoteService(String str) {
        this.host = str;
    }

    public String getAccessTokenEndpoint() {
        return getEndpointUrl("/oauth");
    }

    public String getAuthorizationUrl(String str) {
        return String.format(getEndpointUrl("/OAuth.action?oauth_token=%s"), str);
    }

    public String getEndpointUrl(String str) {
        return this.host + str;
    }

    public String getHost() {
        return this.host;
    }

    public String getRequestTokenEndpoint() {
        return getEndpointUrl("/oauth");
    }
}
