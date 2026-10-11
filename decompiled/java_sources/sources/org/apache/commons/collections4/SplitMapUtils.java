package org.apache.commons.collections4;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.collection.UnmodifiableCollection;
import org.apache.commons.collections4.iterators.UnmodifiableMapIterator;
import org.apache.commons.collections4.map.EntrySetToMapIteratorAdapter;
import org.apache.commons.collections4.map.UnmodifiableEntrySet;
import org.apache.commons.collections4.set.UnmodifiableSet;

/* loaded from: classes11.dex */
public class SplitMapUtils {

    /* renamed from: org.apache.commons.collections4.SplitMapUtils$b */
    /* loaded from: classes11.dex */
    public static class C18723b<K, V> implements IterableMap<K, V>, Unmodifiable {

        /* renamed from: e */
        public final Get<K, V> f104946e;

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean containsKey(Object obj) {
            return this.f104946e.containsKey(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean containsValue(Object obj) {
            return this.f104946e.containsValue(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public Set<Map.Entry<K, V>> entrySet() {
            return UnmodifiableEntrySet.unmodifiableEntrySet(this.f104946e.entrySet());
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof C18723b) && ((C18723b) obj).f104946e.equals(this.f104946e);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public V get(Object obj) {
            return this.f104946e.get(obj);
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f104946e.hashCode() | 360074000;
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public boolean isEmpty() {
            return this.f104946e.isEmpty();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public Set<K> keySet() {
            return UnmodifiableSet.unmodifiableSet(this.f104946e.keySet());
        }

        @Override // org.apache.commons.collections4.IterableGet
        public MapIterator<K, V> mapIterator() {
            Get<K, V> get = this.f104946e;
            return UnmodifiableMapIterator.unmodifiableMapIterator(get instanceof IterableGet ? ((IterableGet) get).mapIterator() : new EntrySetToMapIteratorAdapter(get.entrySet()));
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public V put(K k, V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void putAll(Map<? extends K, ? extends V> map) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public V remove(Object obj) {
            return this.f104946e.remove(obj);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public int size() {
            return this.f104946e.size();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Get
        public Collection<V> values() {
            return UnmodifiableCollection.unmodifiableCollection(this.f104946e.values());
        }

        public C18723b(Get<K, V> get) {
            this.f104946e = get;
        }
    }

    /* renamed from: org.apache.commons.collections4.SplitMapUtils$c */
    /* loaded from: classes11.dex */
    public static class C18724c<K, V> implements Map<K, V>, Put<K, V> {

        /* renamed from: e */
        public final Put<K, V> f104947e;

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void clear() {
            this.f104947e.clear();
        }

        @Override // java.util.Map
        public boolean containsKey(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean containsValue(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return (obj instanceof C18724c) && ((C18724c) obj).f104947e.equals(this.f104947e);
        }

        @Override // java.util.Map
        public V get(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f104947e.hashCode() | 360220320;
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public V put(K k, V v) {
            return (V) this.f104947e.put(k, v);
        }

        @Override // java.util.Map, org.apache.commons.collections4.Put
        public void putAll(Map<? extends K, ? extends V> map) {
            this.f104947e.putAll(map);
        }

        @Override // java.util.Map
        public V remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public int size() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Map
        public Collection<V> values() {
            throw new UnsupportedOperationException();
        }

        public C18724c(Put<K, V> put) {
            this.f104947e = put;
        }
    }

    public static <K, V> IterableMap<K, V> readableMap(Get<K, V> get) {
        if (get != null) {
            return get instanceof Map ? get instanceof IterableMap ? (IterableMap) get : MapUtils.iterableMap((Map) get) : new C18723b(get);
        }
        throw new NullPointerException("Get must not be null");
    }

    public static <K, V> Map<K, V> writableMap(Put<K, V> put) {
        if (put != null) {
            return put instanceof Map ? (Map) put : new C18724c(put);
        }
        throw new NullPointerException("Put must not be null");
    }
}
