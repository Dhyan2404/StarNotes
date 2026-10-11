package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class VimeoApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115924a = "http://vimeo.com/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "http://vimeo.com/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115924a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "http://vimeo.com/oauth/request_token";
    }
}
