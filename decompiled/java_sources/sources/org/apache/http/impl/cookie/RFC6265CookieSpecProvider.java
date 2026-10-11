package org.apache.http.impl.cookie;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class RFC6265CookieSpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public final CompatibilityLevel f110897a;

    /* renamed from: b */
    public final PublicSuffixMatcher f110898b;

    /* renamed from: c */
    public volatile CookieSpec f110899c;

    /* loaded from: classes12.dex */
    public enum CompatibilityLevel {
        STRICT,
        RELAXED,
        IE_MEDIUM_SECURITY
    }

    /* renamed from: org.apache.http.impl.cookie.RFC6265CookieSpecProvider$a */
    /* loaded from: classes12.dex */
    public class C19383a extends BasicPathHandler {
        public C19383a() {
        }

        @Override // org.apache.http.impl.cookie.BasicPathHandler, org.apache.http.cookie.CookieAttributeHandler
        public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        }
    }

    /* renamed from: org.apache.http.impl.cookie.RFC6265CookieSpecProvider$b */
    /* loaded from: classes12.dex */
    public static /* synthetic */ class C19384b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f110901a;

        static {
            int[] iArr = new int[CompatibilityLevel.values().length];
            f110901a = iArr;
            try {
                iArr[CompatibilityLevel.STRICT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f110901a[CompatibilityLevel.IE_MEDIUM_SECURITY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public RFC6265CookieSpecProvider(CompatibilityLevel compatibilityLevel, PublicSuffixMatcher publicSuffixMatcher) {
        this.f110897a = compatibilityLevel == null ? CompatibilityLevel.RELAXED : compatibilityLevel;
        this.f110898b = publicSuffixMatcher;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110899c == null) {
            synchronized (this) {
                if (this.f110899c == null) {
                    int i = C19384b.f110901a[this.f110897a.ordinal()];
                    if (i == 1) {
                        this.f110899c = new RFC6265StrictSpec(new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.f110898b), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.f110902l));
                    } else if (i != 2) {
                        this.f110899c = new RFC6265LaxSpec(new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.f110898b), new LaxMaxAgeHandler(), new BasicSecureHandler(), new LaxExpiresHandler());
                    } else {
                        this.f110899c = new RFC6265LaxSpec(new C19383a(), PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.f110898b), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicExpiresHandler(RFC6265StrictSpec.f110902l));
                    }
                }
            }
        }
        return this.f110899c;
    }

    public RFC6265CookieSpecProvider(PublicSuffixMatcher publicSuffixMatcher) {
        this(CompatibilityLevel.RELAXED, publicSuffixMatcher);
    }

    public RFC6265CookieSpecProvider() {
        this(CompatibilityLevel.RELAXED, null);
    }
}
