package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class SohuWeiboApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115910a = "http://api.t.sohu.com/oauth/request_token";

    /* renamed from: b */
    public static final String f115911b = "http://api.t.sohu.com/oauth/access_token";

    /* renamed from: c */
    public static final String f115912c = "http://api.t.sohu.com/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115911b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115912c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115910a;
    }
}
