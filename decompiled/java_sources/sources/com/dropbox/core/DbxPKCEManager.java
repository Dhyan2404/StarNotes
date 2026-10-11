package com.dropbox.core;

import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.util.LangUtil;
import com.dropbox.core.util.StringUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.HashMap;
import org.apache.commons.codec.digest.MessageDigestAlgorithms;
import org.scribe.model.OAuthConstants;

/* loaded from: classes4.dex */
public class DbxPKCEManager {
    public static final String CODE_CHALLENGE_METHODS = "S256";
    public static final int CODE_VERIFIER_SIZE = 128;

    /* renamed from: c */
    public static final SecureRandom f16390c = new SecureRandom();

    /* renamed from: d */
    public static final String f16391d = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-._~";

    /* renamed from: a */
    public String f16392a;

    /* renamed from: b */
    public String f16393b;

    /* renamed from: com.dropbox.core.DbxPKCEManager$a */
    /* loaded from: classes4.dex */
    public class C2254a extends DbxRequestUtil.ResponseHandler<DbxAuthFinish> {
        public C2254a() {
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxAuthFinish handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return (DbxAuthFinish) DbxRequestUtil.readJsonFromResponse(DbxAuthFinish.Reader, response);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    public DbxPKCEManager() {
        String m9964b = m9964b();
        this.f16392a = m9964b;
        this.f16393b = m9963a(m9964b);
    }

    /* renamed from: a */
    public static String m9963a(String str) {
        try {
            return StringUtil.urlSafeBase64Encode(MessageDigest.getInstance(MessageDigestAlgorithms.SHA_256).digest(str.getBytes("US-ASCII"))).replaceAll("=+$", "");
        } catch (UnsupportedEncodingException e) {
            throw LangUtil.mkAssert("Impossible", e);
        } catch (NoSuchAlgorithmException e2) {
            throw LangUtil.mkAssert("Impossible", e2);
        }
    }

    /* renamed from: b */
    public String m9964b() {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 128; i++) {
            sb.append(f16391d.charAt(f16390c.nextInt(66)));
        }
        return sb.toString();
    }

    public String getCodeChallenge() {
        return this.f16393b;
    }

    public String getCodeVerifier() {
        return this.f16392a;
    }

    public DbxAuthFinish makeTokenRequest(DbxRequestConfig dbxRequestConfig, String str, String str2, String str3, DbxHost dbxHost) throws DbxException {
        HashMap hashMap = new HashMap();
        hashMap.put("grant_type", CloudStorageConstants.AUTHORIZATION_GRANT_TYPE);
        hashMap.put("code", str);
        hashMap.put("locale", dbxRequestConfig.getUserLocale());
        hashMap.put(OAuthConstants.CLIENT_ID, str2);
        hashMap.put("code_verifier", this.f16392a);
        if (str3 != null) {
            hashMap.put(OAuthConstants.REDIRECT_URI, str3);
        }
        return (DbxAuthFinish) DbxRequestUtil.doPostNoAuth(dbxRequestConfig, DbxRawClientV2.USER_AGENT_ID, dbxHost.getApi(), "oauth2/token", DbxRequestUtil.toParamsArray(hashMap), null, new C2254a());
    }

    public DbxPKCEManager(String str) {
        this.f16392a = str;
        this.f16393b = m9963a(str);
    }
}
