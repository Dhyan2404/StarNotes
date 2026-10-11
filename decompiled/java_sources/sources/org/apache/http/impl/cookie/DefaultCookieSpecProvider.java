package org.apache.http.impl.cookie;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes12.dex */
public class DefaultCookieSpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public final CompatibilityLevel f110845a;

    /* renamed from: b */
    public final PublicSuffixMatcher f110846b;

    /* renamed from: c */
    public final String[] f110847c;

    /* renamed from: d */
    public final boolean f110848d;

    /* renamed from: e */
    public volatile CookieSpec f110849e;

    /* loaded from: classes12.dex */
    public enum CompatibilityLevel {
        DEFAULT,
        IE_MEDIUM_SECURITY
    }

    /* renamed from: org.apache.http.impl.cookie.DefaultCookieSpecProvider$a */
    /* loaded from: classes12.dex */
    public class C19380a extends BasicPathHandler {
        public C19380a() {
        }

        @Override // org.apache.http.impl.cookie.BasicPathHandler, org.apache.http.cookie.CookieAttributeHandler
        public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        }
    }

    public DefaultCookieSpecProvider(CompatibilityLevel compatibilityLevel, PublicSuffixMatcher publicSuffixMatcher, String[] strArr, boolean z) {
        this.f110845a = compatibilityLevel == null ? CompatibilityLevel.DEFAULT : compatibilityLevel;
        this.f110846b = publicSuffixMatcher;
        this.f110847c = strArr;
        this.f110848d = z;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110849e == null) {
            synchronized (this) {
                if (this.f110849e == null) {
                    RFC2965Spec rFC2965Spec = new RFC2965Spec(this.f110848d, new RFC2965VersionAttributeHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2965DomainAttributeHandler(), this.f110846b), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler());
                    RFC2109Spec rFC2109Spec = new RFC2109Spec(this.f110848d, new RFC2109VersionHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2109DomainHandler(), this.f110846b), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler());
                    CommonCookieAttributeHandler[] commonCookieAttributeHandlerArr = new CommonCookieAttributeHandler[5];
                    commonCookieAttributeHandlerArr[0] = PublicSuffixDomainFilter.decorate(new BasicDomainHandler(), this.f110846b);
                    commonCookieAttributeHandlerArr[1] = this.f110845a == CompatibilityLevel.IE_MEDIUM_SECURITY ? new C19380a() : new BasicPathHandler();
                    commonCookieAttributeHandlerArr[2] = new BasicSecureHandler();
                    commonCookieAttributeHandlerArr[3] = new BasicCommentHandler();
                    String[] strArr = this.f110847c;
                    commonCookieAttributeHandlerArr[4] = new BasicExpiresHandler(strArr != null ? (String[]) strArr.clone() : new String[]{"EEE, dd-MMM-yy HH:mm:ss z"});
                    this.f110849e = new DefaultCookieSpec(rFC2965Spec, rFC2109Spec, new NetscapeDraftSpec(commonCookieAttributeHandlerArr));
                }
            }
        }
        return this.f110849e;
    }

    public DefaultCookieSpecProvider(CompatibilityLevel compatibilityLevel, PublicSuffixMatcher publicSuffixMatcher) {
        this(compatibilityLevel, publicSuffixMatcher, null, false);
    }

    public DefaultCookieSpecProvider(PublicSuffixMatcher publicSuffixMatcher) {
        this(CompatibilityLevel.DEFAULT, publicSuffixMatcher, null, false);
    }

    public DefaultCookieSpecProvider() {
        this(CompatibilityLevel.DEFAULT, null, null, false);
    }
}
