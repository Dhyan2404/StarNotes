package org.apache.http.auth;

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

@Contract(threading = ThreadingBehavior.SAFE)
@Deprecated
/* loaded from: classes12.dex */
public final class AuthSchemeRegistry implements Lookup<AuthSchemeProvider> {

    /* renamed from: a */
    public final ConcurrentHashMap<String, AuthSchemeFactory> f110101a = new ConcurrentHashMap<>();

    /* renamed from: org.apache.http.auth.AuthSchemeRegistry$a */
    /* loaded from: classes12.dex */
    public class C19333a implements AuthSchemeProvider {

        /* renamed from: a */
        public final /* synthetic */ String f110102a;

        public C19333a(String str) {
            this.f110102a = str;
        }

        @Override // org.apache.http.auth.AuthSchemeProvider
        public AuthScheme create(HttpContext httpContext) {
            return AuthSchemeRegistry.this.getAuthScheme(this.f110102a, ((HttpRequest) httpContext.getAttribute("http.request")).getParams());
        }
    }

    public AuthScheme getAuthScheme(String str, HttpParams httpParams) throws IllegalStateException {
        Args.notNull(str, "Name");
        AuthSchemeFactory authSchemeFactory = this.f110101a.get(str.toLowerCase(Locale.ENGLISH));
        if (authSchemeFactory != null) {
            return authSchemeFactory.newInstance(httpParams);
        }
        throw new IllegalStateException("Unsupported authentication scheme: " + str);
    }

    public List<String> getSchemeNames() {
        return new ArrayList(this.f110101a.keySet());
    }

    public void register(String str, AuthSchemeFactory authSchemeFactory) {
        Args.notNull(str, "Name");
        Args.notNull(authSchemeFactory, "Authentication scheme factory");
        this.f110101a.put(str.toLowerCase(Locale.ENGLISH), authSchemeFactory);
    }

    public void setItems(Map<String, AuthSchemeFactory> map) {
        if (map == null) {
            return;
        }
        this.f110101a.clear();
        this.f110101a.putAll(map);
    }

    public void unregister(String str) {
        Args.notNull(str, "Name");
        this.f110101a.remove(str.toLowerCase(Locale.ENGLISH));
    }

    @Override // org.apache.http.config.Lookup
    public AuthSchemeProvider lookup(String str) {
        return new C19333a(str);
    }
}
