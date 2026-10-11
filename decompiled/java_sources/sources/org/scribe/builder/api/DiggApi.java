package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class DiggApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115850a = "http://digg.com/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115851b = "http://services.digg.com/oauth/";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "http://services.digg.com/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115850a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "http://services.digg.com/oauth/request_token";
    }
}
