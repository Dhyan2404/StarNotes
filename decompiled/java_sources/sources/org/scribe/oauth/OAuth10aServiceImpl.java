package org.scribe.oauth;

import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.scribe.builder.api.DefaultApi10a;
import org.scribe.model.OAuthConfig;
import org.scribe.model.OAuthConstants;
import org.scribe.model.OAuthRequest;
import org.scribe.model.Request;
import org.scribe.model.RequestTuner;
import org.scribe.model.Response;
import org.scribe.model.SignatureType;
import org.scribe.model.Token;
import org.scribe.model.Verifier;
import org.scribe.services.Base64Encoder;
import org.scribe.utils.MapUtils;

/* loaded from: classes16.dex */
public class OAuth10aServiceImpl implements OAuthService {

    /* renamed from: c */
    public static final String f115978c = "1.0";

    /* renamed from: a */
    public OAuthConfig f115979a;

    /* renamed from: b */
    public DefaultApi10a f115980b;

    /* renamed from: org.scribe.oauth.OAuth10aServiceImpl$a */
    /* loaded from: classes16.dex */
    public static /* synthetic */ class C20459a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f115981a;

        static {
            int[] iArr = new int[SignatureType.values().length];
            f115981a = iArr;
            try {
                iArr[SignatureType.Header.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f115981a[SignatureType.QueryString.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    /* renamed from: org.scribe.oauth.OAuth10aServiceImpl$b */
    /* loaded from: classes16.dex */
    public static class C20460b extends RequestTuner {

        /* renamed from: a */
        public final int f115982a;

        /* renamed from: b */
        public final TimeUnit f115983b;

        public C20460b(int i, TimeUnit timeUnit) {
            this.f115982a = i;
            this.f115983b = timeUnit;
        }

        @Override // org.scribe.model.RequestTuner
        public void tune(Request request) {
            request.setReadTimeout(this.f115982a, this.f115983b);
        }
    }

    public OAuth10aServiceImpl(DefaultApi10a defaultApi10a, OAuthConfig oAuthConfig) {
        this.f115980b = defaultApi10a;
        this.f115979a = oAuthConfig;
    }

    /* renamed from: a */
    public final void m71883a(OAuthRequest oAuthRequest, Token token) {
        oAuthRequest.addOAuthParameter(OAuthConstants.TIMESTAMP, this.f115980b.getTimestampService().getTimestampInSeconds());
        oAuthRequest.addOAuthParameter(OAuthConstants.NONCE, this.f115980b.getTimestampService().getNonce());
        oAuthRequest.addOAuthParameter(OAuthConstants.CONSUMER_KEY, this.f115979a.getApiKey());
        oAuthRequest.addOAuthParameter(OAuthConstants.SIGN_METHOD, this.f115980b.getSignatureService().getSignatureMethod());
        oAuthRequest.addOAuthParameter(OAuthConstants.VERSION, getVersion());
        if (this.f115979a.hasScope()) {
            oAuthRequest.addOAuthParameter("scope", this.f115979a.getScope());
        }
        oAuthRequest.addOAuthParameter(OAuthConstants.SIGNATURE, m71885c(oAuthRequest, token));
        this.f115979a.log("appended additional OAuth parameters: " + MapUtils.toString(oAuthRequest.getOauthParameters()));
    }

    /* renamed from: b */
    public final void m71884b(OAuthRequest oAuthRequest) {
        int i = C20459a.f115981a[this.f115979a.getSignatureType().ordinal()];
        if (i == 1) {
            this.f115979a.log("using Http Header signature");
            oAuthRequest.addHeader("Authorization", this.f115980b.getHeaderExtractor().extract(oAuthRequest));
        } else {
            if (i != 2) {
                return;
            }
            this.f115979a.log("using Querystring signature");
            for (Map.Entry<String, String> entry : oAuthRequest.getOauthParameters().entrySet()) {
                oAuthRequest.addQuerystringParameter(entry.getKey(), entry.getValue());
            }
        }
    }

    /* renamed from: c */
    public final String m71885c(OAuthRequest oAuthRequest, Token token) {
        this.f115979a.log("generating signature...");
        this.f115979a.log("using base64 encoder: " + Base64Encoder.type());
        String extract = this.f115980b.getBaseStringExtractor().extract(oAuthRequest);
        String signature = this.f115980b.getSignatureService().getSignature(extract, this.f115979a.getApiSecret(), token.getSecret());
        this.f115979a.log("base string is: " + extract);
        this.f115979a.log("signature is: " + signature);
        return signature;
    }

    public Token getAccessToken(Token token, Verifier verifier, int i, TimeUnit timeUnit) {
        return getAccessToken(token, verifier, new C20460b(i, timeUnit));
    }

    @Override // org.scribe.oauth.OAuthService
    public String getAuthorizationUrl(Token token) {
        return this.f115980b.getAuthorizationUrl(token);
    }

    public Token getRequestToken(int i, TimeUnit timeUnit) {
        return getRequestToken(new C20460b(i, timeUnit));
    }

    @Override // org.scribe.oauth.OAuthService
    public String getVersion() {
        return "1.0";
    }

    @Override // org.scribe.oauth.OAuthService
    public void signRequest(Token token, OAuthRequest oAuthRequest) {
        this.f115979a.log("signing request: " + oAuthRequest.getCompleteUrl());
        if (!token.isEmpty()) {
            oAuthRequest.addOAuthParameter(OAuthConstants.TOKEN, token.getToken());
        }
        this.f115979a.log("setting token to: " + token);
        m71883a(oAuthRequest, token);
        m71884b(oAuthRequest);
    }

    @Override // org.scribe.oauth.OAuthService
    public Token getAccessToken(Token token, Verifier verifier) {
        return getAccessToken(token, verifier, 2, TimeUnit.SECONDS);
    }

    @Override // org.scribe.oauth.OAuthService
    public Token getRequestToken() {
        return getRequestToken(2, TimeUnit.SECONDS);
    }

    public Token getAccessToken(Token token, Verifier verifier, RequestTuner requestTuner) {
        this.f115979a.log("obtaining access token from " + this.f115980b.getAccessTokenEndpoint());
        OAuthRequest oAuthRequest = new OAuthRequest(this.f115980b.getAccessTokenVerb(), this.f115980b.getAccessTokenEndpoint());
        oAuthRequest.addOAuthParameter(OAuthConstants.TOKEN, token.getToken());
        oAuthRequest.addOAuthParameter(OAuthConstants.VERIFIER, verifier.getValue());
        this.f115979a.log("setting token to: " + token + " and verifier to: " + verifier);
        m71883a(oAuthRequest, token);
        m71884b(oAuthRequest);
        this.f115979a.log("sending request...");
        Response send = oAuthRequest.send(requestTuner);
        String body = send.getBody();
        this.f115979a.log("response status code: " + send.getCode());
        this.f115979a.log("response body: " + body);
        return this.f115980b.getAccessTokenExtractor().extract(body);
    }

    public Token getRequestToken(RequestTuner requestTuner) {
        this.f115979a.log("obtaining request token from " + this.f115980b.getRequestTokenEndpoint());
        OAuthRequest oAuthRequest = new OAuthRequest(this.f115980b.getRequestTokenVerb(), this.f115980b.getRequestTokenEndpoint());
        this.f115979a.log("setting oauth_callback to " + this.f115979a.getCallback());
        oAuthRequest.addOAuthParameter(OAuthConstants.CALLBACK, this.f115979a.getCallback());
        m71883a(oAuthRequest, OAuthConstants.EMPTY_TOKEN);
        m71884b(oAuthRequest);
        this.f115979a.log("sending request...");
        Response send = oAuthRequest.send(requestTuner);
        String body = send.getBody();
        this.f115979a.log("response status code: " + send.getCode());
        this.f115979a.log("response body: " + body);
        return this.f115980b.getRequestTokenExtractor().extract(body);
    }
}
