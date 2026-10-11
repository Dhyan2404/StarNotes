package org.scribe.builder.api;

import com.evernote.client.android.EvernoteSession;
import org.scribe.model.Token;

/* loaded from: classes16.dex */
public class EvernoteApi extends DefaultApi10a {

    /* loaded from: classes16.dex */
    public static class Sandbox extends EvernoteApi {
        @Override // org.scribe.builder.api.EvernoteApi
        public String serviceUrl() {
            return EvernoteSession.HOST_SANDBOX;
        }
    }

    /* loaded from: classes16.dex */
    public static class Yinxiang extends EvernoteApi {
        @Override // org.scribe.builder.api.EvernoteApi
        public String serviceUrl() {
            return EvernoteSession.HOST_CHINA;
        }
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAccessTokenEndpoint() {
        return serviceUrl() + "/oauth";
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getAuthorizationUrl(Token token) {
        return String.format(serviceUrl() + "/OAuth.action?oauth_token=%s", token.getToken());
    }

    @Override // org.scribe.builder.api.DefaultApi10a
    public String getRequestTokenEndpoint() {
        return serviceUrl() + "/oauth";
    }

    public String serviceUrl() {
        return EvernoteSession.HOST_PRODUCTION;
    }
}
