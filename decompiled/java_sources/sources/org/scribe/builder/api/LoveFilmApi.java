package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class LoveFilmApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115872a = "http://openapi.lovefilm.com/oauth/request_token";

    /* renamed from: b */
    public static final String f115873b = "http://openapi.lovefilm.com/oauth/access_token";

    /* renamed from: c */
    public static final String f115874c = "https://www.lovefilm.com/activate?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115873b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115874c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115872a;
    }
}
