package com.blankj.utilcode.util;

import androidx.annotation.NonNull;
import androidx.collection.LruCache;
import com.blankj.utilcode.constant.CacheConstants;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class CacheMemoryUtils implements CacheConstants {

    /* renamed from: c */
    public static final int f13690c = 256;

    /* renamed from: d */
    public static final Map<String, CacheMemoryUtils> f13691d = new HashMap();

    /* renamed from: a */
    public final String f13692a;

    /* renamed from: b */
    public final LruCache<String, C1804a> f13693b;

    /* renamed from: com.blankj.utilcode.util.CacheMemoryUtils$a */
    /* loaded from: classes3.dex */
    public static final class C1804a {

        /* renamed from: a */
        public long f13694a;

        /* renamed from: b */
        public Object f13695b;

        public C1804a(long j, Object obj) {
            this.f13694a = j;
            this.f13695b = obj;
        }
    }

    public CacheMemoryUtils(String str, LruCache<String, C1804a> lruCache) {
        this.f13692a = str;
        this.f13693b = lruCache;
    }

    public static CacheMemoryUtils getInstance() {
        return getInstance(256);
    }

    public void clear() {
        this.f13693b.evictAll();
    }

    public <T> T get(@NonNull String str) {
        return (T) get(str, null);
    }

    public int getCacheCount() {
        return this.f13693b.size();
    }

    public void put(@NonNull String str, Object obj) {
        put(str, obj, -1);
    }

    public Object remove(@NonNull String str) {
        C1804a remove = this.f13693b.remove(str);
        if (remove == null) {
            return null;
        }
        return remove.f13695b;
    }

    public String toString() {
        return this.f13692a + "@" + Integer.toHexString(hashCode());
    }

    public static CacheMemoryUtils getInstance(int i) {
        return getInstance(String.valueOf(i), i);
    }

    public <T> T get(@NonNull String str, T t) {
        C1804a c1804a = this.f13693b.get(str);
        if (c1804a == null) {
            return t;
        }
        long j = c1804a.f13694a;
        if (j != -1 && j < System.currentTimeMillis()) {
            this.f13693b.remove(str);
            return t;
        }
        return (T) c1804a.f13695b;
    }

    public void put(@NonNull String str, Object obj, int i) {
        if (obj == null) {
            return;
        }
        this.f13693b.put(str, new C1804a(i < 0 ? -1L : System.currentTimeMillis() + (i * 1000), obj));
    }

    public static CacheMemoryUtils getInstance(String str, int i) {
        Map<String, CacheMemoryUtils> map = f13691d;
        CacheMemoryUtils cacheMemoryUtils = map.get(str);
        if (cacheMemoryUtils == null) {
            synchronized (CacheMemoryUtils.class) {
                cacheMemoryUtils = map.get(str);
                if (cacheMemoryUtils == null) {
                    cacheMemoryUtils = new CacheMemoryUtils(str, new LruCache(i));
                    map.put(str, cacheMemoryUtils);
                }
            }
        }
        return cacheMemoryUtils;
    }
}
