package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class NeteaseWeibooApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115883a = "http://api.t.163.com/oauth/request_token";

    /* renamed from: b */
    public static final String f115884b = "http://api.t.163.com/oauth/access_token";

    /* renamed from: c */
    public static final String f115885c = "http://api.t.163.com/oauth/authorize?oauth_token=%s";

    /* renamed from: d */
    public static final String f115886d = "http://api.t.163.com/oauth/authenticate?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115884b;
    }

    public String getAuthenticateUrl(Token token) {
        return String.format(f115886d, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115885c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115883a;
    }
}
