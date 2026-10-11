package com.twelvemonkeys.util;

import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes10.dex */
abstract class AbstractDecoratedMap<K, V> extends AbstractMap<K, V> implements Map<K, V>, Serializable, Cloneable {
    protected Map<K, Map.Entry<K, V>> entries;
    private volatile transient Set<Map.Entry<K, V>> entrySet;
    private volatile transient Set<K> keySet;
    protected volatile transient int modCount;
    private volatile transient Collection<V> values;

    /* loaded from: classes10.dex */
    public static class BasicEntry<K, V> implements Map.Entry<K, V>, Serializable {
        K mKey;
        V mValue;

        public BasicEntry(K k, V v) {
            this.mKey = k;
            this.mValue = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.mKey;
            Object key = entry.getKey();
            if (k == key || (k != null && k.equals(key))) {
                V v = this.mValue;
                Object value = entry.getValue();
                if (v == value) {
                    return true;
                }
                if (v != null && v.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.mKey;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.mValue;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.mKey;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.mValue;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        public void recordAccess(Map<K, V> map) {
        }

        public void recordRemoval(Map<K, V> map) {
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.mValue;
            this.mValue = v;
            return v2;
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* loaded from: classes10.dex */
    public class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractDecoratedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Map.Entry<K, V> entry2 = AbstractDecoratedMap.this.entries.get(entry.getKey());
            return entry2 != null && entry2.equals(entry);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return AbstractDecoratedMap.this.newEntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return (obj instanceof Map.Entry) && AbstractDecoratedMap.this.removeEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractDecoratedMap.this.size();
        }
    }

    /* loaded from: classes10.dex */
    public class KeySet extends AbstractSet<K> {
        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            AbstractDecoratedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return AbstractDecoratedMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return AbstractDecoratedMap.this.newKeyIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return AbstractDecoratedMap.this.remove(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractDecoratedMap.this.size();
        }
    }

    /* loaded from: classes10.dex */
    public class Values extends AbstractCollection<V> {
        public Values() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractDecoratedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractDecoratedMap.this.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return AbstractDecoratedMap.this.newValueIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractDecoratedMap.this.size();
        }
    }

    public AbstractDecoratedMap() {
        this(new HashMap(), null);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.entries.clear();
        this.modCount++;
        init();
    }

    @Override // java.util.AbstractMap
    public Object clone() throws CloneNotSupportedException {
        AbstractDecoratedMap abstractDecoratedMap = (AbstractDecoratedMap) super.clone();
        abstractDecoratedMap.values = null;
        abstractDecoratedMap.entrySet = null;
        abstractDecoratedMap.keySet = null;
        return abstractDecoratedMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return this.entries.containsKey(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        for (V v : values()) {
            if (v == obj) {
                return true;
            }
            if (v != null && v.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    public Map.Entry<K, V> createEntry(K k, V v) {
        return new BasicEntry(k, v);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        Set<Map.Entry<K, V>> set = this.entrySet;
        if (set != null) {
            return set;
        }
        EntrySet entrySet = new EntrySet();
        this.entrySet = entrySet;
        return entrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public abstract V get(Object obj);

    public Map.Entry<K, V> getEntry(K k) {
        return this.entries.get(k);
    }

    public void init() {
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean isEmpty() {
        return this.entries.isEmpty();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        Set<K> set = this.keySet;
        if (set != null) {
            return set;
        }
        KeySet keySet = new KeySet();
        this.keySet = keySet;
        return keySet;
    }

    public abstract Iterator<Map.Entry<K, V>> newEntryIterator();

    public abstract Iterator<K> newKeyIterator();

    public abstract Iterator<V> newValueIterator();

    @Override // java.util.AbstractMap, java.util.Map
    public abstract V put(K k, V v);

    @Override // java.util.AbstractMap, java.util.Map
    public abstract V remove(Object obj);

    public Map.Entry<K, V> removeEntry(Map.Entry<K, V> entry) {
        if (entry == null) {
            return null;
        }
        Map.Entry<K, V> entry2 = getEntry(entry.getKey());
        if (entry2 != entry && (entry2 == null || !entry2.equals(entry))) {
            return null;
        }
        remove(entry.getKey());
        return entry;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.entries.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        Collection<V> collection = this.values;
        if (collection != null) {
            return collection;
        }
        Values values = new Values();
        this.values = values;
        return values;
    }

    public AbstractDecoratedMap(Map<? extends K, ? extends V> map) {
        this(new HashMap(), map);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractDecoratedMap(Map<K, Map.Entry<K, V>> map, Map<? extends K, ? extends V> map2) {
        Map.Entry[] entryArr = null;
        this.entrySet = null;
        this.keySet = null;
        this.values = null;
        if (map != null) {
            if (map == map2) {
                Set<Map.Entry<? extends K, ? extends V>> entrySet = map2.entrySet();
                Map.Entry[] entryArr2 = (Map.Entry[]) entrySet.toArray(new Map.Entry[entrySet.size()]);
                map.clear();
                entryArr = entryArr2;
                map2 = null;
            } else if (!map.isEmpty()) {
                throw new IllegalArgumentException("backing must be empty");
            }
            this.entries = map;
            init();
            if (map2 != null) {
                putAll(map2);
                return;
            }
            if (entryArr != null) {
                for (Map.Entry entry : entryArr) {
                    put(entry.getKey(), entry.getValue());
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException("backing == null");
    }
}
