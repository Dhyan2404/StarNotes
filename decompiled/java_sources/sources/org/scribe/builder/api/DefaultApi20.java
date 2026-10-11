package org.scribe.builder.api;

import org.scribe.extractors.AccessTokenExtractor;
import org.scribe.extractors.TokenExtractor20Impl;
import org.scribe.model.OAuthConfig;
import org.scribe.model.Verb;
import org.scribe.oauth.OAuth20ServiceImpl;
import org.scribe.oauth.OAuthService;

/* loaded from: classes16.dex */
public abstract class DefaultApi20 implements Api {
    @Override // org.scribe.builder.api.Api
    public OAuthService createService(OAuthConfig oAuthConfig) {
        return new OAuth20ServiceImpl(this, oAuthConfig);
    }

    public abstract String getAccessTokenEndpoint();

    public AccessTokenExtractor getAccessTokenExtractor() {
        return new TokenExtractor20Impl();
    }

    public Verb getAccessTokenVerb() {
        return Verb.GET;
    }

    public abstract String getAuthorizationUrl(OAuthConfig oAuthConfig);
}
