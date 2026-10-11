package com.google.api.client.auth.oauth;

import com.google.api.client.http.GenericUrl;
import com.google.api.client.util.Beta;
import com.google.api.client.util.Key;
import org.scribe.model.OAuthConstants;

@Beta
/* loaded from: classes6.dex */
public class OAuthCallbackUrl extends GenericUrl {

    @Key(OAuthConstants.TOKEN)
    public String token;

    @Key(OAuthConstants.VERIFIER)
    public String verifier;

    public OAuthCallbackUrl(String str) {
        super(str);
    }
}
