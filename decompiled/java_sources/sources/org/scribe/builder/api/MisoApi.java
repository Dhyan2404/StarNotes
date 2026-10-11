package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class MisoApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115877a = "http://gomiso.com/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115878b = "http://gomiso.com/oauth/request_token";

    /* renamed from: c */
    public static final String f115879c = "http://gomiso.com/oauth/access_token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115879c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115877a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115878b;
    }
}
