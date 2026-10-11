package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class SkyrockApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115906a = "https://api.skyrock.com/v2";

    /* renamed from: b */
    public static final String f115907b = "/oauth/initiate";

    /* renamed from: c */
    public static final String f115908c = "/oauth/authorize?oauth_token=%s";

    /* renamed from: d */
    public static final String f115909d = "/oauth/token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://api.skyrock.com/v2/oauth/token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format("https://api.skyrock.com/v2/oauth/authorize?oauth_token=%s", token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://api.skyrock.com/v2/oauth/initiate";
    }
}
