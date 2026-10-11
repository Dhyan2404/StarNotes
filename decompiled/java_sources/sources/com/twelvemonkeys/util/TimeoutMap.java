package com.twelvemonkeys.util;

import com.twelvemonkeys.util.AbstractDecoratedMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes10.dex */
public class TimeoutMap<K, V> extends AbstractDecoratedMap<K, V> implements ExpiringMap<K, V>, Serializable, Cloneable {
    protected long expiryTime;
    private volatile long nextExpiryTime;

    /* loaded from: classes10.dex */
    public class TimedEntry<K, V> extends AbstractDecoratedMap.BasicEntry<K, V> {
        private long mTimestamp;

        public TimedEntry(K k, V v) {
            super(k, v);
            this.mTimestamp = System.currentTimeMillis();
        }

        public final long expires() {
            return this.mTimestamp + TimeoutMap.this.expiryTime;
        }

        public final boolean isExpired() {
            return isExpiredBy(System.currentTimeMillis());
        }

        public final boolean isExpiredBy(long j) {
            return j > expires();
        }

        @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry, java.util.Map.Entry
        public V setValue(V v) {
            this.mTimestamp = System.currentTimeMillis();
            return (V) super.setValue(v);
        }
    }

    /* renamed from: com.twelvemonkeys.util.TimeoutMap$b */
    /* loaded from: classes10.dex */
    public class C17007b extends TimeoutMap<K, V>.AbstractC17009d<Map.Entry<K, V>> {
        public C17007b() {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m60764a();
        }
    }

    /* renamed from: com.twelvemonkeys.util.TimeoutMap$c */
    /* loaded from: classes10.dex */
    public class C17008c extends TimeoutMap<K, V>.AbstractC17009d<K> {
        public C17008c() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return m60764a().mKey;
        }
    }

    /* renamed from: com.twelvemonkeys.util.TimeoutMap$d */
    /* loaded from: classes10.dex */
    public abstract class AbstractC17009d<E> implements Iterator<E> {

        /* renamed from: e */
        public Iterator<Map.Entry<K, Map.Entry<K, V>>> f94379e;

        /* renamed from: f */
        public AbstractDecoratedMap.BasicEntry<K, V> f94380f;

        /* renamed from: g */
        public long f94381g;

        public AbstractC17009d() {
            this.f94379e = TimeoutMap.this.entries.entrySet().iterator();
            this.f94381g = System.currentTimeMillis();
        }

        /* renamed from: a */
        public AbstractDecoratedMap.BasicEntry<K, V> m60764a() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            AbstractDecoratedMap.BasicEntry<K, V> basicEntry = this.f94380f;
            this.f94380f = null;
            return basicEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f94380f != null) {
                return true;
            }
            while (this.f94380f == null && this.f94379e.hasNext()) {
                TimedEntry timedEntry = (TimedEntry) this.f94379e.next().getValue();
                if (!timedEntry.isExpiredBy(this.f94381g)) {
                    this.f94380f = timedEntry;
                    return true;
                }
                this.f94379e.remove();
                TimeoutMap.this.processRemoved(timedEntry);
            }
            return false;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f94380f = null;
            this.f94379e.remove();
        }
    }

    /* renamed from: com.twelvemonkeys.util.TimeoutMap$e */
    /* loaded from: classes10.dex */
    public class C17010e extends TimeoutMap<K, V>.AbstractC17009d<V> {
        public C17010e() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return m60764a().mValue;
        }
    }

    public TimeoutMap() {
        this.expiryTime = 60000L;
    }

    private synchronized void removeExpiredEntriesSynced(long j) {
        if (j > this.nextExpiryTime) {
            long j2 = Long.MAX_VALUE;
            this.nextExpiryTime = Long.MAX_VALUE;
            C17007b c17007b = new C17007b();
            while (c17007b.hasNext()) {
                long expires = ((TimedEntry) c17007b.next()).expires();
                if (expires < j2) {
                    j2 = expires;
                }
            }
            this.nextExpiryTime = j2;
        }
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        this.entries.clear();
        init();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        removeExpiredEntries();
        return this.entries.containsKey(obj);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsValue(Object obj) {
        return super.containsValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public /* bridge */ /* synthetic */ Map.Entry createEntry(Object obj, Object obj2) {
        return createEntry((TimeoutMap<K, V>) obj, obj2);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        removeExpiredEntries();
        return super.entrySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        TimedEntry timedEntry = (TimedEntry) this.entries.get(obj);
        if (timedEntry == null) {
            return null;
        }
        if (!timedEntry.isExpired()) {
            return timedEntry.getValue();
        }
        this.entries.remove(obj);
        processRemoved(timedEntry);
        return null;
    }

    public long getExpiryTime() {
        return this.expiryTime;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return size() <= 0;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        removeExpiredEntries();
        return super.keySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<Map.Entry<K, V>> newEntryIterator() {
        return new C17007b();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<K> newKeyIterator() {
        return new C17008c();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<V> newValueIterator() {
        return new C17010e();
    }

    @Override // com.twelvemonkeys.util.ExpiringMap
    public void processRemoved(Map.Entry entry) {
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        V v2;
        TimedEntry timedEntry = (TimedEntry) this.entries.get(k);
        if (timedEntry == null) {
            this.entries.put(k, createEntry((TimeoutMap<K, V>) k, (K) v));
            v2 = null;
        } else {
            v2 = timedEntry.mValue;
            timedEntry.setValue(v);
            timedEntry.recordAccess(this);
        }
        removeExpiredEntries();
        this.modCount++;
        return v2;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        TimedEntry timedEntry = (TimedEntry) this.entries.remove(obj);
        if (timedEntry != null) {
            return timedEntry.getValue();
        }
        return null;
    }

    public void removeExpiredEntries() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis > this.nextExpiryTime) {
            removeExpiredEntriesSynced(currentTimeMillis);
        }
    }

    public void setExpiryTime(long j) {
        long j2 = this.expiryTime;
        this.expiryTime = j;
        if (j < j2) {
            this.nextExpiryTime = 0L;
            removeExpiredEntries();
        }
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public int size() {
        removeExpiredEntries();
        return this.entries.size();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        removeExpiredEntries();
        return super.values();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public TimeoutMap<K, V>.TimedEntry<K, V> createEntry(K k, V v) {
        return new TimedEntry<>(k, v);
    }

    public TimeoutMap(Map<? extends K, ? extends V> map) {
        super(map);
        this.expiryTime = 60000L;
    }

    public TimeoutMap(long j) {
        this();
        this.expiryTime = j;
    }

    public TimeoutMap(Map<K, Map.Entry<K, V>> map, Map<? extends K, ? extends V> map2, long j) {
        super(map, map2);
        this.expiryTime = j;
    }
}
