package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class TrelloApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115913a = "https://trello.com/1/OAuthAuthorizeToken?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://trello.com/1/OAuthGetAccessToken";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115913a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://trello.com/1/OAuthGetRequestToken";
    }
}
