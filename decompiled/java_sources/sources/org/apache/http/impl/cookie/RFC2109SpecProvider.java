package org.apache.http.impl.cookie;

import org.apache.http.annotation.Contract;
import org.apache.http.annotation.Obsolete;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CookieSpec;
import org.apache.http.cookie.CookieSpecProvider;
import org.apache.http.protocol.HttpContext;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
@Obsolete
/* loaded from: classes12.dex */
public class RFC2109SpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public final PublicSuffixMatcher f110879a;

    /* renamed from: b */
    public final boolean f110880b;

    /* renamed from: c */
    public volatile CookieSpec f110881c;

    public RFC2109SpecProvider(PublicSuffixMatcher publicSuffixMatcher, boolean z) {
        this.f110880b = z;
        this.f110879a = publicSuffixMatcher;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110881c == null) {
            synchronized (this) {
                if (this.f110881c == null) {
                    this.f110881c = new RFC2109Spec(this.f110880b, new RFC2109VersionHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2109DomainHandler(), this.f110879a), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler());
                }
            }
        }
        return this.f110881c;
    }

    public RFC2109SpecProvider(PublicSuffixMatcher publicSuffixMatcher) {
        this(publicSuffixMatcher, false);
    }

    public RFC2109SpecProvider() {
        this(null, false);
    }
}
