package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class AWeberApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115844a = "https://auth.aweber.com/1.0/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115845b = "https://auth.aweber.com/1.0/oauth/request_token";

    /* renamed from: c */
    public static final String f115846c = "https://auth.aweber.com/1.0/oauth/access_token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115846c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115844a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115845b;
    }
}
