package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class PlurkApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115887a = "http://www.plurk.com/OAuth/request_token";

    /* renamed from: b */
    public static final String f115888b = "http://www.plurk.com/OAuth/authorize?oauth_token=%s";

    /* renamed from: c */
    public static final String f115889c = "http://www.plurk.com/OAuth/access_token";

    /* loaded from: classes16.dex */
    public static class Mobile extends PlurkApi {

        /* renamed from: d */
        public static final String f115890d = "http://www.plurk.com/m/authorize?oauth_token=%s";

        @Override // org.scribe.builder.api.PlurkApi, org.scribe.builder.api.DefaultApi10a
        public String getAuthorizationUrl(Token token) {
            return String.format(f115890d, token.getToken());
        }
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115889c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115888b, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115887a;
    }
}
