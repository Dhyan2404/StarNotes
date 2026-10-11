package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class TwitterApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115917a = "https://api.twitter.com/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115918b = "api.twitter.com/oauth/request_token";

    /* renamed from: c */
    public static final String f115919c = "api.twitter.com/oauth/access_token";

    /* loaded from: classes16.dex */
    public static class Authenticate extends TwitterApi {

        /* renamed from: d */
        public static final String f115920d = "https://api.twitter.com/oauth/authenticate?oauth_token=%s";

        @Override // org.scribe.builder.api.TwitterApi, org.scribe.builder.api.DefaultApi10a
        public String getAuthorizationUrl(Token token) {
            return String.format(f115920d, token.getToken());
        }
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "https://api.twitter.com/oauth/access_token";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115917a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "https://api.twitter.com/oauth/request_token";
    }
}
