package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class GetGlueApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115858a = "http://getglue.com/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115859b = "https://api.getglue.com/oauth/request_token";

    /* renamed from: c */
    public static final String f115860c = "https://api.getglue.com/oauth/access_token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115860c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115858a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115859b;
    }
}
