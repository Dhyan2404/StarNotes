package com.blankj.utilcode.util;

import androidx.annotation.NonNull;

/* loaded from: classes3.dex */
public final class CacheMemoryStaticUtils {

    /* renamed from: a */
    public static CacheMemoryUtils f13689a;

    /* renamed from: a */
    public static CacheMemoryUtils m8040a() {
        CacheMemoryUtils cacheMemoryUtils = f13689a;
        return cacheMemoryUtils != null ? cacheMemoryUtils : CacheMemoryUtils.getInstance();
    }

    public static void clear() {
        clear(m8040a());
    }

    public static <T> T get(@NonNull String str) {
        return (T) get(str, m8040a());
    }

    public static int getCacheCount() {
        return getCacheCount(m8040a());
    }

    public static void put(@NonNull String str, Object obj) {
        put(str, obj, m8040a());
    }

    public static Object remove(@NonNull String str) {
        return remove(str, m8040a());
    }

    public static void setDefaultCacheMemoryUtils(CacheMemoryUtils cacheMemoryUtils) {
        f13689a = cacheMemoryUtils;
    }

    public static void clear(@NonNull CacheMemoryUtils cacheMemoryUtils) {
        cacheMemoryUtils.clear();
    }

    public static <T> T get(@NonNull String str, T t) {
        return (T) get(str, t, m8040a());
    }

    public static int getCacheCount(@NonNull CacheMemoryUtils cacheMemoryUtils) {
        return cacheMemoryUtils.getCacheCount();
    }

    public static void put(@NonNull String str, Object obj, int i) {
        put(str, obj, i, m8040a());
    }

    public static Object remove(@NonNull String str, @NonNull CacheMemoryUtils cacheMemoryUtils) {
        return cacheMemoryUtils.remove(str);
    }

    public static <T> T get(@NonNull String str, @NonNull CacheMemoryUtils cacheMemoryUtils) {
        return (T) cacheMemoryUtils.get(str);
    }

    public static void put(@NonNull String str, Object obj, @NonNull CacheMemoryUtils cacheMemoryUtils) {
        cacheMemoryUtils.put(str, obj);
    }

    public static <T> T get(@NonNull String str, T t, @NonNull CacheMemoryUtils cacheMemoryUtils) {
        return (T) cacheMemoryUtils.get(str, t);
    }

    public static void put(@NonNull String str, Object obj, int i, @NonNull CacheMemoryUtils cacheMemoryUtils) {
        cacheMemoryUtils.put(str, obj, i);
    }
}
