package com.evernote.auth;

import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes4.dex */
public class EvernoteAuth {

    /* renamed from: f */
    public static final String f20766f = "UTF-8";

    /* renamed from: g */
    public static final String f20767g = "/edam/user";

    /* renamed from: h */
    public static final Pattern f20768h = Pattern.compile("oauth_token=([^&]+)");

    /* renamed from: i */
    public static final Pattern f20769i = Pattern.compile("edam_noteStoreUrl=([^&]+)");

    /* renamed from: j */
    public static final Pattern f20770j = Pattern.compile("edam_webApiUrlPrefix=([^&]+)");

    /* renamed from: k */
    public static final Pattern f20771k = Pattern.compile("edam_userId=([^&]+)");

    /* renamed from: a */
    public EvernoteService f20772a;

    /* renamed from: b */
    public String f20773b;

    /* renamed from: c */
    public String f20774c;

    /* renamed from: d */
    public String f20775d;

    /* renamed from: e */
    public int f20776e;

    public EvernoteAuth(EvernoteService evernoteService, String str) {
        if (evernoteService != null && str != null) {
            this.f20772a = evernoteService;
            this.f20773b = str;
            return;
        }
        throw new IllegalArgumentException("EvernoteService and token must not be null.");
    }

    /* renamed from: a */
    public static String m16902a(String str, Pattern pattern) {
        Matcher matcher = pattern.matcher(str);
        if (matcher.find() && matcher.groupCount() >= 1 && matcher.group(1) != null) {
            try {
                return URLDecoder.decode(matcher.group(1), "UTF-8");
            } catch (UnsupportedEncodingException e) {
                throw new AuthException("Charset not found while decoding string: UTF-8", e);
            }
        }
        throw new AuthException("Response body is incorrect. Can't extract token and secret from this: '" + str + CloudStorageConstants.SINGLE_QUOTES, null);
    }

    /* renamed from: b */
    public static String m16903b(String str) {
        return m16902a(str, f20769i);
    }

    /* renamed from: c */
    public static String m16904c(String str) {
        return m16902a(str, f20768h);
    }

    /* renamed from: d */
    public static String m16905d(String str) {
        return m16902a(str, f20771k);
    }

    /* renamed from: e */
    public static String m16906e(String str) {
        return m16902a(str, f20770j);
    }

    public static EvernoteAuth parseOAuthResponse(EvernoteService evernoteService, String str) {
        if (evernoteService == null || str == null) {
            throw new IllegalArgumentException("EvernoteService and response must not be null.");
        }
        return new EvernoteAuth(evernoteService, m16904c(str), m16903b(str), m16906e(str), Integer.parseInt(m16905d(str)));
    }

    public String getNoteStoreUrl() {
        return this.f20774c;
    }

    public String getToken() {
        return this.f20773b;
    }

    public int getUserId() {
        return this.f20776e;
    }

    public String getUserStoreUrl() {
        return this.f20772a.getEndpointUrl(f20767g);
    }

    public String getWebApiUrlPrefix() {
        return this.f20775d;
    }

    public void setNoteStoreUrl(String str) {
        this.f20774c = str;
    }

    public EvernoteAuth(EvernoteService evernoteService, String str, String str2, String str3, int i) {
        if (evernoteService != null && str != null && str2 != null && str3 != null) {
            this.f20772a = evernoteService;
            this.f20773b = str;
            this.f20774c = str2;
            this.f20775d = str3;
            this.f20776e = i;
            return;
        }
        throw new IllegalArgumentException("EvernoteService, token, noteStoreUrl and webApiUrlPrefix must not be null.");
    }
}
