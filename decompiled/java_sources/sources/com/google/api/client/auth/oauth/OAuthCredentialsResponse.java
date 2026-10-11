package com.google.api.client.auth.oauth;

import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;
import org.scribe.model.OAuthConstants;

@Beta
/* loaded from: classes6.dex */
public final class OAuthCredentialsResponse {

    @Key("oauth_callback_confirmed")
    public Boolean callbackConfirmed;

    @Key(OAuthConstants.TOKEN)
    public String token;

    @Key(OAuthConstants.TOKEN_SECRET)
    public String tokenSecret;
}
