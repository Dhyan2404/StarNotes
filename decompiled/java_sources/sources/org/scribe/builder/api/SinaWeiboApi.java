package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class SinaWeiboApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115901a = "http://api.t.sina.com.cn/oauth/request_token";

    /* renamed from: b */
    public static final String f115902b = "http://api.t.sina.com.cn/oauth/access_token";

    /* renamed from: c */
    public static final String f115903c = "http://api.t.sina.com.cn/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115902b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115903c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115901a;
    }
}
