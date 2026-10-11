package org.apache.commons.collections4.map;

import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections4.KeyValue;

/* loaded from: classes11.dex */
public final class StaticBucketMap<K, V> extends AbstractIterableMap<K, V> {

    /* renamed from: g */
    public static final int f105217g = 255;

    /* renamed from: e */
    public final C18790h<K, V>[] f105218e;

    /* renamed from: f */
    public final C18789g[] f105219f;

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$b */
    /* loaded from: classes11.dex */
    public class C18784b {

        /* renamed from: e */
        public final ArrayList<Map.Entry<K, V>> f105220e;

        /* renamed from: f */
        public int f105221f;

        /* renamed from: g */
        public Map.Entry<K, V> f105222g;

        public C18784b() {
            this.f105220e = new ArrayList<>();
        }

        /* renamed from: a */
        public Map.Entry<K, V> m66026a() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            Map.Entry<K, V> remove = this.f105220e.remove(r0.size() - 1);
            this.f105222g = remove;
            return remove;
        }

        public boolean hasNext() {
            if (this.f105220e.size() > 0) {
                return true;
            }
            while (this.f105221f < StaticBucketMap.this.f105218e.length) {
                synchronized (StaticBucketMap.this.f105219f[this.f105221f]) {
                    for (C18790h<K, V> c18790h = StaticBucketMap.this.f105218e[this.f105221f]; c18790h != null; c18790h = c18790h.f105231g) {
                        this.f105220e.add(c18790h);
                    }
                    this.f105221f++;
                    if (this.f105220e.size() > 0) {
                        return true;
                    }
                }
            }
            return false;
        }

        public void remove() {
            Map.Entry<K, V> entry = this.f105222g;
            if (entry == null) {
                throw new IllegalStateException();
            }
            StaticBucketMap.this.remove(entry.getKey());
            this.f105222g = null;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$c */
    /* loaded from: classes11.dex */
    public class C18785c extends StaticBucketMap<K, V>.C18784b implements Iterator<Map.Entry<K, V>> {
        public C18785c() {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m66026a();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$d */
    /* loaded from: classes11.dex */
    public class C18786d extends AbstractSet<Map.Entry<K, V>> {
        public C18786d() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            StaticBucketMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            int m66025e = StaticBucketMap.this.m66025e(entry.getKey());
            synchronized (StaticBucketMap.this.f105219f[m66025e]) {
                for (C18790h<K, V> c18790h = StaticBucketMap.this.f105218e[m66025e]; c18790h != null; c18790h = c18790h.f105231g) {
                    if (c18790h.equals(entry)) {
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C18785c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int m66025e = StaticBucketMap.this.m66025e(entry.getKey());
            synchronized (StaticBucketMap.this.f105219f[m66025e]) {
                for (C18790h<K, V> c18790h = StaticBucketMap.this.f105218e[m66025e]; c18790h != null; c18790h = c18790h.f105231g) {
                    if (c18790h.equals(entry)) {
                        StaticBucketMap.this.remove(c18790h.getKey());
                        return true;
                    }
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return StaticBucketMap.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$e */
    /* loaded from: classes11.dex */
    public class C18787e extends StaticBucketMap<K, V>.C18784b implements Iterator<K> {
        public C18787e() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return m66026a().getKey();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$f */
    /* loaded from: classes11.dex */
    public class C18788f extends AbstractSet<K> {
        public C18788f() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            StaticBucketMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return StaticBucketMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new C18787e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int m66025e = StaticBucketMap.this.m66025e(obj);
            synchronized (StaticBucketMap.this.f105219f[m66025e]) {
                for (C18790h<K, V> c18790h = StaticBucketMap.this.f105218e[m66025e]; c18790h != null; c18790h = c18790h.f105231g) {
                    K key = c18790h.getKey();
                    if (key != obj && (key == null || !key.equals(obj))) {
                    }
                    StaticBucketMap.this.remove(key);
                    return true;
                }
                return false;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return StaticBucketMap.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$g */
    /* loaded from: classes11.dex */
    public static final class C18789g {

        /* renamed from: a */
        public int f105228a;

        public C18789g() {
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$h */
    /* loaded from: classes11.dex */
    public static final class C18790h<K, V> implements Map.Entry<K, V>, KeyValue<K, V> {

        /* renamed from: e */
        public K f105229e;

        /* renamed from: f */
        public V f105230f;

        /* renamed from: g */
        public C18790h<K, V> f105231g;

        public C18790h() {
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f105229e;
            if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                V v = this.f105230f;
                if (v == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (v.equals(entry.getValue())) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        public K getKey() {
            return this.f105229e;
        }

        @Override // java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        public V getValue() {
            return this.f105230f;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f105229e;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f105230f;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            V v2 = this.f105230f;
            this.f105230f = v;
            return v2;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$i */
    /* loaded from: classes11.dex */
    public class C18791i extends StaticBucketMap<K, V>.C18784b implements Iterator<V> {
        public C18791i() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return m66026a().getValue();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.StaticBucketMap$j */
    /* loaded from: classes11.dex */
    public class C18792j extends AbstractCollection<V> {
        public C18792j() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            StaticBucketMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C18791i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return StaticBucketMap.this.size();
        }
    }

    public StaticBucketMap() {
        this(255);
    }

    public void atomic(Runnable runnable) {
        runnable.getClass();
        m66024d(runnable, 0);
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        for (int i = 0; i < this.f105218e.length; i++) {
            C18789g c18789g = this.f105219f[i];
            synchronized (c18789g) {
                this.f105218e[i] = null;
                c18789g.f105228a = 0;
            }
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsKey(Object obj) {
        int m66025e = m66025e(obj);
        synchronized (this.f105219f[m66025e]) {
            for (C18790h<K, V> c18790h = this.f105218e[m66025e]; c18790h != null; c18790h = c18790h.f105231g) {
                K k = c18790h.f105229e;
                if (k != obj && (k == null || !k.equals(obj))) {
                }
                return true;
            }
            return false;
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsValue(Object obj) {
        for (int i = 0; i < this.f105218e.length; i++) {
            synchronized (this.f105219f[i]) {
                for (C18790h<K, V> c18790h = this.f105218e[i]; c18790h != null; c18790h = c18790h.f105231g) {
                    V v = c18790h.f105230f;
                    if (v != obj && (v == null || !v.equals(obj))) {
                    }
                    return true;
                }
            }
        }
        return false;
    }

    /* renamed from: d */
    public final void m66024d(Runnable runnable, int i) {
        if (i >= this.f105218e.length) {
            runnable.run();
            return;
        }
        synchronized (this.f105219f[i]) {
            m66024d(runnable, i + 1);
        }
    }

    /* renamed from: e */
    public final int m66025e(Object obj) {
        if (obj == null) {
            return 0;
        }
        int hashCode = obj.hashCode();
        int i = hashCode + (~(hashCode << 15));
        int i2 = i ^ (i >>> 10);
        int i3 = i2 + (i2 << 3);
        int i4 = i3 ^ (i3 >>> 6);
        int i5 = i4 + (~(i4 << 11));
        int length = (i5 ^ (i5 >>> 16)) % this.f105218e.length;
        return length < 0 ? length * (-1) : length;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        return new C18786d();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V get(Object obj) {
        int m66025e = m66025e(obj);
        synchronized (this.f105219f[m66025e]) {
            for (C18790h<K, V> c18790h = this.f105218e[m66025e]; c18790h != null; c18790h = c18790h.f105231g) {
                K k = c18790h.f105229e;
                if (k != obj && (k == null || !k.equals(obj))) {
                }
                return c18790h.f105230f;
            }
            return null;
        }
    }

    @Override // java.util.Map
    public int hashCode() {
        int i = 0;
        for (int i2 = 0; i2 < this.f105218e.length; i2++) {
            synchronized (this.f105219f[i2]) {
                for (C18790h<K, V> c18790h = this.f105218e[i2]; c18790h != null; c18790h = c18790h.f105231g) {
                    i += c18790h.hashCode();
                }
            }
        }
        return i;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        return new C18788f();
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        int m66025e = m66025e(k);
        synchronized (this.f105219f[m66025e]) {
            C18790h<K, V> c18790h = this.f105218e[m66025e];
            if (c18790h == null) {
                C18790h<K, V> c18790h2 = new C18790h<>();
                c18790h2.f105229e = k;
                c18790h2.f105230f = v;
                this.f105218e[m66025e] = c18790h2;
                this.f105219f[m66025e].f105228a++;
                return null;
            }
            C18790h<K, V> c18790h3 = c18790h;
            while (c18790h != null) {
                K k2 = c18790h.f105229e;
                if (k2 != k && (k2 == null || !k2.equals(k))) {
                    c18790h3 = c18790h;
                    c18790h = c18790h.f105231g;
                }
                V v2 = c18790h.f105230f;
                c18790h.f105230f = v;
                return v2;
            }
            C18790h<K, V> c18790h4 = new C18790h<>();
            c18790h4.f105229e = k;
            c18790h4.f105230f = v;
            c18790h3.f105231g = c18790h4;
            this.f105219f[m66025e].f105228a++;
            return null;
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        int m66025e = m66025e(obj);
        synchronized (this.f105219f[m66025e]) {
            C18790h<K, V> c18790h = null;
            for (C18790h<K, V> c18790h2 = this.f105218e[m66025e]; c18790h2 != null; c18790h2 = c18790h2.f105231g) {
                K k = c18790h2.f105229e;
                if (k != obj && (k == null || !k.equals(obj))) {
                    c18790h = c18790h2;
                }
                if (c18790h == null) {
                    this.f105218e[m66025e] = c18790h2.f105231g;
                } else {
                    c18790h.f105231g = c18790h2.f105231g;
                }
                C18789g c18789g = this.f105219f[m66025e];
                c18789g.f105228a--;
                return c18790h2.f105230f;
            }
            return null;
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public int size() {
        int i = 0;
        for (int i2 = 0; i2 < this.f105218e.length; i2++) {
            synchronized (this.f105219f[i2]) {
                i += this.f105219f[i2].f105228a;
            }
        }
        return i;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Collection<V> values() {
        return new C18792j();
    }

    public StaticBucketMap(int i) {
        int max = Math.max(17, i);
        max = max % 2 == 0 ? max - 1 : max;
        this.f105218e = new C18790h[max];
        this.f105219f = new C18789g[max];
        for (int i2 = 0; i2 < max; i2++) {
            this.f105219f[i2] = new C18789g();
        }
    }
}
