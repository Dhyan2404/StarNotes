package org.scribe.builder.api;

import org.scribe.model.OAuthConfig;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class FacebookApi extends DefaultApi20 {

    /* renamed from: a */
    public static final String f115852a = "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s";

    /* renamed from: b */
    public static final String f115853b = "https://www.facebook.com/dialog/oauth?client_id=%s&redirect_uri=%s&scope=%s";

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAccessTokenEndpoint() {
        return "https://graph.facebook.com/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAuthorizationUrl(OAuthConfig oAuthConfig) {
        Preconditions.checkValidUrl(oAuthConfig.getCallback(), "Must provide a valid url as callback. Facebook does not support OOB");
        return oAuthConfig.hasScope() ? String.format(f115853b, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()), OAuthEncoder.encode(oAuthConfig.getScope())) : String.format(f115852a, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()));
    }
}
