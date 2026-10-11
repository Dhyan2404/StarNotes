package com.dropbox.core;

import com.dropbox.core.DbxRequestUtil;
import com.dropbox.core.http.HttpRequestor;
import com.dropbox.core.p006v2.DbxRawClientV2;
import com.dropbox.core.util.StringUtil;
import com.onyx.android.sdk.cloudstorage.constans.CloudStorageConstants;
import java.nio.charset.Charset;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import org.scribe.model.OAuthConstants;

/* loaded from: classes4.dex */
public class DbxWebAuth {
    public static final String ROLE_PERSONAL = "personal";
    public static final String ROLE_WORK = "work";

    /* renamed from: e */
    public static final int f16442e = 16;

    /* renamed from: a */
    public final DbxRequestConfig f16444a;

    /* renamed from: b */
    public final DbxAppInfo f16445b;

    /* renamed from: c */
    public final Request f16446c;

    /* renamed from: d */
    public static final SecureRandom f16441d = new SecureRandom();

    /* renamed from: f */
    public static final int f16443f = StringUtil.urlSafeBase64Encode(new byte[16]).length();

    /* loaded from: classes4.dex */
    public static final class BadRequestException extends Exception {
        private static final long serialVersionUID = 0;

        public BadRequestException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static final class BadStateException extends Exception {
        private static final long serialVersionUID = 0;

        public BadStateException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static final class CsrfException extends Exception {
        private static final long serialVersionUID = 0;

        public CsrfException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class Exception extends java.lang.Exception {
        private static final long serialVersionUID = 0;

        public Exception(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static final class NotApprovedException extends Exception {
        private static final long serialVersionUID = 0;

        public NotApprovedException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static final class ProviderException extends Exception {
        private static final long serialVersionUID = 0;

        public ProviderException(String str) {
            super(str);
        }
    }

    /* loaded from: classes4.dex */
    public static final class Request {

        /* renamed from: j */
        public static final Charset f16447j = Charset.forName("UTF-8");

        /* renamed from: k */
        public static final int f16448k = 500;

        /* renamed from: a */
        public final String f16449a;

        /* renamed from: b */
        public final String f16450b;

        /* renamed from: c */
        public final String f16451c;

        /* renamed from: d */
        public final Boolean f16452d;

        /* renamed from: e */
        public final Boolean f16453e;

        /* renamed from: f */
        public final DbxSessionStore f16454f;

        /* renamed from: g */
        public final TokenAccessType f16455g;

        /* renamed from: h */
        public final String f16456h;

        /* renamed from: i */
        public final IncludeGrantedScopes f16457i;

        /* loaded from: classes4.dex */
        public static final class Builder {

            /* renamed from: a */
            public String f16458a;

            /* renamed from: b */
            public String f16459b;

            /* renamed from: c */
            public String f16460c;

            /* renamed from: d */
            public Boolean f16461d;

            /* renamed from: e */
            public Boolean f16462e;

            /* renamed from: f */
            public DbxSessionStore f16463f;

            /* renamed from: g */
            public TokenAccessType f16464g;

            /* renamed from: h */
            public String f16465h;

            /* renamed from: i */
            public IncludeGrantedScopes f16466i;

            public /* synthetic */ Builder(C2258a c2258a) {
                this();
            }

            public Request build() {
                if (this.f16458a == null && this.f16459b != null) {
                    throw new IllegalStateException("Cannot specify a state without a redirect URI.");
                }
                if (this.f16466i == null || this.f16465h != null) {
                    return new Request(this.f16458a, this.f16459b, this.f16460c, this.f16461d, this.f16462e, this.f16463f, this.f16464g, this.f16465h, this.f16466i, null);
                }
                throw new IllegalArgumentException("If you are using includeGrantedScopes, you must ask for specific new scopes");
            }

            public Builder withDisableSignup(Boolean bool) {
                this.f16462e = bool;
                return this;
            }

            public Builder withForceReapprove(Boolean bool) {
                this.f16461d = bool;
                return this;
            }

            public Builder withIncludeGrantedScopes(IncludeGrantedScopes includeGrantedScopes) {
                this.f16466i = includeGrantedScopes;
                return this;
            }

            public Builder withNoRedirect() {
                this.f16458a = null;
                this.f16463f = null;
                return this;
            }

            public Builder withRedirectUri(String str, DbxSessionStore dbxSessionStore) {
                if (str == null) {
                    throw new NullPointerException("redirectUri");
                }
                if (dbxSessionStore == null) {
                    throw new NullPointerException("sessionStore");
                }
                this.f16458a = str;
                this.f16463f = dbxSessionStore;
                return this;
            }

            public Builder withRequireRole(String str) {
                this.f16460c = str;
                return this;
            }

            public Builder withScope(Collection<String> collection) {
                if (collection != null) {
                    this.f16465h = StringUtil.join(collection, " ");
                }
                return this;
            }

            public Builder withState(String str) {
                if (str == null || str.getBytes(Request.f16447j).length + DbxWebAuth.f16443f <= 500) {
                    this.f16459b = str;
                    return this;
                }
                throw new IllegalArgumentException("UTF-8 encoded state cannot be greater than " + (500 - DbxWebAuth.f16443f) + " bytes.");
            }

            public Builder withTokenAccessType(TokenAccessType tokenAccessType) {
                this.f16464g = tokenAccessType;
                return this;
            }

            public /* synthetic */ Builder(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore, TokenAccessType tokenAccessType, String str4, IncludeGrantedScopes includeGrantedScopes, C2258a c2258a) {
                this(str, str2, str3, bool, bool2, dbxSessionStore, tokenAccessType, str4, includeGrantedScopes);
            }

            public Builder() {
                this(null, null, null, null, null, null, null, null, null);
            }

            public Builder(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore, TokenAccessType tokenAccessType, String str4, IncludeGrantedScopes includeGrantedScopes) {
                this.f16458a = str;
                this.f16459b = str2;
                this.f16460c = str3;
                this.f16461d = bool;
                this.f16462e = bool2;
                this.f16463f = dbxSessionStore;
                this.f16464g = tokenAccessType;
                this.f16465h = str4;
                this.f16466i = includeGrantedScopes;
            }
        }

        public /* synthetic */ Request(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore, TokenAccessType tokenAccessType, String str4, IncludeGrantedScopes includeGrantedScopes, C2258a c2258a) {
            this(str, str2, str3, bool, bool2, dbxSessionStore, tokenAccessType, str4, includeGrantedScopes);
        }

        public static Builder newBuilder() {
            return new Builder(null);
        }

        public Builder copy() {
            return new Builder(this.f16449a, this.f16450b, this.f16451c, this.f16452d, this.f16453e, this.f16454f, this.f16455g, this.f16456h, this.f16457i, null);
        }

        public Request(String str, String str2, String str3, Boolean bool, Boolean bool2, DbxSessionStore dbxSessionStore, TokenAccessType tokenAccessType, String str4, IncludeGrantedScopes includeGrantedScopes) {
            this.f16449a = str;
            this.f16450b = str2;
            this.f16451c = str3;
            this.f16452d = bool;
            this.f16453e = bool2;
            this.f16454f = dbxSessionStore;
            this.f16455g = tokenAccessType;
            this.f16456h = str4;
            this.f16457i = includeGrantedScopes;
        }
    }

    /* renamed from: com.dropbox.core.DbxWebAuth$a */
    /* loaded from: classes4.dex */
    public class C2258a extends DbxRequestUtil.ResponseHandler<DbxAuthFinish> {

        /* renamed from: a */
        public final /* synthetic */ String f16467a;

        public C2258a(String str) {
            this.f16467a = str;
        }

        @Override // com.dropbox.core.DbxRequestUtil.ResponseHandler
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public DbxAuthFinish handle(HttpRequestor.Response response) throws DbxException {
            if (response.getStatusCode() == 200) {
                return ((DbxAuthFinish) DbxRequestUtil.readJsonFromResponse(DbxAuthFinish.Reader, response)).m9936b(this.f16467a);
            }
            throw DbxRequestUtil.unexpectedStatus(response);
        }
    }

    @Deprecated
    public DbxWebAuth(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo, String str, DbxSessionStore dbxSessionStore) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxAppInfo != null) {
            this.f16444a = dbxRequestConfig;
            this.f16445b = dbxAppInfo;
            this.f16446c = newRequestBuilder().withRedirectUri(str, dbxSessionStore).build();
            return;
        }
        throw new NullPointerException("appInfo");
    }

    /* renamed from: b */
    public static String m9976b(Request request) {
        byte[] bArr = new byte[16];
        f16441d.nextBytes(bArr);
        String urlSafeBase64Encode = StringUtil.urlSafeBase64Encode(bArr);
        if (urlSafeBase64Encode.length() != f16443f) {
            throw new AssertionError("unexpected CSRF token length: " + urlSafeBase64Encode.length());
        }
        if (request.f16454f != null) {
            request.f16454f.set(urlSafeBase64Encode);
        }
        if (request.f16450b == null) {
            return urlSafeBase64Encode;
        }
        String str = urlSafeBase64Encode + request.f16450b;
        if (str.length() <= 500) {
            return str;
        }
        throw new AssertionError("unexpected combined state length: " + str.length());
    }

    /* renamed from: g */
    public static String m9977g(Map<String, String[]> map, String str) throws BadRequestException {
        String[] strArr = map.get(str);
        if (strArr == null) {
            return null;
        }
        if (strArr.length == 0) {
            throw new IllegalArgumentException("Parameter \"" + str + "\" missing value.");
        }
        if (strArr.length == 1) {
            return strArr[0];
        }
        throw new BadRequestException("multiple occurrences of \"" + str + "\" parameter");
    }

    /* renamed from: h */
    public static String m9978h(String str, DbxSessionStore dbxSessionStore, Map<String, String[]> map) throws BadRequestException, BadStateException, CsrfException, NotApprovedException, ProviderException {
        String str2;
        if (str == null) {
            throw new NullPointerException("redirectUri");
        }
        if (dbxSessionStore == null) {
            throw new NullPointerException("sessionStore");
        }
        if (map == null) {
            throw new NullPointerException("params");
        }
        String m9977g = m9977g(map, "state");
        if (m9977g == null) {
            throw new BadRequestException("Missing required parameter: \"state\".");
        }
        String m9977g2 = m9977g(map, "error");
        String m9977g3 = m9977g(map, "code");
        String m9977g4 = m9977g(map, "error_description");
        if (m9977g3 == null && m9977g2 == null) {
            throw new BadRequestException("Missing both \"code\" and \"error\".");
        }
        if (m9977g3 != null && m9977g2 != null) {
            throw new BadRequestException("Both \"code\" and \"error\" are set.");
        }
        if (m9977g3 != null && m9977g4 != null) {
            throw new BadRequestException("Both \"code\" and \"error_description\" are set.");
        }
        String m9979i = m9979i(m9977g, dbxSessionStore);
        if (m9977g2 == null) {
            return m9979i;
        }
        if (!m9977g2.equals("access_denied")) {
            if (m9977g4 != null) {
                m9977g2 = String.format("%s: %s", m9977g2, m9977g4);
            }
            throw new ProviderException(m9977g2);
        }
        if (m9977g4 == null) {
            str2 = "No additional description from Dropbox";
        } else {
            str2 = "Additional description from Dropbox: " + m9977g4;
        }
        throw new NotApprovedException(str2);
    }

    /* renamed from: i */
    public static String m9979i(String str, DbxSessionStore dbxSessionStore) throws CsrfException, BadStateException {
        String str2 = dbxSessionStore.get();
        if (str2 == null) {
            throw new BadStateException("No CSRF Token loaded from session store.");
        }
        int length = str2.length();
        int i = f16443f;
        if (length < i) {
            throw new BadStateException("Token retrieved from session store is too small: " + str2);
        }
        if (str.length() < i) {
            throw new CsrfException("Token too small: " + str);
        }
        String substring = str.substring(0, i);
        if (StringUtil.secureStringEquals(str2, substring)) {
            String substring2 = str.substring(i, str.length());
            dbxSessionStore.clear();
            if (substring2.isEmpty()) {
                return null;
            }
            return substring2;
        }
        throw new CsrfException("expecting " + StringUtil.m10140jq(str2) + ", got " + StringUtil.m10140jq(substring));
    }

    public static Request.Builder newRequestBuilder() {
        return Request.newBuilder();
    }

    public String authorize(Request request) {
        if (this.f16446c != null) {
            throw new IllegalStateException("Must create this instance using DbxWebAuth(DbxRequestConfig,DbxAppInfo) to call this method.");
        }
        if (this.f16445b.hasSecret()) {
            return m9980c(request);
        }
        throw new IllegalStateException("For native apps, please use DbxPKCEWebAuth");
    }

    /* renamed from: c */
    public final String m9980c(Request request) {
        return m9981d(request, null);
    }

    /* renamed from: d */
    public String m9981d(Request request, Map<String, String> map) {
        HashMap hashMap = new HashMap();
        hashMap.put(OAuthConstants.CLIENT_ID, this.f16445b.getKey());
        hashMap.put("response_type", "code");
        if (request.f16449a != null) {
            hashMap.put(OAuthConstants.REDIRECT_URI, request.f16449a);
            hashMap.put("state", m9976b(request));
        }
        if (request.f16451c != null) {
            hashMap.put("require_role", request.f16451c);
        }
        if (request.f16452d != null) {
            hashMap.put("force_reapprove", Boolean.toString(request.f16452d.booleanValue()).toLowerCase());
        }
        if (request.f16453e != null) {
            hashMap.put("disable_signup", Boolean.toString(request.f16453e.booleanValue()).toLowerCase());
        }
        if (request.f16455g != null) {
            hashMap.put("token_access_type", request.f16455g.toString());
        }
        if (request.f16456h != null) {
            hashMap.put("scope", request.f16456h);
        }
        if (request.f16457i != null) {
            hashMap.put("include_granted_scopes", request.f16457i.toString());
        }
        if (map != null) {
            for (String str : map.keySet()) {
                hashMap.put(str, map.get(str));
            }
        }
        return DbxRequestUtil.buildUrlWithParams(this.f16444a.getUserLocale(), this.f16445b.getHost().getWeb(), "oauth2/authorize", DbxRequestUtil.toParamsArray(hashMap));
    }

    /* renamed from: e */
    public final DbxAuthFinish m9982e(String str) throws DbxException {
        return m9983f(str, null, null);
    }

    /* renamed from: f */
    public DbxAuthFinish m9983f(String str, String str2, String str3) throws DbxException {
        if (str == null) {
            throw new NullPointerException("code");
        }
        if (!this.f16445b.hasSecret()) {
            throw new IllegalStateException("For native apps, please use DbxPKCEWebAuth");
        }
        HashMap hashMap = new HashMap();
        hashMap.put("grant_type", CloudStorageConstants.AUTHORIZATION_GRANT_TYPE);
        hashMap.put("code", str);
        hashMap.put("locale", this.f16444a.getUserLocale());
        if (str2 != null) {
            hashMap.put(OAuthConstants.REDIRECT_URI, str2);
        }
        ArrayList arrayList = new ArrayList();
        DbxRequestUtil.addBasicAuthHeader(arrayList, this.f16445b.getKey(), this.f16445b.getSecret());
        return (DbxAuthFinish) DbxRequestUtil.doPostNoAuth(this.f16444a, DbxRawClientV2.USER_AGENT_ID, this.f16445b.getHost().getApi(), "oauth2/token", DbxRequestUtil.toParamsArray(hashMap), arrayList, new C2258a(str3));
    }

    @Deprecated
    public DbxAuthFinish finish(Map<String, String[]> map) throws DbxException, BadRequestException, BadStateException, CsrfException, NotApprovedException, ProviderException {
        Request request = this.f16446c;
        if (request != null) {
            return finishFromRedirect(request.f16449a, this.f16446c.f16454f, map);
        }
        throw new IllegalStateException("Must use DbxWebAuth.finishFromRedirect(..) instead.");
    }

    public DbxAuthFinish finishFromCode(String str) throws DbxException {
        return m9982e(str);
    }

    public DbxAuthFinish finishFromRedirect(String str, DbxSessionStore dbxSessionStore, Map<String, String[]> map) throws DbxException, BadRequestException, BadStateException, CsrfException, NotApprovedException, ProviderException {
        return m9983f(m9977g(map, "code"), str, m9978h(str, dbxSessionStore, map));
    }

    @Deprecated
    public String start(String str) {
        Request request = this.f16446c;
        if (request != null) {
            return m9980c(request.copy().withState(str).build());
        }
        throw new IllegalStateException("Must use DbxWebAuth.authorize instead.");
    }

    public DbxAuthFinish finishFromCode(String str, String str2) throws DbxException {
        return m9983f(str, str2, null);
    }

    public DbxWebAuth(DbxRequestConfig dbxRequestConfig, DbxAppInfo dbxAppInfo) {
        if (dbxRequestConfig == null) {
            throw new NullPointerException("requestConfig");
        }
        if (dbxAppInfo != null) {
            this.f16444a = dbxRequestConfig;
            this.f16445b = dbxAppInfo;
            this.f16446c = null;
            return;
        }
        throw new NullPointerException("appInfo");
    }
}
