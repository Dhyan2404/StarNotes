package com.burgstaller.okhttp;

import com.burgstaller.okhttp.digest.CachingAuthenticator;
import java.io.IOException;
import java.util.Map;
import okhttp3.Connection;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.platform.Platform;

/* loaded from: classes3.dex */
public class AuthenticationCacheInterceptor implements Interceptor {

    /* renamed from: a */
    public final Map<String, CachingAuthenticator> f15516a;

    /* renamed from: b */
    public final CacheKeyProvider f15517b;

    public AuthenticationCacheInterceptor(Map<String, CachingAuthenticator> map, CacheKeyProvider cacheKeyProvider) {
        this.f15516a = map;
        this.f15517b = cacheKeyProvider;
    }

    @Override // okhttp3.Interceptor
    public Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        String cachingKey = this.f15517b.getCachingKey(request);
        CachingAuthenticator cachingAuthenticator = this.f15516a.get(cachingKey);
        Connection connection = chain.connection();
        Request authenticateWithState = cachingAuthenticator != null ? cachingAuthenticator.authenticateWithState(connection != null ? connection.getRoute() : null, request) : null;
        if (authenticateWithState == null) {
            authenticateWithState = request;
        }
        Response proceed = chain.proceed(authenticateWithState);
        int code = proceed != null ? proceed.code() : 0;
        if (cachingAuthenticator == null) {
            return proceed;
        }
        if ((code != 401 && code != 407) || this.f15516a.remove(cachingKey) == null) {
            return proceed;
        }
        proceed.body().close();
        Platform.get().log("Cached authentication expired. Sending a new request.", 4, null);
        return chain.proceed(request);
    }

    public AuthenticationCacheInterceptor(Map<String, CachingAuthenticator> map) {
        this(map, new DefaultCacheKeyProvider());
    }
}
