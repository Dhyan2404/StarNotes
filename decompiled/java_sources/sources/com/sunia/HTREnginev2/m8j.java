package com.sunia.HTREnginev2;

import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class m8j<K, V> {

    /* renamed from: a */
    @Nullable
    public m8j<K, V>.C14082b f77335a;

    /* renamed from: b */
    @Nullable
    public m8j<K, V>.C14083c f77336b;

    /* renamed from: c */
    @Nullable
    public m8j<K, V>.C14085e f77337c;

    /* renamed from: com.sunia.HTREnginev2.m8j$a */
    /* loaded from: classes3.dex */
    public final class C14081a<T> implements Iterator<T> {

        /* renamed from: e */
        public final int f77338e;

        /* renamed from: f */
        public int f77339f;

        /* renamed from: g */
        public int f77340g;

        /* renamed from: h */
        public boolean f77341h = false;

        public C14081a(int i) {
            this.f77338e = i;
            this.f77339f = m8j.this.mo1307d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f77340g < this.f77339f;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            T t = (T) m8j.this.mo1305b(this.f77340g, this.f77338e);
            this.f77340g++;
            this.f77341h = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f77341h) {
                throw new IllegalStateException();
            }
            int i = this.f77340g - 1;
            this.f77340g = i;
            this.f77339f--;
            this.f77341h = false;
            m8j.this.mo1311h(i);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.m8j$b */
    /* loaded from: classes3.dex */
    public final class C14082b implements Set<Map.Entry<K, V>> {
        public C14082b() {
        }

        @Override // java.util.Set, java.util.Collection
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public boolean add(Map.Entry<K, V> entry) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends Map.Entry<K, V>> collection) {
            int mo1307d = m8j.this.mo1307d();
            for (Map.Entry<K, V> entry : collection) {
                m8j.this.mo1310g(entry.getKey(), entry.getValue());
            }
            return mo1307d != m8j.this.mo1307d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            m8j.this.mo1304a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int mo1308e = m8j.this.mo1308e(entry.getKey());
            if (mo1308e < 0) {
                return false;
            }
            return nae.m55727c(m8j.this.mo1305b(mo1308e, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return m8j.m55568k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo1307d = m8j.this.mo1307d() - 1; mo1307d >= 0; mo1307d--) {
                Object mo1305b = m8j.this.mo1305b(mo1307d, 0);
                Object mo1305b2 = m8j.this.mo1305b(mo1307d, 1);
                i += (mo1305b == null ? 0 : mo1305b.hashCode()) ^ (mo1305b2 == null ? 0 : mo1305b2.hashCode());
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return m8j.this.mo1307d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C14084d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return m8j.this.mo1307d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.m8j$c */
    /* loaded from: classes3.dex */
    public final class C14083c implements Set<K> {
        public C14083c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            m8j.this.mo1304a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return m8j.this.mo1308e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return m8j.m55567j(m8j.this.mo1306c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return m8j.m55568k(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int i = 0;
            for (int mo1307d = m8j.this.mo1307d() - 1; mo1307d >= 0; mo1307d--) {
                Object mo1305b = m8j.this.mo1305b(mo1307d, 0);
                i += mo1305b == null ? 0 : mo1305b.hashCode();
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return m8j.this.mo1307d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new C14081a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int mo1308e = m8j.this.mo1308e(obj);
            if (mo1308e < 0) {
                return false;
            }
            m8j.this.mo1311h(mo1308e);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return m8j.m55569o(m8j.this.mo1306c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return m8j.m55570p(m8j.this.mo1306c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return m8j.this.mo1307d();
        }

        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            return m8j.this.m55574q(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m8j.this.m55575r(tArr, 0);
        }
    }

    /* renamed from: com.sunia.HTREnginev2.m8j$d */
    /* loaded from: classes3.dex */
    public final class C14084d implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {

        /* renamed from: e */
        public int f77345e;

        /* renamed from: g */
        public boolean f77347g = false;

        /* renamed from: f */
        public int f77346f = -1;

        public C14084d() {
            this.f77345e = m8j.this.mo1307d() - 1;
        }

        @Override // java.util.Iterator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            this.f77346f++;
            this.f77347g = true;
            return this;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.f77347g) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return nae.m55727c(entry.getKey(), m8j.this.mo1305b(this.f77346f, 0)) && nae.m55727c(entry.getValue(), m8j.this.mo1305b(this.f77346f, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f77347g) {
                return (K) m8j.this.mo1305b(this.f77346f, 0);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f77347g) {
                return (V) m8j.this.mo1305b(this.f77346f, 1);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f77346f < this.f77345e;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f77347g) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            Object mo1305b = m8j.this.mo1305b(this.f77346f, 0);
            Object mo1305b2 = m8j.this.mo1305b(this.f77346f, 1);
            return (mo1305b == null ? 0 : mo1305b.hashCode()) ^ (mo1305b2 != null ? mo1305b2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f77347g) {
                throw new IllegalStateException();
            }
            m8j.this.mo1311h(this.f77346f);
            this.f77346f--;
            this.f77345e--;
            this.f77347g = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f77347g) {
                return (V) m8j.this.mo1312i(this.f77346f, v);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: com.sunia.HTREnginev2.m8j$e */
    /* loaded from: classes3.dex */
    public final class C14085e implements Collection<V> {
        public C14085e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            m8j.this.mo1304a();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return m8j.this.mo1309f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it2 = collection.iterator();
            while (it2.hasNext()) {
                if (!contains(it2.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return m8j.this.mo1307d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new C14081a(1);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int mo1309f = m8j.this.mo1309f(obj);
            if (mo1309f < 0) {
                return false;
            }
            m8j.this.mo1311h(mo1309f);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int mo1307d = m8j.this.mo1307d();
            int i = 0;
            boolean z = false;
            while (i < mo1307d) {
                if (collection.contains(m8j.this.mo1305b(i, 1))) {
                    m8j.this.mo1311h(i);
                    i--;
                    mo1307d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int mo1307d = m8j.this.mo1307d();
            int i = 0;
            boolean z = false;
            while (i < mo1307d) {
                if (!collection.contains(m8j.this.mo1305b(i, 1))) {
                    m8j.this.mo1311h(i);
                    i--;
                    mo1307d--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return m8j.this.mo1307d();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            return m8j.this.m55574q(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) m8j.this.m55575r(tArr, 1);
        }
    }

    /* renamed from: j */
    public static <K, V> boolean m55567j(Map<K, V> map, Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!map.containsKey(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: k */
    public static <T> boolean m55568k(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    /* renamed from: o */
    public static <K, V> boolean m55569o(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            map.remove(it2.next());
        }
        return size != map.size();
    }

    /* renamed from: p */
    public static <K, V> boolean m55570p(Map<K, V> map, Collection<?> collection) {
        int size = map.size();
        Iterator<K> it2 = map.keySet().iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                it2.remove();
            }
        }
        return size != map.size();
    }

    /* renamed from: a */
    public abstract void mo1304a();

    /* renamed from: b */
    public abstract Object mo1305b(int i, int i2);

    /* renamed from: c */
    public abstract Map<K, V> mo1306c();

    /* renamed from: d */
    public abstract int mo1307d();

    /* renamed from: e */
    public abstract int mo1308e(Object obj);

    /* renamed from: f */
    public abstract int mo1309f(Object obj);

    /* renamed from: g */
    public abstract void mo1310g(K k, V v);

    /* renamed from: h */
    public abstract void mo1311h(int i);

    /* renamed from: i */
    public abstract V mo1312i(int i, V v);

    /* renamed from: l */
    public Set<Map.Entry<K, V>> m55571l() {
        if (this.f77335a == null) {
            this.f77335a = new C14082b();
        }
        return this.f77335a;
    }

    /* renamed from: m */
    public Set<K> m55572m() {
        if (this.f77336b == null) {
            this.f77336b = new C14083c();
        }
        return this.f77336b;
    }

    /* renamed from: n */
    public Collection<V> m55573n() {
        if (this.f77337c == null) {
            this.f77337c = new C14085e();
        }
        return this.f77337c;
    }

    /* renamed from: q */
    public Object[] m55574q(int i) {
        int mo1307d = mo1307d();
        Object[] objArr = new Object[mo1307d];
        for (int i2 = 0; i2 < mo1307d; i2++) {
            objArr[i2] = mo1305b(i2, i);
        }
        return objArr;
    }

    /* renamed from: r */
    public <T> T[] m55575r(T[] tArr, int i) {
        int mo1307d = mo1307d();
        if (tArr.length < mo1307d) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), mo1307d));
        }
        for (int i2 = 0; i2 < mo1307d; i2++) {
            tArr[i2] = mo1305b(i2, i);
        }
        if (tArr.length > mo1307d) {
            tArr[mo1307d] = null;
        }
        return tArr;
    }
}
