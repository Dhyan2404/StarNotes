package com.onyx.harfbuzz.utils;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;

/* loaded from: classes9.dex */
public abstract class LruCache<K> {
    protected static final int NODE_OVERHEAD = 40;

    /* renamed from: a */
    @NonNull
    public final C13019a<K> f62913a;

    /* renamed from: b */
    public int f62914b;

    /* renamed from: c */
    public int f62915c;

    /* loaded from: classes9.dex */
    public static class Segment<K> {

        /* renamed from: a */
        @NonNull
        public final HashMap<K, C13020b<K>> f62916a = new HashMap<>();

        @NonNull
        protected final LruCache<K> cache;

        public Segment(@NonNull LruCache<K> lruCache) {
            this.cache = lruCache;
        }

        @Nullable
        public final Object get(@NonNull K k) {
            synchronized (this.cache) {
                C13020b<K> c13020b = this.f62916a.get(k);
                if (c13020b == null) {
                    return null;
                }
                this.cache.f62913a.m52126d(c13020b);
                return c13020b.f62920c;
            }
        }

        public final void put(@NonNull K k, @NonNull Object obj) {
            synchronized (this.cache) {
                C13020b<K> c13020b = new C13020b<>(this, k, obj);
                if (this.f62916a.put(k, c13020b) != null) {
                    throw new IllegalArgumentException("An entry with same key has already been added");
                }
                LruCache.m52120b(this.cache, sizeOf(k, obj));
                this.cache.f62913a.m52123a(c13020b);
            }
            LruCache<K> lruCache = this.cache;
            lruCache.trimToSize(lruCache.f62914b);
        }

        public final void remove(@NonNull K k) {
            synchronized (this.cache) {
                C13020b<K> remove = this.f62916a.remove(k);
                if (remove != null) {
                    LruCache.m52121c(this.cache, sizeOf(k, remove.f62920c));
                    this.cache.f62913a.m52127e(remove);
                }
            }
        }

        public int sizeOf(@NonNull K k, @NonNull Object obj) {
            return 1;
        }
    }

    /* renamed from: com.onyx.harfbuzz.utils.LruCache$a */
    /* loaded from: classes9.dex */
    public static class C13019a<K> {

        /* renamed from: a */
        @NonNull
        public final C13020b<K> f62917a;

        public C13019a() {
            C13020b<K> c13020b = new C13020b<>(null, null, null);
            this.f62917a = c13020b;
            c13020b.f62922e = c13020b;
            c13020b.f62921d = c13020b;
        }

        /* renamed from: a */
        public void m52123a(@NonNull C13020b<K> c13020b) {
            C13020b<K> c13020b2 = this.f62917a;
            c13020b.f62921d = c13020b2;
            c13020b.f62922e = c13020b2.f62922e;
            c13020b2.f62922e.f62921d = c13020b;
            c13020b2.f62922e = c13020b;
        }

        /* renamed from: b */
        public void m52124b() {
            C13020b<K> c13020b = this.f62917a;
            c13020b.f62922e = c13020b;
            c13020b.f62921d = c13020b;
        }

        /* renamed from: c */
        public C13020b<K> m52125c() {
            return this.f62917a.f62921d;
        }

        /* renamed from: d */
        public void m52126d(@NonNull C13020b<K> c13020b) {
            m52127e(c13020b);
            m52123a(c13020b);
        }

        /* renamed from: e */
        public void m52127e(@NonNull C13020b<K> c13020b) {
            C13020b<K> c13020b2 = c13020b.f62921d;
            c13020b2.f62922e = c13020b.f62922e;
            c13020b.f62922e.f62921d = c13020b2;
            c13020b.f62921d = null;
            c13020b.f62922e = null;
        }
    }

    /* renamed from: com.onyx.harfbuzz.utils.LruCache$b */
    /* loaded from: classes9.dex */
    public static class C13020b<K> {

        /* renamed from: a */
        public final Segment<K> f62918a;

        /* renamed from: b */
        public final K f62919b;

        /* renamed from: c */
        public Object f62920c;

        /* renamed from: d */
        public C13020b<K> f62921d;

        /* renamed from: e */
        public C13020b<K> f62922e;

        public C13020b(Segment<K> segment, K k, Object obj) {
            this.f62918a = segment;
            this.f62919b = k;
            this.f62920c = obj;
        }
    }

    public LruCache(int i) {
        if (i > 0) {
            this.f62913a = new C13019a<>();
            this.f62914b = i;
            this.f62915c = 0;
        } else {
            throw new IllegalArgumentException("Invalid Capacity: " + i);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ int m52120b(LruCache lruCache, int i) {
        int i2 = lruCache.f62915c + i;
        lruCache.f62915c = i2;
        return i2;
    }

    /* renamed from: c */
    public static /* synthetic */ int m52121c(LruCache lruCache, int i) {
        int i2 = lruCache.f62915c - i;
        lruCache.f62915c = i2;
        return i2;
    }

    public final synchronized int capacity() {
        return this.f62914b;
    }

    public synchronized void clear() {
        this.f62913a.m52124b();
    }

    public final synchronized int size() {
        return this.f62915c;
    }

    public void trimToSize(int i) {
        while (true) {
            synchronized (this) {
                if (this.f62915c <= i) {
                    return;
                }
                C13020b<K> m52125c = this.f62913a.m52125c();
                if (m52125c == this.f62913a.f62917a) {
                    return;
                } else {
                    m52125c.f62918a.remove(m52125c.f62919b);
                }
            }
        }
    }
}
