package org.scribe.builder.api;

import org.scribe.model.Token;
import org.scribe.model.Verb;

/* loaded from: classes16.dex */
public class KaixinApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115862a = "http://api.kaixin001.com/oauth/request_token";

    /* renamed from: b */
    public static final String f115863b = "http://api.kaixin001.com/oauth/access_token";

    /* renamed from: c */
    public static final String f115864c = "http://api.kaixin001.com/oauth/authorize?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115863b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getAccessTokenVerb() {
        return Verb.GET;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115864c, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115862a;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getRequestTokenVerb() {
        return Verb.GET;
    }
}
