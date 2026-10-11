package com.google.gson.internal;

import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes6.dex */
public final class LinkedTreeMap<K, V> extends AbstractMap<K, V> implements Serializable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Comparator<Comparable> NATURAL_ORDER = new C6527a();
    private final boolean allowNullValues;
    private final Comparator<? super K> comparator;
    private LinkedTreeMap<K, V>.C6528b entrySet;
    final C6531e<K, V> header;
    private LinkedTreeMap<K, V>.C6529c keySet;
    int modCount;
    C6531e<K, V> root;
    int size;

    /* renamed from: com.google.gson.internal.LinkedTreeMap$a */
    /* loaded from: classes6.dex */
    public class C6527a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$b */
    /* loaded from: classes6.dex */
    public class C6528b extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$b$a */
        /* loaded from: classes6.dex */
        public class a extends LinkedTreeMap<K, V>.AbstractC6530d<Map.Entry<K, V>> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> next() {
                return m28248a();
            }
        }

        public C6528b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && LinkedTreeMap.this.findByEntry((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            C6531e<K, V> findByEntry;
            if (!(obj instanceof Map.Entry) || (findByEntry = LinkedTreeMap.this.findByEntry((Map.Entry) obj)) == null) {
                return false;
            }
            LinkedTreeMap.this.removeInternal(findByEntry, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$c */
    /* loaded from: classes6.dex */
    public final class C6529c extends AbstractSet<K> {

        /* renamed from: com.google.gson.internal.LinkedTreeMap$c$a */
        /* loaded from: classes6.dex */
        public class a extends LinkedTreeMap<K, V>.AbstractC6530d<K> {
            public a() {
                super();
            }

            @Override // java.util.Iterator
            public K next() {
                return m28248a().f36167j;
            }
        }

        public C6529c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            LinkedTreeMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return LinkedTreeMap.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            return LinkedTreeMap.this.removeInternalByKey(obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return LinkedTreeMap.this.size;
        }
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$d */
    /* loaded from: classes6.dex */
    public abstract class AbstractC6530d<T> implements Iterator<T> {

        /* renamed from: e */
        public C6531e<K, V> f36158e;

        /* renamed from: f */
        public C6531e<K, V> f36159f = null;

        /* renamed from: g */
        public int f36160g;

        public AbstractC6530d() {
            this.f36158e = LinkedTreeMap.this.header.f36165h;
            this.f36160g = LinkedTreeMap.this.modCount;
        }

        /* renamed from: a */
        public final C6531e<K, V> m28248a() {
            C6531e<K, V> c6531e = this.f36158e;
            LinkedTreeMap linkedTreeMap = LinkedTreeMap.this;
            if (c6531e == linkedTreeMap.header) {
                throw new NoSuchElementException();
            }
            if (linkedTreeMap.modCount != this.f36160g) {
                throw new ConcurrentModificationException();
            }
            this.f36158e = c6531e.f36165h;
            this.f36159f = c6531e;
            return c6531e;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f36158e != LinkedTreeMap.this.header;
        }

        @Override // java.util.Iterator
        public final void remove() {
            C6531e<K, V> c6531e = this.f36159f;
            if (c6531e == null) {
                throw new IllegalStateException();
            }
            LinkedTreeMap.this.removeInternal(c6531e, true);
            this.f36159f = null;
            this.f36160g = LinkedTreeMap.this.modCount;
        }
    }

    public LinkedTreeMap() {
        this(NATURAL_ORDER, true);
    }

    private static boolean equal(Object obj, Object obj2) {
        return Objects.equals(obj, obj2);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private void rebalance(C6531e<K, V> c6531e, boolean z) {
        while (c6531e != null) {
            C6531e<K, V> c6531e2 = c6531e.f36163f;
            C6531e<K, V> c6531e3 = c6531e.f36164g;
            int i = c6531e2 != null ? c6531e2.f36170m : 0;
            int i2 = c6531e3 != null ? c6531e3.f36170m : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                C6531e<K, V> c6531e4 = c6531e3.f36163f;
                C6531e<K, V> c6531e5 = c6531e3.f36164g;
                int i4 = (c6531e4 != null ? c6531e4.f36170m : 0) - (c6531e5 != null ? c6531e5.f36170m : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    rotateLeft(c6531e);
                } else {
                    rotateRight(c6531e3);
                    rotateLeft(c6531e);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                C6531e<K, V> c6531e6 = c6531e2.f36163f;
                C6531e<K, V> c6531e7 = c6531e2.f36164g;
                int i5 = (c6531e6 != null ? c6531e6.f36170m : 0) - (c6531e7 != null ? c6531e7.f36170m : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    rotateRight(c6531e);
                } else {
                    rotateLeft(c6531e2);
                    rotateRight(c6531e);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                c6531e.f36170m = i + 1;
                if (z) {
                    return;
                }
            } else {
                c6531e.f36170m = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            c6531e = c6531e.f36162e;
        }
    }

    private void replaceInParent(C6531e<K, V> c6531e, C6531e<K, V> c6531e2) {
        C6531e<K, V> c6531e3 = c6531e.f36162e;
        c6531e.f36162e = null;
        if (c6531e2 != null) {
            c6531e2.f36162e = c6531e3;
        }
        if (c6531e3 == null) {
            this.root = c6531e2;
        } else if (c6531e3.f36163f == c6531e) {
            c6531e3.f36163f = c6531e2;
        } else {
            c6531e3.f36164g = c6531e2;
        }
    }

    private void rotateLeft(C6531e<K, V> c6531e) {
        C6531e<K, V> c6531e2 = c6531e.f36163f;
        C6531e<K, V> c6531e3 = c6531e.f36164g;
        C6531e<K, V> c6531e4 = c6531e3.f36163f;
        C6531e<K, V> c6531e5 = c6531e3.f36164g;
        c6531e.f36164g = c6531e4;
        if (c6531e4 != null) {
            c6531e4.f36162e = c6531e;
        }
        replaceInParent(c6531e, c6531e3);
        c6531e3.f36163f = c6531e;
        c6531e.f36162e = c6531e3;
        int max = Math.max(c6531e2 != null ? c6531e2.f36170m : 0, c6531e4 != null ? c6531e4.f36170m : 0) + 1;
        c6531e.f36170m = max;
        c6531e3.f36170m = Math.max(max, c6531e5 != null ? c6531e5.f36170m : 0) + 1;
    }

    private void rotateRight(C6531e<K, V> c6531e) {
        C6531e<K, V> c6531e2 = c6531e.f36163f;
        C6531e<K, V> c6531e3 = c6531e.f36164g;
        C6531e<K, V> c6531e4 = c6531e2.f36163f;
        C6531e<K, V> c6531e5 = c6531e2.f36164g;
        c6531e.f36163f = c6531e5;
        if (c6531e5 != null) {
            c6531e5.f36162e = c6531e;
        }
        replaceInParent(c6531e, c6531e2);
        c6531e2.f36164g = c6531e;
        c6531e.f36162e = c6531e2;
        int max = Math.max(c6531e3 != null ? c6531e3.f36170m : 0, c6531e5 != null ? c6531e5.f36170m : 0) + 1;
        c6531e.f36170m = max;
        c6531e2.f36170m = Math.max(max, c6531e4 != null ? c6531e4.f36170m : 0) + 1;
    }

    private Object writeReplace() throws ObjectStreamException {
        return new LinkedHashMap(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        this.root = null;
        this.size = 0;
        this.modCount++;
        C6531e<K, V> c6531e = this.header;
        c6531e.f36166i = c6531e;
        c6531e.f36165h = c6531e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        return findByObject(obj) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        LinkedTreeMap<K, V>.C6528b c6528b = this.entrySet;
        if (c6528b != null) {
            return c6528b;
        }
        LinkedTreeMap<K, V>.C6528b c6528b2 = new C6528b();
        this.entrySet = c6528b2;
        return c6528b2;
    }

    public C6531e<K, V> find(K k, boolean z) {
        int i;
        C6531e<K, V> c6531e;
        Comparator<? super K> comparator = this.comparator;
        C6531e<K, V> c6531e2 = this.root;
        if (c6531e2 != null) {
            Comparable comparable = comparator == NATURAL_ORDER ? (Comparable) k : null;
            while (true) {
                i = comparable != null ? comparable.compareTo(c6531e2.f36167j) : comparator.compare(k, c6531e2.f36167j);
                if (i == 0) {
                    return c6531e2;
                }
                C6531e<K, V> c6531e3 = i < 0 ? c6531e2.f36163f : c6531e2.f36164g;
                if (c6531e3 == null) {
                    break;
                }
                c6531e2 = c6531e3;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        C6531e<K, V> c6531e4 = this.header;
        if (c6531e2 != null) {
            c6531e = new C6531e<>(this.allowNullValues, c6531e2, k, c6531e4, c6531e4.f36166i);
            if (i < 0) {
                c6531e2.f36163f = c6531e;
            } else {
                c6531e2.f36164g = c6531e;
            }
            rebalance(c6531e2, true);
        } else {
            if (comparator == NATURAL_ORDER && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName() + " is not Comparable");
            }
            c6531e = new C6531e<>(this.allowNullValues, c6531e2, k, c6531e4, c6531e4.f36166i);
            this.root = c6531e;
        }
        this.size++;
        this.modCount++;
        return c6531e;
    }

    public C6531e<K, V> findByEntry(Map.Entry<?, ?> entry) {
        C6531e<K, V> findByObject = findByObject(entry.getKey());
        if (findByObject != null && equal(findByObject.f36169l, entry.getValue())) {
            return findByObject;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C6531e<K, V> findByObject(Object obj) {
        if (obj == 0) {
            return null;
        }
        try {
            return find(obj, false);
        } catch (ClassCastException unused) {
            return null;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        C6531e<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            return findByObject.f36169l;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<K> keySet() {
        LinkedTreeMap<K, V>.C6529c c6529c = this.keySet;
        if (c6529c != null) {
            return c6529c;
        }
        LinkedTreeMap<K, V>.C6529c c6529c2 = new C6529c();
        this.keySet = c6529c2;
        return c6529c2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CanIgnoreReturnValue
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        if (v == null && !this.allowNullValues) {
            throw new NullPointerException("value == null");
        }
        C6531e<K, V> find = find(k, true);
        V v2 = find.f36169l;
        find.f36169l = v;
        return v2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        C6531e<K, V> removeInternalByKey = removeInternalByKey(obj);
        if (removeInternalByKey != null) {
            return removeInternalByKey.f36169l;
        }
        return null;
    }

    public void removeInternal(C6531e<K, V> c6531e, boolean z) {
        int i;
        if (z) {
            C6531e<K, V> c6531e2 = c6531e.f36166i;
            c6531e2.f36165h = c6531e.f36165h;
            c6531e.f36165h.f36166i = c6531e2;
        }
        C6531e<K, V> c6531e3 = c6531e.f36163f;
        C6531e<K, V> c6531e4 = c6531e.f36164g;
        C6531e<K, V> c6531e5 = c6531e.f36162e;
        int i2 = 0;
        if (c6531e3 == null || c6531e4 == null) {
            if (c6531e3 != null) {
                replaceInParent(c6531e, c6531e3);
                c6531e.f36163f = null;
            } else if (c6531e4 != null) {
                replaceInParent(c6531e, c6531e4);
                c6531e.f36164g = null;
            } else {
                replaceInParent(c6531e, null);
            }
            rebalance(c6531e5, false);
            this.size--;
            this.modCount++;
            return;
        }
        C6531e<K, V> m28250b = c6531e3.f36170m > c6531e4.f36170m ? c6531e3.m28250b() : c6531e4.m28249a();
        removeInternal(m28250b, false);
        C6531e<K, V> c6531e6 = c6531e.f36163f;
        if (c6531e6 != null) {
            i = c6531e6.f36170m;
            m28250b.f36163f = c6531e6;
            c6531e6.f36162e = m28250b;
            c6531e.f36163f = null;
        } else {
            i = 0;
        }
        C6531e<K, V> c6531e7 = c6531e.f36164g;
        if (c6531e7 != null) {
            i2 = c6531e7.f36170m;
            m28250b.f36164g = c6531e7;
            c6531e7.f36162e = m28250b;
            c6531e.f36164g = null;
        }
        m28250b.f36170m = Math.max(i, i2) + 1;
        replaceInParent(c6531e, m28250b);
    }

    public C6531e<K, V> removeInternalByKey(Object obj) {
        C6531e<K, V> findByObject = findByObject(obj);
        if (findByObject != null) {
            removeInternal(findByObject, true);
        }
        return findByObject;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.size;
    }

    public LinkedTreeMap(boolean z) {
        this(NATURAL_ORDER, z);
    }

    public LinkedTreeMap(Comparator<? super K> comparator, boolean z) {
        this.size = 0;
        this.modCount = 0;
        this.comparator = comparator == null ? NATURAL_ORDER : comparator;
        this.allowNullValues = z;
        this.header = new C6531e<>(z);
    }

    /* renamed from: com.google.gson.internal.LinkedTreeMap$e */
    /* loaded from: classes6.dex */
    public static final class C6531e<K, V> implements Map.Entry<K, V> {

        /* renamed from: e */
        public C6531e<K, V> f36162e;

        /* renamed from: f */
        public C6531e<K, V> f36163f;

        /* renamed from: g */
        public C6531e<K, V> f36164g;

        /* renamed from: h */
        public C6531e<K, V> f36165h;

        /* renamed from: i */
        public C6531e<K, V> f36166i;

        /* renamed from: j */
        public final K f36167j;

        /* renamed from: k */
        public final boolean f36168k;

        /* renamed from: l */
        public V f36169l;

        /* renamed from: m */
        public int f36170m;

        public C6531e(boolean z) {
            this.f36167j = null;
            this.f36168k = z;
            this.f36166i = this;
            this.f36165h = this;
        }

        /* renamed from: a */
        public C6531e<K, V> m28249a() {
            C6531e<K, V> c6531e = this.f36163f;
            while (true) {
                C6531e<K, V> c6531e2 = c6531e;
                C6531e<K, V> c6531e3 = this;
                this = c6531e2;
                if (this == null) {
                    return c6531e3;
                }
                c6531e = this.f36163f;
            }
        }

        /* renamed from: b */
        public C6531e<K, V> m28250b() {
            C6531e<K, V> c6531e = this.f36164g;
            while (true) {
                C6531e<K, V> c6531e2 = c6531e;
                C6531e<K, V> c6531e3 = this;
                this = c6531e2;
                if (this == null) {
                    return c6531e3;
                }
                c6531e = this.f36164g;
            }
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k = this.f36167j;
            if (k == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k.equals(entry.getKey())) {
                return false;
            }
            V v = this.f36169l;
            if (v == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!v.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.f36167j;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.f36169l;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.f36167j;
            int hashCode = k == null ? 0 : k.hashCode();
            V v = this.f36169l;
            return hashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (v == null && !this.f36168k) {
                throw new NullPointerException("value == null");
            }
            V v2 = this.f36169l;
            this.f36169l = v;
            return v2;
        }

        public String toString() {
            return this.f36167j + "=" + this.f36169l;
        }

        public C6531e(boolean z, C6531e<K, V> c6531e, K k, C6531e<K, V> c6531e2, C6531e<K, V> c6531e3) {
            this.f36162e = c6531e;
            this.f36167j = k;
            this.f36168k = z;
            this.f36170m = 1;
            this.f36165h = c6531e2;
            this.f36166i = c6531e3;
            c6531e3.f36165h = this;
            c6531e2.f36166i = this;
        }
    }
}
