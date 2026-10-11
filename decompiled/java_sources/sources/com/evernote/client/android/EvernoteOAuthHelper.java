package com.evernote.client.android;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.evernote.client.android.BootstrapManager;
import com.evernote.client.android.helper.Cat;
import com.evernote.client.android.helper.EvernotePreconditions;
import com.evernote.edam.userstore.BootstrapInfo;
import com.evernote.edam.userstore.BootstrapProfile;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.scribe.builder.ServiceBuilder;
import org.scribe.builder.api.Api;
import org.scribe.builder.api.EvernoteApi;
import org.scribe.exceptions.OAuthException;
import org.scribe.model.OAuthConstants;
import org.scribe.model.Token;
import org.scribe.model.Verifier;
import org.scribe.oauth.OAuthService;
import org.scribe.utils.OAuthEncoder;

/* loaded from: classes4.dex */
public class EvernoteOAuthHelper {
    protected static final String CALLBACK_SCHEME = "en-oauth";
    public static final String CHINA_PROFILE_NAME = "Evernote-China";
    protected BootstrapProfile mBootstrapProfile;
    protected final String mConsumerKey;
    protected final String mConsumerSecret;
    protected final Locale mLocale;
    protected OAuthService mOAuthService;
    protected Token mRequestToken;
    protected final EvernoteSession mSession;
    protected final boolean mSupportAppLinkedNotebooks;
    protected static final Cat CAT = new Cat("OAuthHelper");
    protected static final Pattern NOTE_STORE_REGEX = Pattern.compile("edam_noteStoreUrl=([^&]+)");
    protected static final Pattern WEB_API_REGEX = Pattern.compile("edam_webApiUrlPrefix=([^&]+)");
    protected static final Pattern USER_ID_REGEX = Pattern.compile("edam_userId=([^&]+)");

    public EvernoteOAuthHelper(EvernoteSession evernoteSession, String str, String str2, boolean z) {
        this(evernoteSession, str, str2, z, Locale.getDefault());
    }

    /* renamed from: a */
    public static String m16921a(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() >= 1) {
            return OAuthEncoder.decode(matcher.group(1));
        }
        throw new OAuthException("Response body is incorrect. Can't extract token and secret from this: " + str);
    }

    public static OAuthService createOAuthService(BootstrapProfile bootstrapProfile, String str, String str2) {
        Class<? extends Api> cls;
        String serviceHost = bootstrapProfile.getSettings().getServiceHost();
        if (serviceHost == null) {
            return null;
        }
        String uri = new Uri.Builder().authority(serviceHost).scheme("https").build().toString();
        uri.hashCode();
        char c = 65535;
        switch (uri.hashCode()) {
            case -327803799:
                if (uri.equals(EvernoteSession.HOST_PRODUCTION)) {
                    c = 0;
                    break;
                }
                break;
            case -272852551:
                if (uri.equals(EvernoteSession.HOST_SANDBOX)) {
                    c = 1;
                    break;
                }
                break;
            case 204605754:
                if (uri.equals(EvernoteSession.HOST_CHINA)) {
                    c = 2;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                cls = EvernoteApi.class;
                break;
            case 1:
                cls = EvernoteApi.Sandbox.class;
                break;
            case 2:
                cls = EvernoteApi.Yinxiang.class;
                break;
            default:
                throw new IllegalArgumentException("Unsupported Evernote host: " + serviceHost);
        }
        return new ServiceBuilder().provider(cls).apiKey(str).apiSecret(str2).callback("en-oauth://callback").build();
    }

    public String createAuthorizationUrl(Token token) {
        String authorizationUrl = this.mOAuthService.getAuthorizationUrl(token);
        if (!this.mSupportAppLinkedNotebooks) {
            return authorizationUrl;
        }
        return authorizationUrl + "&supportLinkedSandbox=true";
    }

    public Token createRequestToken() {
        Token requestToken = this.mOAuthService.getRequestToken();
        this.mRequestToken = requestToken;
        return requestToken;
    }

    public List<BootstrapProfile> fetchBootstrapProfiles() throws Exception {
        BootstrapInfo m16916a;
        BootstrapManager.C4457b m16912a = new BootstrapManager(this.mSession.getEvernoteService(), this.mSession, this.mLocale).m16912a();
        if (m16912a == null || (m16916a = m16912a.m16916a()) == null) {
            return null;
        }
        return m16916a.getProfiles();
    }

    public boolean finishAuthorization(Activity activity, int i, Intent intent) {
        if (i == -1 && intent != null) {
            String stringExtra = intent.getStringExtra(EvernoteUtil.EXTRA_OAUTH_CALLBACK_URL);
            if (TextUtils.isEmpty(stringExtra)) {
                return false;
            }
            Uri parse = Uri.parse(stringExtra);
            String queryParameter = parse.getQueryParameter(OAuthConstants.VERIFIER);
            String queryParameter2 = parse.getQueryParameter("sandbox_lnb");
            boolean z = !TextUtils.isEmpty(queryParameter2) && "true".equalsIgnoreCase(queryParameter2);
            if (TextUtils.isEmpty(queryParameter)) {
                CAT.m17077i("User did not authorize access");
                return false;
            }
            try {
                Token accessToken = this.mOAuthService.getAccessToken(this.mRequestToken, new Verifier(queryParameter));
                String rawResponse = accessToken.getRawResponse();
                AuthenticationResult authenticationResult = new AuthenticationResult(accessToken.getToken(), m16921a(rawResponse, NOTE_STORE_REGEX), m16921a(rawResponse, WEB_API_REGEX), this.mBootstrapProfile.getSettings().getServiceHost(), Integer.parseInt(m16921a(rawResponse, USER_ID_REGEX)), z);
                authenticationResult.m16911e();
                this.mSession.setAuthenticationResult(authenticationResult);
                return true;
            } catch (Exception e) {
                CAT.m17074e("Failed to obtain OAuth access token", e);
            }
        }
        return false;
    }

    public BootstrapProfile getDefaultBootstrapProfile(List<BootstrapProfile> list) {
        EvernotePreconditions.checkCollectionNotEmpty(list, "bootstrapProfiles");
        return list.get(0);
    }

    public void initialize() throws Exception {
        if (this.mBootstrapProfile == null) {
            setBootstrapProfile(getDefaultBootstrapProfile(fetchBootstrapProfiles()));
        }
        this.mOAuthService = createOAuthService(this.mBootstrapProfile, this.mConsumerKey, this.mConsumerSecret);
    }

    public void setBootstrapProfile(BootstrapProfile bootstrapProfile) {
        this.mBootstrapProfile = (BootstrapProfile) EvernotePreconditions.checkNotNull(bootstrapProfile);
    }

    public Intent startAuthorization(Activity activity) {
        try {
            initialize();
            createRequestToken();
            return EvernoteUtil.createAuthorizationIntent(activity, createAuthorizationUrl(this.mRequestToken), this.mSession.m16930i());
        } catch (Exception e) {
            CAT.m17075e(e);
            return null;
        }
    }

    public EvernoteOAuthHelper(EvernoteSession evernoteSession, String str, String str2, boolean z, Locale locale) {
        this.mSession = (EvernoteSession) EvernotePreconditions.checkNotNull(evernoteSession);
        this.mConsumerKey = (String) EvernotePreconditions.checkNotEmpty(str);
        this.mConsumerSecret = (String) EvernotePreconditions.checkNotEmpty(str2);
        this.mSupportAppLinkedNotebooks = z;
        this.mLocale = (Locale) EvernotePreconditions.checkNotNull(locale);
    }
}
