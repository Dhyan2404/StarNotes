package com.google.common.cache;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Maps;
import com.sunia.HTREnginev2.e5j;
import com.sunia.HTREnginev2.rnf;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ExecutionException;

@rnf
@GwtCompatible
/* loaded from: classes6.dex */
public abstract class AbstractCache<K, V> implements Cache<K, V> {

    /* loaded from: classes6.dex */
    public static final class SimpleStatsCounter implements StatsCounter {

        /* renamed from: a */
        public final e5j f33667a = LongAddables.m25996a();

        /* renamed from: b */
        public final e5j f33668b = LongAddables.m25996a();

        /* renamed from: c */
        public final e5j f33669c = LongAddables.m25996a();

        /* renamed from: d */
        public final e5j f33670d = LongAddables.m25996a();

        /* renamed from: e */
        public final e5j f33671e = LongAddables.m25996a();

        /* renamed from: f */
        public final e5j f33672f = LongAddables.m25996a();

        /* renamed from: a */
        public static long m25879a(long j) {
            if (j >= 0) {
                return j;
            }
            return Long.MAX_VALUE;
        }

        public void incrementBy(StatsCounter statsCounter) {
            CacheStats snapshot = statsCounter.snapshot();
            this.f33667a.add(snapshot.hitCount());
            this.f33668b.add(snapshot.missCount());
            this.f33669c.add(snapshot.loadSuccessCount());
            this.f33670d.add(snapshot.loadExceptionCount());
            this.f33671e.add(snapshot.totalLoadTime());
            this.f33672f.add(snapshot.evictionCount());
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordEviction() {
            this.f33672f.increment();
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordHits(int i) {
            this.f33667a.add(i);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadException(long j) {
            this.f33670d.increment();
            this.f33671e.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordLoadSuccess(long j) {
            this.f33669c.increment();
            this.f33671e.add(j);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public void recordMisses(int i) {
            this.f33668b.add(i);
        }

        @Override // com.google.common.cache.AbstractCache.StatsCounter
        public CacheStats snapshot() {
            return new CacheStats(m25879a(this.f33667a.sum()), m25879a(this.f33668b.sum()), m25879a(this.f33669c.sum()), m25879a(this.f33670d.sum()), m25879a(this.f33671e.sum()), m25879a(this.f33672f.sum()));
        }
    }

    /* loaded from: classes6.dex */
    public interface StatsCounter {
        void recordEviction();

        void recordHits(int i);

        void recordLoadException(long j);

        void recordLoadSuccess(long j);

        void recordMisses(int i);

        CacheStats snapshot();
    }

    @Override // com.google.common.cache.Cache
    public ConcurrentMap<K, V> asMap() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void cleanUp() {
    }

    @Override // com.google.common.cache.Cache
    public V get(K k, Callable<? extends V> callable) throws ExecutionException {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public ImmutableMap<K, V> getAllPresent(Iterable<? extends Object> iterable) {
        V ifPresent;
        LinkedHashMap newLinkedHashMap = Maps.newLinkedHashMap();
        for (Object obj : iterable) {
            if (!newLinkedHashMap.containsKey(obj) && (ifPresent = getIfPresent(obj)) != null) {
                newLinkedHashMap.put(obj, ifPresent);
            }
        }
        return ImmutableMap.copyOf((Map) newLinkedHashMap);
    }

    @Override // com.google.common.cache.Cache
    public void invalidate(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll(Iterable<? extends Object> iterable) {
        Iterator<? extends Object> it2 = iterable.iterator();
        while (it2.hasNext()) {
            invalidate(it2.next());
        }
    }

    @Override // com.google.common.cache.Cache
    public void put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // com.google.common.cache.Cache
    public long size() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public CacheStats stats() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.cache.Cache
    public void invalidateAll() {
        throw new UnsupportedOperationException();
    }
}
