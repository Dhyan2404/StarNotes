package org.apache.http.impl.cookie;

import java.util.Collection;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieAttributeHandler;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;

@Deprecated
/* loaded from: classes12.dex */
public class PublicSuffixFilter implements CookieAttributeHandler {

    /* renamed from: a */
    public final CookieAttributeHandler f110870a;

    /* renamed from: b */
    public Collection<String> f110871b;

    /* renamed from: c */
    public Collection<String> f110872c;

    /* renamed from: d */
    public PublicSuffixMatcher f110873d;

    public PublicSuffixFilter(CookieAttributeHandler cookieAttributeHandler) {
        this.f110870a = cookieAttributeHandler;
    }

    /* renamed from: a */
    public final boolean m68552a(Cookie cookie) {
        if (this.f110873d == null) {
            this.f110873d = new PublicSuffixMatcher(this.f110872c, this.f110871b);
        }
        return this.f110873d.matches(cookie.getDomain());
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        if (m68552a(cookie)) {
            return false;
        }
        return this.f110870a.match(cookie, cookieOrigin);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        this.f110870a.parse(setCookie, str);
    }

    public void setExceptions(Collection<String> collection) {
        this.f110871b = collection;
        this.f110873d = null;
    }

    public void setPublicSuffixes(Collection<String> collection) {
        this.f110872c = collection;
        this.f110873d = null;
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        this.f110870a.validate(cookie, cookieOrigin);
    }
}
