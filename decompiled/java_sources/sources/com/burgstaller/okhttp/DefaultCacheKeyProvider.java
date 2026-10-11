package com.burgstaller.okhttp;

import okhttp3.HttpUrl;
import okhttp3.Request;

/* loaded from: classes3.dex */
public final class DefaultCacheKeyProvider implements CacheKeyProvider {
    @Override // com.burgstaller.okhttp.CacheKeyProvider
    public String getCachingKey(Request request) {
        HttpUrl url = request.url();
        if (url == null) {
            return null;
        }
        return url.scheme() + ":" + url.host() + ":" + url.port();
    }
}
