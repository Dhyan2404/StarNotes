package org.scribe.oauth;

import org.scribe.builder.api.DefaultApi20;
import org.scribe.model.OAuthConfig;
import org.scribe.model.OAuthConstants;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Token;
import org.scribe.model.Verifier;

/* loaded from: classes16.dex */
public class OAuth20ServiceImpl implements OAuthService {

    /* renamed from: c */
    public static final String f115984c = "2.0";

    /* renamed from: a */
    public final DefaultApi20 f115985a;

    /* renamed from: b */
    public final OAuthConfig f115986b;

    public OAuth20ServiceImpl(DefaultApi20 defaultApi20, OAuthConfig oAuthConfig) {
        this.f115985a = defaultApi20;
        this.f115986b = oAuthConfig;
    }

    @Override // org.scribe.oauth.OAuthService
    public Token getAccessToken(Token token, Verifier verifier) {
        OAuthRequest oAuthRequest = new OAuthRequest(this.f115985a.getAccessTokenVerb(), this.f115985a.getAccessTokenEndpoint());
        oAuthRequest.addQuerystringParameter(OAuthConstants.CLIENT_ID, this.f115986b.getApiKey());
        oAuthRequest.addQuerystringParameter(OAuthConstants.CLIENT_SECRET, this.f115986b.getApiSecret());
        oAuthRequest.addQuerystringParameter("code", verifier.getValue());
        oAuthRequest.addQuerystringParameter(OAuthConstants.REDIRECT_URI, this.f115986b.getCallback());
        if (this.f115986b.hasScope()) {
            oAuthRequest.addQuerystringParameter("scope", this.f115986b.getScope());
        }
        return this.f115985a.getAccessTokenExtractor().extract(oAuthRequest.send().getBody());
    }

    @Override // org.scribe.oauth.OAuthService
    public String getAuthorizationUrl(Token token) {
        return this.f115985a.getAuthorizationUrl(this.f115986b);
    }

    @Override // org.scribe.oauth.OAuthService
    public Token getRequestToken() {
        throw new UnsupportedOperationException("Unsupported operation, please use 'getAuthorizationUrl' and redirect your users there");
    }

    @Override // org.scribe.oauth.OAuthService
    public String getVersion() {
        return f115984c;
    }

    @Override // org.scribe.oauth.OAuthService
    public void signRequest(Token token, OAuthRequest oAuthRequest) {
        oAuthRequest.addQuerystringParameter("access_token", token.getToken());
    }
}
