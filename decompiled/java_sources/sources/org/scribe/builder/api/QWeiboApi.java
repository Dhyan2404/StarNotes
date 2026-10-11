package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class QWeiboApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115892a = "https://open.t.qq.com/cgi-bin/request_token";

    /* renamed from: b */
    public static final String f115893b = "https://open.t.qq.com/cgi-bin/access_token";

    /* renamed from: c */
    public static final String f115894c = "https://open.t.qq.com/cgi-bin/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115893b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115894c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115892a;
    }
}
