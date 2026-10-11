package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class YahooApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115928a = "https://api.login.yahoo.com/oauth/v2/request_auth?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://api.login.yahoo.com/oauth/v2/get_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115928a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://api.login.yahoo.com/oauth/v2/get_request_token";
    }
}
