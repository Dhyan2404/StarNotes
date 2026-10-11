package org.apache.http.impl.cookie;

import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.conn.util.PublicSuffixList;
import org.apache.http.conn.util.PublicSuffixMatcher;
import org.apache.http.cookie.CommonCookieAttributeHandler;
import org.apache.http.cookie.Cookie;
import org.apache.http.cookie.CookieOrigin;
import org.apache.http.cookie.MalformedCookieException;
import org.apache.http.cookie.SetCookie;
import org.apache.http.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE_CONDITIONAL)
/* loaded from: classes12.dex */
public class PublicSuffixDomainFilter implements CommonCookieAttributeHandler {

    /* renamed from: a */
    public final CommonCookieAttributeHandler f110867a;

    /* renamed from: b */
    public final PublicSuffixMatcher f110868b;

    /* renamed from: c */
    public final Map<String, Boolean> f110869c;

    public PublicSuffixDomainFilter(CommonCookieAttributeHandler commonCookieAttributeHandler, PublicSuffixMatcher publicSuffixMatcher) {
        this.f110867a = (CommonCookieAttributeHandler) Args.notNull(commonCookieAttributeHandler, "Cookie handler");
        this.f110868b = (PublicSuffixMatcher) Args.notNull(publicSuffixMatcher, "Public suffix matcher");
        this.f110869c = m68551a();
    }

    /* renamed from: a */
    public static Map<String, Boolean> m68551a() {
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        Boolean bool = Boolean.TRUE;
        concurrentHashMap.put(".localhost.", bool);
        concurrentHashMap.put(".test.", bool);
        concurrentHashMap.put(".local.", bool);
        concurrentHashMap.put(".local", bool);
        concurrentHashMap.put(".localdomain", bool);
        return concurrentHashMap;
    }

    public static CommonCookieAttributeHandler decorate(CommonCookieAttributeHandler commonCookieAttributeHandler, PublicSuffixMatcher publicSuffixMatcher) {
        Args.notNull(commonCookieAttributeHandler, "Cookie attribute handler");
        return publicSuffixMatcher != null ? new PublicSuffixDomainFilter(commonCookieAttributeHandler, publicSuffixMatcher) : commonCookieAttributeHandler;
    }

    @Override // org.apache.http.cookie.CommonCookieAttributeHandler
    public String getAttributeName() {
        return this.f110867a.getAttributeName();
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public boolean match(Cookie cookie, CookieOrigin cookieOrigin) {
        String domain = cookie.getDomain();
        if (domain == null) {
            return false;
        }
        int indexOf = domain.indexOf(46);
        if (indexOf >= 0) {
            if (!this.f110869c.containsKey(domain.substring(indexOf)) && this.f110868b.matches(domain)) {
                return false;
            }
        } else if (!domain.equalsIgnoreCase(cookieOrigin.getHost()) && this.f110868b.matches(domain)) {
            return false;
        }
        return this.f110867a.match(cookie, cookieOrigin);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void parse(SetCookie setCookie, String str) throws MalformedCookieException {
        this.f110867a.parse(setCookie, str);
    }

    @Override // org.apache.http.cookie.CookieAttributeHandler
    public void validate(Cookie cookie, CookieOrigin cookieOrigin) throws MalformedCookieException {
        this.f110867a.validate(cookie, cookieOrigin);
    }

    public PublicSuffixDomainFilter(CommonCookieAttributeHandler commonCookieAttributeHandler, PublicSuffixList publicSuffixList) {
        Args.notNull(commonCookieAttributeHandler, "Cookie handler");
        Args.notNull(publicSuffixList, "Public suffix list");
        this.f110867a = commonCookieAttributeHandler;
        this.f110868b = new PublicSuffixMatcher(publicSuffixList.getRules(), publicSuffixList.getExceptions());
        this.f110869c = m68551a();
    }
}
