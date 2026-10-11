package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class Px500Api extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115891a = "https://api.500px.com/v1/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://api.500px.com/v1/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115891a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://api.500px.com/v1/oauth/request_token";
    }
}
