package org.scribe.builder.api;

import org.scribe.extractors.AccessTokenExtractor;
import org.scribe.extractors.JsonTokenExtractor;
import org.scribe.model.OAuthConfig;
import org.scribe.utils.OAuthEncoder;

/* loaded from: classes16.dex */
public class RenrenApi extends DefaultApi20 {

    /* renamed from: a */
    public static final String f115895a = "https://graph.renren.com/oauth/authorize?client_id=%s&redirect_uri=%s&response_type=code";

    /* renamed from: b */
    public static final String f115896b = "https://graph.renren.com/oauth/authorize?client_id=%s&redirect_uri=%s&response_type=code&scope=%s";

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAccessTokenEndpoint() {
        return "https://graph.renren.com/oauth/token?grant_type=authorization_code";
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public AccessTokenExtractor getAccessTokenExtractor() {
        return new JsonTokenExtractor();
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAuthorizationUrl(OAuthConfig oAuthConfig) {
        return oAuthConfig.hasScope() ? String.format(f115896b, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()), OAuthEncoder.encode(oAuthConfig.getScope())) : String.format(f115895a, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()));
    }
}
