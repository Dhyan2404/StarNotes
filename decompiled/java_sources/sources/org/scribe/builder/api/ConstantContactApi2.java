package org.scribe.builder.api;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.scribe.exceptions.OAuthException;
import org.scribe.extractors.AccessTokenExtractor;
import org.scribe.model.OAuthConfig;
import org.scribe.model.Token;
import org.scribe.model.Verb;
import org.scribe.utils.OAuthEncoder;
import org.scribe.utils.Preconditions;

/* loaded from: classes16.dex */
public class ConstantContactApi2 extends DefaultApi20 {

    /* renamed from: a */
    public static final String f115848a = "https://oauth2.constantcontact.com/oauth2/oauth/siteowner/authorize?client_id=%s&response_type=code&redirect_uri=%s";

    /* renamed from: org.scribe.builder.api.ConstantContactApi2$a */
    /* loaded from: classes16.dex */
    public class C20457a implements AccessTokenExtractor {
        public C20457a() {
        }

        @Override // org.scribe.extractors.AccessTokenExtractor
        public Token extract(String str) {
            Preconditions.checkEmptyString(str, "Response body is incorrect. Can't extract a token from an empty string");
            Matcher matcher = Pattern.compile("\"access_token\"\\s*:\\s*\"([^&\"]+)\"").matcher(str);
            if (matcher.find()) {
                return new Token(OAuthEncoder.decode(matcher.group(1)), "", str);
            }
            throw new OAuthException("Response body is incorrect. Can't extract a token from this: '" + str + CloudStorageConstants.SINGLE_QUOTES, null);
        }
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAccessTokenEndpoint() {
        return "https://oauth2.constantcontact.com/oauth2/oauth/token?grant_type=authorization_code";
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public AccessTokenExtractor getAccessTokenExtractor() {
        return new C20457a();
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public Verb getAccessTokenVerb() {
        return Verb.POST;
    }

    @Override // org.scribe.builder.api.DefaultApi20
    public String getAuthorizationUrl(OAuthConfig oAuthConfig) {
        return String.format(f115848a, oAuthConfig.getApiKey(), OAuthEncoder.encode(oAuthConfig.getCallback()));
    }
}
