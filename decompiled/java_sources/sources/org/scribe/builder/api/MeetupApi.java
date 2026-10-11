package org.scribe.builder.api;

import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class MeetupApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115875a = "http://www.meetup.com/authenticate?oauth_token=%s";

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "http://api.meetup.com/oauth/access/";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115875a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "http://api.meetup.com/oauth/request/";
    }
}
