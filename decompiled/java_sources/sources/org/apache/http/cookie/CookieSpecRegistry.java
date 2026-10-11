package org.apache.http.cookie;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.apache.http.HttpRequest;
import org.apache.http.annotation.Contract;
import org.apache.http.annotation.ThreadingBehavior;
import org.apache.http.config.Lookup;
import org.apache.http.params.HttpParams;
import org.apache.http.protocol.HttpContext;
import org.apache.http.util.Args;
import org.apache.poi.openxml4j.opc.PackageRelationship;

@Contract(threading = ThreadingBehavior.SAFE)
@Deprecated
/* loaded from: classes12.dex */
public final class CookieSpecRegistry implements Lookup<CookieSpecProvider> {

    /* renamed from: a */
    public final ConcurrentHashMap<String, CookieSpecFactory> f110349a = new ConcurrentHashMap<>();

    /* renamed from: org.apache.http.cookie.CookieSpecRegistry$a */
    /* loaded from: classes12.dex */
    public class C19347a implements CookieSpecProvider {

        /* renamed from: a */
        public final /* synthetic */ String f110350a;

        public C19347a(String str) {
            this.f110350a = str;
        }

        @Override // org.apache.http.cookie.CookieSpecProvider
        public CookieSpec create(HttpContext httpContext) {
            return CookieSpecRegistry.this.getCookieSpec(this.f110350a, ((HttpRequest) httpContext.getAttribute("http.request")).getParams());
        }
    }

    public CookieSpec getCookieSpec(String str, HttpParams httpParams) throws IllegalStateException {
        Args.notNull(str, "Name");
        CookieSpecFactory cookieSpecFactory = this.f110349a.get(str.toLowerCase(Locale.ENGLISH));
        if (cookieSpecFactory != null) {
            return cookieSpecFactory.newInstance(httpParams);
        }
        throw new IllegalStateException("Unsupported cookie spec: " + str);
    }

    public List<String> getSpecNames() {
        return new ArrayList(this.f110349a.keySet());
    }

    public void register(String str, CookieSpecFactory cookieSpecFactory) {
        Args.notNull(str, "Name");
        Args.notNull(cookieSpecFactory, "Cookie spec factory");
        this.f110349a.put(str.toLowerCase(Locale.ENGLISH), cookieSpecFactory);
    }

    public void setItems(Map<String, CookieSpecFactory> map) {
        if (map == null) {
            return;
        }
        this.f110349a.clear();
        this.f110349a.putAll(map);
    }

    public void unregister(String str) {
        Args.notNull(str, PackageRelationship.ID_ATTRIBUTE_NAME);
        this.f110349a.remove(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // org.apache.http.config.Lookup
    public CookieSpecProvider lookup(String str) {
        return new C19347a(str);
    }

    public CookieSpec getCookieSpec(String str) throws IllegalStateException {
        return getCookieSpec(str, null);
    }
}
