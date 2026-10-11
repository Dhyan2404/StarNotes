package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class NetProspexApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115880a = "https://api.netprospex.com/1.0/oauth/request-token";

    /* renamed from: b */
    public static final String f115881b = "https://api.netprospex.com/1.0/oauth/access-token";

    /* renamed from: c */
    public static final String f115882c = "https://api.netprospex.com/1.0/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115881b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115882c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115880a;
    }
}
