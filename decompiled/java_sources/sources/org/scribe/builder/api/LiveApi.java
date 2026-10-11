package org.scribe.builder.api;

import org.scribe.extractors.AccessTokenExtractor;
import org.scribe.extractors.JsonTokenExtractor;
import org.scribe.model.OAuthConfig;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class LiveApi extends DefaultApi20 {

    /* renamed from: a */
    public static final String f115870a = "https://login.live.com/oauth20_authorize.srf?client_id=%s&redirect_uri=%s&response_type=code";

    /* renamed from: b */
    public static final String f115871b = "https://login.live.com/oauth20_authorize.srf?client_id=%s&redirect_uri=%s&response_type=code&scope=%s";

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAccessTokenEndpoint() {
        return "https://login.live.com/oauth20_token.srf?grant_type=authorization_code";
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public AccessTokenExtractor getAccessTokenExtractor() {
        return new JsonTokenExtractor();
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAuthorizationUrl(OAuthConfig oAuthConfig) {
        Preconditions.checkValidUrl(oAuthConfig.getCallback(), "Must provide a valid url as callback. Live does not support OOB");
        return oAuthConfig.hasScope() ? String.format(f115871b, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()), OAuthEncoder.encode(oAuthConfig.getScope())) : String.format(f115870a, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()));
    }
}
