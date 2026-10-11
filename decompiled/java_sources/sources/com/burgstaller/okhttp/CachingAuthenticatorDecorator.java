package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.io.IOException;
import java.util.Map;
import okhttp3.Authenticator;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;

/* loaded from: classes3.dex */
public class CachingAuthenticatorDecorator implements Authenticator {

    /* renamed from: a */
    public final Authenticator f15518a;

    /* renamed from: b */
    public final Map<String, CachingAuthenticator> f15519b;

    /* renamed from: c */
    public final CacheKeyProvider f15520c;

    public CachingAuthenticatorDecorator(Authenticator authenticator, Map<String, CachingAuthenticator> map, CacheKeyProvider cacheKeyProvider) {
        this.f15518a = authenticator;
        this.f15519b = map;
        this.f15520c = cacheKeyProvider;
    }

    @Override // okhttp3.Authenticator
    public Request authenticate(Route route, Response response) throws IOException {
        Request authenticate = this.f15518a.authenticate(route, response);
        if (authenticate != null && authenticate.header("Authorization") != null && (this.f15518a instanceof CachingAuthenticator)) {
            this.f15519b.put(this.f15520c.getCachingKey(authenticate), (CachingAuthenticator) this.f15518a);
        }
        return authenticate;
    }

    public CachingAuthenticatorDecorator(Authenticator authenticator, Map<String, CachingAuthenticator> map) {
        this(authenticator, map, new DefaultCacheKeyProvider());
    }
}
