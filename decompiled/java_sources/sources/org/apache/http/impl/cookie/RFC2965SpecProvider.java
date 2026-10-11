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
public class RFC2965SpecProvider implements CookieSpecProvider {

    /* renamed from: a */
    public final PublicSuffixMatcher f110883a;

    /* renamed from: b */
    public final boolean f110884b;

    /* renamed from: c */
    public volatile CookieSpec f110885c;

    public RFC2965SpecProvider(PublicSuffixMatcher publicSuffixMatcher, boolean z) {
        this.f110884b = z;
        this.f110883a = publicSuffixMatcher;
    }

    @Override // org.apache.http.cookie.CookieSpecProvider
    public CookieSpec create(HttpContext httpContext) {
        if (this.f110885c == null) {
            synchronized (this) {
                if (this.f110885c == null) {
                    this.f110885c = new RFC2965Spec(this.f110884b, new RFC2965VersionAttributeHandler(), new BasicPathHandler(), PublicSuffixDomainFilter.decorate(new RFC2965DomainAttributeHandler(), this.f110883a), new RFC2965PortAttributeHandler(), new BasicMaxAgeHandler(), new BasicSecureHandler(), new BasicCommentHandler(), new RFC2965CommentUrlAttributeHandler(), new RFC2965DiscardAttributeHandler());
                }
            }
        }
        return this.f110885c;
    }

    public RFC2965SpecProvider(PublicSuffixMatcher publicSuffixMatcher) {
        this(publicSuffixMatcher, false);
    }

    public RFC2965SpecProvider() {
        this(null, false);
    }
}
