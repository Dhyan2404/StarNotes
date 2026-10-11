package com.google.android.exoplayer2.upstream;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.extractor.ChunkIndex;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.CacheSpan;
import com.google.android.exoplayer2.util.Log;
import com.google.android.exoplayer2.util.Util;
import java.util.Arrays;
import java.util.Iterator;
import java.util.TreeSet;

/* loaded from: classes5.dex */
public final class CachedRegionTracker implements Cache.Listener {
    public static final int CACHED_TO_END = -2;
    public static final int NOT_CACHED = -1;

    /* renamed from: f */
    public static final String f27947f = "CachedRegionTracker";

    /* renamed from: a */
    public final Cache f27948a;

    /* renamed from: b */
    public final String f27949b;

    /* renamed from: c */
    public final ChunkIndex f27950c;

    /* renamed from: d */
    public final TreeSet<C4993a> f27951d = new TreeSet<>();

    /* renamed from: e */
    public final C4993a f27952e = new C4993a(0, 0);

    /* renamed from: com.google.android.exoplayer2.upstream.CachedRegionTracker$a */
    /* loaded from: classes5.dex */
    public static class C4993a implements Comparable<C4993a> {

        /* renamed from: e */
        public long f27953e;

        /* renamed from: f */
        public long f27954f;

        /* renamed from: g */
        public int f27955g;

        public C4993a(long j, long j2) {
            this.f27953e = j;
            this.f27954f = j2;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(C4993a c4993a) {
            return Util.compareLong(this.f27953e, c4993a.f27953e);
        }
    }

    public CachedRegionTracker(Cache cache, String str, ChunkIndex chunkIndex) {
        this.f27948a = cache;
        this.f27949b = str;
        this.f27950c = chunkIndex;
        synchronized (this) {
            Iterator<CacheSpan> descendingIterator = cache.addListener(str, this).descendingIterator();
            while (descendingIterator.hasNext()) {
                m21306a(descendingIterator.next());
            }
        }
    }

    /* renamed from: a */
    public final void m21306a(CacheSpan cacheSpan) {
        long j = cacheSpan.position;
        C4993a c4993a = new C4993a(j, cacheSpan.length + j);
        C4993a floor = this.f27951d.floor(c4993a);
        C4993a ceiling = this.f27951d.ceiling(c4993a);
        boolean m21307b = m21307b(floor, c4993a);
        if (m21307b(c4993a, ceiling)) {
            if (m21307b) {
                floor.f27954f = ceiling.f27954f;
                floor.f27955g = ceiling.f27955g;
            } else {
                c4993a.f27954f = ceiling.f27954f;
                c4993a.f27955g = ceiling.f27955g;
                this.f27951d.add(c4993a);
            }
            this.f27951d.remove(ceiling);
            return;
        }
        if (!m21307b) {
            int binarySearch = Arrays.binarySearch(this.f27950c.offsets, c4993a.f27954f);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            c4993a.f27955g = binarySearch;
            this.f27951d.add(c4993a);
            return;
        }
        floor.f27954f = c4993a.f27954f;
        int i = floor.f27955g;
        while (true) {
            ChunkIndex chunkIndex = this.f27950c;
            if (i >= chunkIndex.length - 1) {
                break;
            }
            int i2 = i + 1;
            if (chunkIndex.offsets[i2] > floor.f27954f) {
                break;
            } else {
                i = i2;
            }
        }
        floor.f27955g = i;
    }

    /* renamed from: b */
    public final boolean m21307b(@Nullable C4993a c4993a, @Nullable C4993a c4993a2) {
        return (c4993a == null || c4993a2 == null || c4993a.f27954f != c4993a2.f27953e) ? false : true;
    }

    public synchronized int getRegionEndTimeMs(long j) {
        int i;
        C4993a c4993a = this.f27952e;
        c4993a.f27953e = j;
        C4993a floor = this.f27951d.floor(c4993a);
        if (floor != null) {
            long j2 = floor.f27954f;
            if (j <= j2 && (i = floor.f27955g) != -1) {
                ChunkIndex chunkIndex = this.f27950c;
                if (i == chunkIndex.length - 1) {
                    if (j2 == chunkIndex.offsets[i] + chunkIndex.sizes[i]) {
                        return -2;
                    }
                }
                return (int) ((chunkIndex.timesUs[i] + ((chunkIndex.durationsUs[i] * (j2 - chunkIndex.offsets[i])) / chunkIndex.sizes[i])) / 1000);
            }
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanAdded(Cache cache, CacheSpan cacheSpan) {
        m21306a(cacheSpan);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public synchronized void onSpanRemoved(Cache cache, CacheSpan cacheSpan) {
        long j = cacheSpan.position;
        C4993a c4993a = new C4993a(j, cacheSpan.length + j);
        C4993a floor = this.f27951d.floor(c4993a);
        if (floor == null) {
            Log.m21489e(f27947f, "Removed a span we were not aware of");
            return;
        }
        this.f27951d.remove(floor);
        long j2 = floor.f27953e;
        long j3 = c4993a.f27953e;
        if (j2 < j3) {
            C4993a c4993a2 = new C4993a(j2, j3);
            int binarySearch = Arrays.binarySearch(this.f27950c.offsets, c4993a2.f27954f);
            if (binarySearch < 0) {
                binarySearch = (-binarySearch) - 2;
            }
            c4993a2.f27955g = binarySearch;
            this.f27951d.add(c4993a2);
        }
        long j4 = floor.f27954f;
        long j5 = c4993a.f27954f;
        if (j4 > j5) {
            C4993a c4993a3 = new C4993a(j5 + 1, j4);
            c4993a3.f27955g = floor.f27955g;
            this.f27951d.add(c4993a3);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.Listener
    public void onSpanTouched(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    public void release() {
        this.f27948a.removeListener(this.f27949b, this);
    }
}
