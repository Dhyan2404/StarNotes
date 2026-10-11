package org.scribe.builder.api;

import org.scribe.model.Token;
import org.scribe.model.Verb;

/* loaded from: classes16.dex */
public class SapoApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115897a = "https://id.sapo.pt/oauth/authorize?oauth_token=%s";

    /* renamed from: b */
    public static final String f115898b = "https://id.sapo.pt/oauth/access_token";

    /* renamed from: c */
    public static final String f115899c = "https://id.sapo.pt/oauth/request_token";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return f115898b;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getAccessTokenVerb() {
        return Verb.GET;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115897a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return f115899c;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getRequestTokenVerb() {
        return Verb.GET;
    }
}
