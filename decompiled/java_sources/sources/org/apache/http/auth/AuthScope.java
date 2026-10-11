package org.apache.http.auth;

import java.util.Locale;
import org.apache.http.HttpHost;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.util.Args;
import org.apache.http.util.LangUtils;
import org.apache.logging.log4j.util.Chars;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class AuthScope {
    public static final AuthScope ANY = new AuthScope(null, -1, null, null);
    public static final String ANY_HOST = null;
    public static final int ANY_PORT = -1;
    public static final String ANY_REALM = null;
    public static final String ANY_SCHEME = null;

    /* renamed from: a */
    public final String f110104a;

    /* renamed from: b */
    public final String f110105b;

    /* renamed from: c */
    public final String f110106c;

    /* renamed from: d */
    public final int f110107d;

    /* renamed from: e */
    public final HttpHost f110108e;

    public AuthScope(String str, int i, String str2, String str3) {
        this.f110106c = str == null ? ANY_HOST : str.toLowerCase(Locale.ROOT);
        this.f110107d = i < 0 ? -1 : i;
        this.f110105b = str2 == null ? ANY_REALM : str2;
        this.f110104a = str3 == null ? ANY_SCHEME : str3.toUpperCase(Locale.ROOT);
        this.f110108e = null;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AuthScope)) {
            return super.equals(obj);
        }
        AuthScope authScope = (AuthScope) obj;
        return LangUtils.equals(this.f110106c, authScope.f110106c) && this.f110107d == authScope.f110107d && LangUtils.equals(this.f110105b, authScope.f110105b) && LangUtils.equals(this.f110104a, authScope.f110104a);
    }

    public String getHost() {
        return this.f110106c;
    }

    public HttpHost getOrigin() {
        return this.f110108e;
    }

    public int getPort() {
        return this.f110107d;
    }

    public String getRealm() {
        return this.f110105b;
    }

    public String getScheme() {
        return this.f110104a;
    }

    public int hashCode() {
        return LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(LangUtils.hashCode(17, this.f110106c), this.f110107d), this.f110105b), this.f110104a);
    }

    public int match(AuthScope authScope) {
        int i;
        if (LangUtils.equals(this.f110104a, authScope.f110104a)) {
            i = 1;
        } else {
            String str = this.f110104a;
            String str2 = ANY_SCHEME;
            if (str != str2 && authScope.f110104a != str2) {
                return -1;
            }
            i = 0;
        }
        if (LangUtils.equals(this.f110105b, authScope.f110105b)) {
            i += 2;
        } else {
            String str3 = this.f110105b;
            String str4 = ANY_REALM;
            if (str3 != str4 && authScope.f110105b != str4) {
                return -1;
            }
        }
        int i2 = this.f110107d;
        int i3 = authScope.f110107d;
        if (i2 == i3) {
            i += 4;
        } else if (i2 != -1 && i3 != -1) {
            return -1;
        }
        if (LangUtils.equals(this.f110106c, authScope.f110106c)) {
            return i + 8;
        }
        String str5 = this.f110106c;
        String str6 = ANY_HOST;
        if (str5 == str6 || authScope.f110106c == str6) {
            return i;
        }
        return -1;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        String str = this.f110104a;
        if (str != null) {
            sb.append(str.toUpperCase(Locale.ROOT));
            sb.append(' ');
        }
        if (this.f110105b != null) {
            sb.append(Chars.QUOTE);
            sb.append(this.f110105b);
            sb.append(Chars.QUOTE);
        } else {
            sb.append("<any realm>");
        }
        if (this.f110106c != null) {
            sb.append('@');
            sb.append(this.f110106c);
            if (this.f110107d >= 0) {
                sb.append(':');
                sb.append(this.f110107d);
            }
        }
        return sb.toString();
    }

    public AuthScope(HttpHost httpHost, String str, String str2) {
        Args.notNull(httpHost, "Host");
        String hostName = httpHost.getHostName();
        Locale locale = Locale.ROOT;
        this.f110106c = hostName.toLowerCase(locale);
        this.f110107d = httpHost.getPort() < 0 ? -1 : httpHost.getPort();
        this.f110105b = str == null ? ANY_REALM : str;
        this.f110104a = str2 == null ? ANY_SCHEME : str2.toUpperCase(locale);
        this.f110108e = httpHost;
    }

    public AuthScope(HttpHost httpHost) {
        this(httpHost, ANY_REALM, ANY_SCHEME);
    }

    public AuthScope(String str, int i, String str2) {
        this(str, i, str2, ANY_SCHEME);
    }

    public AuthScope(String str, int i) {
        this(str, i, ANY_REALM, ANY_SCHEME);
    }

    public AuthScope(AuthScope authScope) {
        Args.notNull(authScope, "Scope");
        this.f110106c = authScope.getHost();
        this.f110107d = authScope.getPort();
        this.f110105b = authScope.getRealm();
        this.f110104a = authScope.getScheme();
        this.f110108e = authScope.getOrigin();
    }
}
