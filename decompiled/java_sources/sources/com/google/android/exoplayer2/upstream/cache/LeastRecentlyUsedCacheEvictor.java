package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.upstream.cache.LeastRecentlyUsedCacheEvictor;
import java.util.Comparator;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor {

    /* renamed from: a */
    public final long f28231a;

    /* renamed from: b */
    public final TreeSet<CacheSpan> f28232b = new TreeSet<>(new Comparator() { // from class: com.sunia.HTREnginev2.nxi
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            int m21394b;
            m21394b = LeastRecentlyUsedCacheEvictor.m21394b((CacheSpan) obj, (CacheSpan) obj2);
            return m21394b;
        }
    });

    /* renamed from: c */
    public long f28233c;

    public LeastRecentlyUsedCacheEvictor(long j) {
        this.f28231a = j;
    }

    /* renamed from: b */
    public static int m21394b(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        long j = cacheSpan.lastTouchTimestamp;
        long j2 = cacheSpan2.lastTouchTimestamp;
        return j - j2 == 0 ? cacheSpan.compareTo(cacheSpan2) : j < j2 ? -1 : 1;
    }

    /* renamed from: c */
    public final void m21395c(Cache cache, long j) {
        while (this.f28233c + j > this.f28231a && !this.f28232b.isEmpty()) {
            cache.removeSpan(this.f28232b.first());
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        this.f28232b.add(cacheSpan);
        this.f28233c += cacheSpan.length;
        m21395c(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        this.f28232b.remove(cacheSpan);
        this.f28233c -= cacheSpan.length;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        onSpanRemoved(cache, cacheSpan);
        onSpanAdded(cache, cacheSpan2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public void onStartFile(Cache cache, String str, long j, long j2) {
        if (j2 != -1) {
            m21395c(cache, j2);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.CacheEvictor
    public boolean requiresCacheSpanTouches() {
        return true;
    }
}
