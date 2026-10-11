package com.burgstaller.okhttp;

import okhttp3.Request;

/* loaded from: classes3.dex */
public interface CacheKeyProvider {
    String getCachingKey(Request request);
}
