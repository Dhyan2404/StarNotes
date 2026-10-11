package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class TumblrApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115914a = "https://www.tumblr.com/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115915b = "http://www.tumblr.com/oauth/request_token";

    /* renamed from: c */
    public static final String f115916c = "http://www.tumblr.com/oauth/access_token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115916c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115914a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115915b;
    }
}
