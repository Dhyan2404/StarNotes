package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class LruCache<T, Y> {

    /* renamed from: a */
    public final Map<T, C2040a<Y>> f15485a = new LinkedHashMap(100, 0.75f, true);

    /* renamed from: b */
    public final long f15486b;

    /* renamed from: c */
    public long f15487c;

    /* renamed from: d */
    public long f15488d;

    /* renamed from: com.bumptech.glide.util.LruCache$a */
    /* loaded from: classes3.dex */
    public static final class C2040a<Y> {

        /* renamed from: a */
        public final Y f15489a;

        /* renamed from: b */
        public final int f15490b;

        public C2040a(Y y, int i) {
            this.f15489a = y;
            this.f15490b = i;
        }
    }

    public LruCache(long j) {
        this.f15486b = j;
        this.f15487c = j;
    }

    /* renamed from: a */
    public final void m9180a() {
        trimToSize(this.f15487c);
    }

    public void clearMemory() {
        trimToSize(0L);
    }

    public synchronized boolean contains(@NonNull T t) {
        return this.f15485a.containsKey(t);
    }

    @Nullable
    public synchronized Y get(@NonNull T t) {
        C2040a<Y> c2040a;
        c2040a = this.f15485a.get(t);
        return c2040a != null ? c2040a.f15489a : null;
    }

    public synchronized int getCount() {
        return this.f15485a.size();
    }

    public synchronized long getCurrentSize() {
        return this.f15488d;
    }

    public synchronized long getMaxSize() {
        return this.f15487c;
    }

    public int getSize(@Nullable Y y) {
        return 1;
    }

    public void onItemEvicted(@NonNull T t, @Nullable Y y) {
    }

    @Nullable
    public synchronized Y put(@NonNull T t, @Nullable Y y) {
        int size = getSize(y);
        long j = size;
        if (j >= this.f15487c) {
            onItemEvicted(t, y);
            return null;
        }
        if (y != null) {
            this.f15488d += j;
        }
        C2040a<Y> put = this.f15485a.put(t, y == null ? null : new C2040a<>(y, size));
        if (put != null) {
            this.f15488d -= put.f15490b;
            if (!put.f15489a.equals(y)) {
                onItemEvicted(t, put.f15489a);
            }
        }
        m9180a();
        return put != null ? put.f15489a : null;
    }

    @Nullable
    public synchronized Y remove(@NonNull T t) {
        C2040a<Y> remove = this.f15485a.remove(t);
        if (remove == null) {
            return null;
        }
        this.f15488d -= remove.f15490b;
        return remove.f15489a;
    }

    public synchronized void setSizeMultiplier(float f) {
        if (f < 0.0f) {
            throw new IllegalArgumentException("Multiplier must be >= 0");
        }
        this.f15487c = Math.round(((float) this.f15486b) * f);
        m9180a();
    }

    public synchronized void trimToSize(long j) {
        while (this.f15488d > j) {
            Iterator<Map.Entry<T, C2040a<Y>>> it2 = this.f15485a.entrySet().iterator();
            Map.Entry<T, C2040a<Y>> next = it2.next();
            C2040a<Y> value = next.getValue();
            this.f15488d -= value.f15490b;
            T key = next.getKey();
            it2.remove();
            onItemEvicted(key, value.f15489a);
        }
    }
}
