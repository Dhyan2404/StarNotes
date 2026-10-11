package com.twelvemonkeys.util;

import java.lang.ref.WeakReference;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes10.dex */
public class WeakWeakMap<K, V> extends WeakHashMap<K, V> {

    /* renamed from: com.twelvemonkeys.util.WeakWeakMap$a */
    /* loaded from: classes10.dex */
    public class C17011a extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.twelvemonkeys.util.WeakWeakMap$a$a */
        /* loaded from: classes10.dex */
        public class a implements Iterator<Map.Entry<K, V>> {

            /* renamed from: e */
            public final Iterator<Map.Entry<K, WeakReference<V>>> f94385e;

            /* renamed from: com.twelvemonkeys.util.WeakWeakMap$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes10.dex */
            public class C20614a implements Map.Entry<K, V> {

                /* renamed from: e */
                public final Map.Entry<K, WeakReference<V>> f94387e;

                public C20614a() {
                    this.f94387e = a.this.f94385e.next();
                }

                @Override // java.util.Map.Entry
                public boolean equals(Object obj) {
                    return this.f94387e.equals(obj);
                }

                @Override // java.util.Map.Entry
                public K getKey() {
                    return this.f94387e.getKey();
                }

                @Override // java.util.Map.Entry
                public V getValue() {
                    return this.f94387e.getValue().get();
                }

                @Override // java.util.Map.Entry
                public int hashCode() {
                    return this.f94387e.hashCode();
                }

                @Override // java.util.Map.Entry
                public V setValue(V v) {
                    WeakReference<V> value = this.f94387e.setValue(new WeakReference<>(v));
                    if (value != null) {
                        return value.get();
                    }
                    return null;
                }

                public String toString() {
                    return this.f94387e.toString();
                }
            }

            public a() {
                this.f94385e = WeakWeakMap.super.entrySet().iterator();
            }

            @Override // java.util.Iterator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return new C20614a();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f94385e.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f94385e.remove();
            }
        }

        public C17011a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return WeakWeakMap.this.size();
        }
    }

    /* renamed from: com.twelvemonkeys.util.WeakWeakMap$b */
    /* loaded from: classes10.dex */
    public class C17012b extends AbstractCollection<V> {

        /* renamed from: com.twelvemonkeys.util.WeakWeakMap$b$a */
        /* loaded from: classes10.dex */
        public class a implements Iterator<V> {

            /* renamed from: e */
            public Iterator<WeakReference<V>> f94390e;

            public a() {
                this.f94390e = WeakWeakMap.super.values().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f94390e.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                return this.f94390e.next().get();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f94390e.remove();
            }
        }

        public C17012b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return WeakWeakMap.this.size();
        }
    }

    public WeakWeakMap() {
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        for (V v : values()) {
            if (obj == v) {
                return true;
            }
            if (v != null && v.equals(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return new C17011a();
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        WeakReference weakReference = (WeakReference) super.get(obj);
        if (weakReference != null) {
            return (V) weakReference.get();
        }
        return null;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        return (V) super.put(k, new WeakReference(v));
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        WeakReference weakReference = (WeakReference) super.remove(obj);
        if (weakReference != null) {
            return (V) weakReference.get();
        }
        return null;
    }

    @Override // java.util.WeakHashMap, java.util.AbstractMap, java.util.Map
    public Collection<V> values() {
        return new C17012b();
    }

    public WeakWeakMap(int i) {
        super(i);
    }

    public WeakWeakMap(int i, float f) {
        super(i, f);
    }

    public WeakWeakMap(Map<? extends K, ? extends V> map) {
        super(map);
    }
}
