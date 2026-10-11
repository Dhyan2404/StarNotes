package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class ConstantContactApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115847a = "https://oauth.constantcontact.com/ws/oauth/confirm_access?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://oauth.constantcontact.com/ws/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115847a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://oauth.constantcontact.com/ws/oauth/request_token";
    }
}
