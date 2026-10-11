package org.scribe.builder.api;

import org.scribe.model.Token;
import org.scribe.model.Verb;

/* loaded from: classes16.dex */
public class FreelancerApi extends DefaultApi10a {

    /* renamed from: a */
    public static final String f115856a = "http://www.freelancer.com/users/api-token/auth.php?oauth_token=%s";

    /* loaded from: classes16.dex */
    public static class Sandbox extends FreelancerApi {

        /* renamed from: b */
        public static final String f115857b = "http://www.sandbox.freelancer.com/users/api-token/auth.php";

        @Override // org.scribe.builder.api.FreelancerApi, org.scribe.builder.api.DefaultApi10a
        public String getAccessTokenEndpoint() {
            return "http://api.sandbox.freelancer.com/RequestAccessToken/requestAccessToken.xml?";
        }

        @Override // org.scribe.builder.api.FreelancerApi, org.scribe.builder.api.DefaultApi10a
        public String getAuthorizationUrl(Token token) {
            return String.format("http://www.sandbox.freelancer.com/users/api-token/auth.php?oauth_token=%s", token.getToken());
        }

        @Override // org.scribe.builder.api.FreelancerApi, org.scribe.builder.api.DefaultApi10a
        public String getRequestTokenEndpoint() {
            return "http://api.sandbox.freelancer.com/RequestRequestToken/requestRequestToken.xml";
        }
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return "http://api.freelancer.com/RequestAccessToken/requestAccessToken.xml?";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getAccessTokenVerb() {
        return Verb.GET;
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(f115856a, token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return "http://api.freelancer.com/RequestRequestToken/requestRequestToken.xml";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public Verb getRequestTokenVerb() {
        return Verb.GET;
    }
}
