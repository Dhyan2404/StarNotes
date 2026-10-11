package org.apache.commons.collections4.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections4.IterableMap;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.ResettableIterator;
import org.apache.commons.collections4.iterators.EmptyIterator;
import org.apache.commons.collections4.iterators.EmptyMapIterator;

/* loaded from: classes11.dex */
public class Flat3Map<K, V> implements IterableMap<K, V>, Serializable, Cloneable {
    private static final long serialVersionUID = -6701087419741928296L;
    private transient AbstractHashedMap<K, V> delegateMap;
    private transient int hash1;
    private transient int hash2;
    private transient int hash3;
    private transient K key1;
    private transient K key2;
    private transient K key3;
    private transient int size;
    private transient V value1;
    private transient V value2;
    private transient V value3;

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$a */
    /* loaded from: classes11.dex */
    public static abstract class AbstractC18763a<K, V> {

        /* renamed from: e */
        public final Flat3Map<K, V> f105176e;

        /* renamed from: f */
        public int f105177f = 0;

        /* renamed from: g */
        public C18766d<K, V> f105178g = null;

        public AbstractC18763a(Flat3Map<K, V> flat3Map) {
            this.f105176e = flat3Map;
        }

        /* renamed from: a */
        public Map.Entry<K, V> m66016a() {
            if (!hasNext()) {
                throw new NoSuchElementException("No next() entry in the iteration");
            }
            Flat3Map<K, V> flat3Map = this.f105176e;
            int i = this.f105177f + 1;
            this.f105177f = i;
            C18766d<K, V> c18766d = new C18766d<>(flat3Map, i);
            this.f105178g = c18766d;
            return c18766d;
        }

        public boolean hasNext() {
            return this.f105177f < ((Flat3Map) this.f105176e).size;
        }

        public void remove() {
            C18766d<K, V> c18766d = this.f105178g;
            if (c18766d == null) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            c18766d.m66018a(true);
            this.f105176e.remove(this.f105178g.getKey());
            this.f105177f--;
            this.f105178g = null;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$b */
    /* loaded from: classes11.dex */
    public static class C18764b<K, V> extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: e */
        public final Flat3Map<K, V> f105179e;

        public C18764b(Flat3Map<K, V> flat3Map) {
            this.f105179e = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f105179e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return ((Flat3Map) this.f105179e).delegateMap != null ? ((Flat3Map) this.f105179e).delegateMap.entrySet().iterator() : this.f105179e.size() == 0 ? EmptyIterator.emptyIterator() : new C18765c(this.f105179e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Object key = ((Map.Entry) obj).getKey();
            boolean containsKey = this.f105179e.containsKey(key);
            this.f105179e.remove(key);
            return containsKey;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105179e.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$c */
    /* loaded from: classes11.dex */
    public static class C18765c<K, V> extends AbstractC18763a<K, V> implements Iterator<Map.Entry<K, V>> {
        public C18765c(Flat3Map<K, V> flat3Map) {
            super(flat3Map);
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m66016a();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$d */
    /* loaded from: classes11.dex */
    public static class C18766d<K, V> implements Map.Entry<K, V> {

        /* renamed from: e */
        public final Flat3Map<K, V> f105180e;

        /* renamed from: f */
        public final int f105181f;

        /* renamed from: g */
        public volatile boolean f105182g = false;

        public C18766d(Flat3Map<K, V> flat3Map, int i) {
            this.f105180e = flat3Map;
            this.f105181f = i;
        }

        /* renamed from: a */
        public void m66018a(boolean z) {
            this.f105182g = z;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (this.f105182g || !(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K key = getKey();
            V value = getValue();
            if (key == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!key.equals(entry.getKey())) {
                return false;
            }
            if (value == null) {
                if (entry.getValue() != null) {
                    return false;
                }
            } else if (!value.equals(entry.getValue())) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f105182g) {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            }
            int i = this.f105181f;
            if (i == 1) {
                return (K) ((Flat3Map) this.f105180e).key1;
            }
            if (i == 2) {
                return (K) ((Flat3Map) this.f105180e).key2;
            }
            if (i == 3) {
                return (K) ((Flat3Map) this.f105180e).key3;
            }
            throw new IllegalStateException("Invalid map index: " + this.f105181f);
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f105182g) {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            }
            int i = this.f105181f;
            if (i == 1) {
                return (V) ((Flat3Map) this.f105180e).value1;
            }
            if (i == 2) {
                return (V) ((Flat3Map) this.f105180e).value2;
            }
            if (i == 3) {
                return (V) ((Flat3Map) this.f105180e).value3;
            }
            throw new IllegalStateException("Invalid map index: " + this.f105181f);
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (this.f105182g) {
                return 0;
            }
            K key = getKey();
            V value = getValue();
            return (key == null ? 0 : key.hashCode()) ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f105182g) {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            }
            V value = getValue();
            int i = this.f105181f;
            if (i == 1) {
                ((Flat3Map) this.f105180e).value1 = v;
            } else if (i == 2) {
                ((Flat3Map) this.f105180e).value2 = v;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Invalid map index: " + this.f105181f);
                }
                ((Flat3Map) this.f105180e).value3 = v;
            }
            return value;
        }

        public String toString() {
            if (this.f105182g) {
                return "";
            }
            return getKey() + "=" + getValue();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$e */
    /* loaded from: classes11.dex */
    public static class C18767e<K, V> implements MapIterator<K, V>, ResettableIterator<K> {

        /* renamed from: e */
        public final Flat3Map<K, V> f105183e;

        /* renamed from: f */
        public int f105184f = 0;

        /* renamed from: g */
        public boolean f105185g = false;

        public C18767e(Flat3Map<K, V> flat3Map) {
            this.f105183e = flat3Map;
        }

        @Override // org.apache.commons.collections4.MapIterator
        public K getKey() {
            if (!this.f105185g) {
                throw new IllegalStateException("getKey() can only be called after next() and before remove()");
            }
            int i = this.f105184f;
            if (i == 1) {
                return (K) ((Flat3Map) this.f105183e).key1;
            }
            if (i == 2) {
                return (K) ((Flat3Map) this.f105183e).key2;
            }
            if (i == 3) {
                return (K) ((Flat3Map) this.f105183e).key3;
            }
            throw new IllegalStateException("Invalid map index: " + this.f105184f);
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V getValue() {
            if (!this.f105185g) {
                throw new IllegalStateException("getValue() can only be called after next() and before remove()");
            }
            int i = this.f105184f;
            if (i == 1) {
                return (V) ((Flat3Map) this.f105183e).value1;
            }
            if (i == 2) {
                return (V) ((Flat3Map) this.f105183e).value2;
            }
            if (i == 3) {
                return (V) ((Flat3Map) this.f105183e).value3;
            }
            throw new IllegalStateException("Invalid map index: " + this.f105184f);
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f105184f < ((Flat3Map) this.f105183e).size;
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public K next() {
            if (!hasNext()) {
                throw new NoSuchElementException("No next() entry in the iteration");
            }
            this.f105185g = true;
            this.f105184f++;
            return getKey();
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public void remove() {
            if (!this.f105185g) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            this.f105183e.remove(getKey());
            this.f105184f--;
            this.f105185g = false;
        }

        @Override // org.apache.commons.collections4.ResettableIterator
        public void reset() {
            this.f105184f = 0;
            this.f105185g = false;
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V setValue(V v) {
            if (!this.f105185g) {
                throw new IllegalStateException("setValue() can only be called after next() and before remove()");
            }
            V value = getValue();
            int i = this.f105184f;
            if (i == 1) {
                ((Flat3Map) this.f105183e).value1 = v;
            } else if (i == 2) {
                ((Flat3Map) this.f105183e).value2 = v;
            } else {
                if (i != 3) {
                    throw new IllegalStateException("Invalid map index: " + this.f105184f);
                }
                ((Flat3Map) this.f105183e).value3 = v;
            }
            return value;
        }

        public String toString() {
            if (!this.f105185g) {
                return "Iterator[]";
            }
            return "Iterator[" + getKey() + "=" + getValue() + IteratorUtils.f104924b;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$f */
    /* loaded from: classes11.dex */
    public static class C18768f<K> extends AbstractSet<K> {

        /* renamed from: e */
        public final Flat3Map<K, ?> f105186e;

        public C18768f(Flat3Map<K, ?> flat3Map) {
            this.f105186e = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f105186e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f105186e.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return ((Flat3Map) this.f105186e).delegateMap != null ? ((Flat3Map) this.f105186e).delegateMap.keySet().iterator() : this.f105186e.size() == 0 ? EmptyIterator.emptyIterator() : new C18769g(this.f105186e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            boolean containsKey = this.f105186e.containsKey(obj);
            this.f105186e.remove(obj);
            return containsKey;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105186e.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$g */
    /* loaded from: classes11.dex */
    public static class C18769g<K> extends AbstractC18763a<K, Object> implements Iterator<K> {
        public C18769g(Flat3Map<K, ?> flat3Map) {
            super(flat3Map);
        }

        @Override // java.util.Iterator
        public K next() {
            return m66016a().getKey();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$h */
    /* loaded from: classes11.dex */
    public static class C18770h<V> extends AbstractCollection<V> {

        /* renamed from: e */
        public final Flat3Map<?, V> f105187e;

        public C18770h(Flat3Map<?, V> flat3Map) {
            this.f105187e = flat3Map;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f105187e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return this.f105187e.containsValue(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return ((Flat3Map) this.f105187e).delegateMap != null ? ((Flat3Map) this.f105187e).delegateMap.values().iterator() : this.f105187e.size() == 0 ? EmptyIterator.emptyIterator() : new C18771i(this.f105187e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f105187e.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.Flat3Map$i */
    /* loaded from: classes11.dex */
    public static class C18771i<V> extends AbstractC18763a<Object, V> implements Iterator<V> {
        public C18771i(Flat3Map<?, V> flat3Map) {
            super(flat3Map);
        }

        @Override // java.util.Iterator
        public V next() {
            return m66016a().getValue();
        }
    }

    public Flat3Map() {
    }

    private void convertToMap() {
        AbstractHashedMap<K, V> createDelegateMap = createDelegateMap();
        this.delegateMap = createDelegateMap;
        int i = this.size;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        throw new IllegalStateException("Invalid map index: " + this.size);
                    }
                    createDelegateMap.put(this.key3, this.value3);
                }
                this.delegateMap.put(this.key2, this.value2);
            }
            this.delegateMap.put(this.key1, this.value1);
        }
        this.size = 0;
        this.hash3 = 0;
        this.hash2 = 0;
        this.hash1 = 0;
        this.key3 = null;
        this.key2 = null;
        this.key1 = null;
        this.value3 = null;
        this.value2 = null;
        this.value1 = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int readInt = objectInputStream.readInt();
        if (readInt > 3) {
            this.delegateMap = createDelegateMap();
        }
        while (readInt > 0) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
            readInt--;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        MapIterator<K, V> mapIterator = mapIterator();
        while (mapIterator.hasNext()) {
            objectOutputStream.writeObject(mapIterator.next());
            objectOutputStream.writeObject(mapIterator.getValue());
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            abstractHashedMap.clear();
            this.delegateMap = null;
            return;
        }
        this.size = 0;
        this.hash3 = 0;
        this.hash2 = 0;
        this.hash1 = 0;
        this.key3 = null;
        this.key2 = null;
        this.key1 = null;
        this.value3 = null;
        this.value2 = null;
        this.value1 = null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsKey(Object obj) {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.containsKey(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                    if (this.key3 == null) {
                        return true;
                    }
                }
                if (this.key2 == null) {
                    return true;
                }
            }
            return this.key1 == null;
        }
        if (this.size <= 0) {
            return false;
        }
        int hashCode = obj.hashCode();
        int i2 = this.size;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return false;
                }
                if (this.hash3 == hashCode && obj.equals(this.key3)) {
                    return true;
                }
            }
            if (this.hash2 == hashCode && obj.equals(this.key2)) {
                return true;
            }
        }
        return this.hash1 == hashCode && obj.equals(this.key1);
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean containsValue(Object obj) {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.containsValue(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return false;
                    }
                    if (this.value3 == null) {
                        return true;
                    }
                }
                if (this.value2 == null) {
                    return true;
                }
            }
            return this.value1 == null;
        }
        int i2 = this.size;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return false;
                }
                if (obj.equals(this.value3)) {
                    return true;
                }
            }
            if (obj.equals(this.value2)) {
                return true;
            }
        }
        return obj.equals(this.value1);
    }

    public AbstractHashedMap<K, V> createDelegateMap() {
        return new HashedMap();
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        return abstractHashedMap != null ? abstractHashedMap.entrySet() : new C18764b(this);
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.equals(obj);
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this.size != map.size()) {
            return false;
        }
        int i = this.size;
        if (i > 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (!map.containsKey(this.key3)) {
                            return false;
                        }
                        Object obj2 = map.get(this.key3);
                        V v = this.value3;
                        if (v != null ? !v.equals(obj2) : obj2 != null) {
                            return false;
                        }
                    }
                }
                if (!map.containsKey(this.key2)) {
                    return false;
                }
                Object obj3 = map.get(this.key2);
                V v2 = this.value2;
                if (v2 != null ? !v2.equals(obj3) : obj3 != null) {
                    return false;
                }
            }
            if (!map.containsKey(this.key1)) {
                return false;
            }
            Object obj4 = map.get(this.key1);
            V v3 = this.value1;
            if (v3 != null ? !v3.equals(obj4) : obj4 != null) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V get(Object obj) {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.get(obj);
        }
        if (obj == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        return null;
                    }
                    if (this.key3 == null) {
                        return this.value3;
                    }
                }
                if (this.key2 == null) {
                    return this.value2;
                }
            }
            if (this.key1 == null) {
                return this.value1;
            }
            return null;
        }
        if (this.size <= 0) {
            return null;
        }
        int hashCode = obj.hashCode();
        int i2 = this.size;
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    return null;
                }
                if (this.hash3 == hashCode && obj.equals(this.key3)) {
                    return this.value3;
                }
            }
            if (this.hash2 == hashCode && obj.equals(this.key2)) {
                return this.value2;
            }
        }
        if (this.hash1 == hashCode && obj.equals(this.key1)) {
            return this.value1;
        }
        return null;
    }

    @Override // java.util.Map
    public int hashCode() {
        int i;
        int i2;
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.hashCode();
        }
        int i3 = this.size;
        if (i3 == 0) {
            return 0;
        }
        if (i3 != 1) {
            if (i3 == 2) {
                i2 = 0;
            } else {
                if (i3 != 3) {
                    throw new IllegalStateException("Invalid map index: " + this.size);
                }
                int i4 = this.hash3;
                V v = this.value3;
                i2 = (i4 ^ (v == null ? 0 : v.hashCode())) + 0;
            }
            int i5 = this.hash2;
            V v2 = this.value2;
            i = i2 + (i5 ^ (v2 == null ? 0 : v2.hashCode()));
        } else {
            i = 0;
        }
        int i6 = this.hash1;
        V v3 = this.value1;
        return i + (i6 ^ (v3 != null ? v3.hashCode() : 0));
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        return abstractHashedMap != null ? abstractHashedMap.keySet() : new C18768f(this);
    }

    @Override // org.apache.commons.collections4.IterableGet
    public MapIterator<K, V> mapIterator() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        return abstractHashedMap != null ? abstractHashedMap.mapIterator() : this.size == 0 ? EmptyMapIterator.emptyMapIterator() : new C18767e(this);
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.put(k, v);
        }
        if (k == null) {
            int i = this.size;
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        if (this.key3 == null) {
                            V v2 = this.value3;
                            this.value3 = v;
                            return v2;
                        }
                    }
                }
                if (this.key2 == null) {
                    V v3 = this.value2;
                    this.value2 = v;
                    return v3;
                }
            }
            if (this.key1 == null) {
                V v4 = this.value1;
                this.value1 = v;
                return v4;
            }
        } else if (this.size > 0) {
            int hashCode = k.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        if (this.hash3 == hashCode && k.equals(this.key3)) {
                            V v5 = this.value3;
                            this.value3 = v;
                            return v5;
                        }
                    }
                }
                if (this.hash2 == hashCode && k.equals(this.key2)) {
                    V v6 = this.value2;
                    this.value2 = v;
                    return v6;
                }
            }
            if (this.hash1 == hashCode && k.equals(this.key1)) {
                V v7 = this.value1;
                this.value1 = v;
                return v7;
            }
        }
        int i3 = this.size;
        if (i3 == 0) {
            this.hash1 = k != null ? k.hashCode() : 0;
            this.key1 = k;
            this.value1 = v;
        } else if (i3 == 1) {
            this.hash2 = k != null ? k.hashCode() : 0;
            this.key2 = k;
            this.value2 = v;
        } else {
            if (i3 != 2) {
                convertToMap();
                this.delegateMap.put(k, v);
                return null;
            }
            this.hash3 = k != null ? k.hashCode() : 0;
            this.key3 = k;
            this.value3 = v;
        }
        this.size++;
        return null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Put
    public void putAll(Map<? extends K, ? extends V> map) {
        int size = map.size();
        if (size == 0) {
            return;
        }
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            abstractHashedMap.putAll(map);
            return;
        }
        if (size >= 4) {
            convertToMap();
            this.delegateMap.putAll(map);
        } else {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                put(entry.getKey(), entry.getValue());
            }
        }
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.remove(obj);
        }
        int i = this.size;
        if (i == 0) {
            return null;
        }
        if (obj == null) {
            if (i != 1) {
                if (i == 2) {
                    K k = this.key2;
                    if (k == null) {
                        V v = this.value2;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return v;
                    }
                    if (this.key1 != null) {
                        return null;
                    }
                    V v2 = this.value1;
                    this.hash1 = this.hash2;
                    this.key1 = k;
                    this.value1 = this.value2;
                    this.hash2 = 0;
                    this.key2 = null;
                    this.value2 = null;
                    this.size = 1;
                    return v2;
                }
                if (i == 3) {
                    K k2 = this.key3;
                    if (k2 == null) {
                        V v3 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return v3;
                    }
                    if (this.key2 == null) {
                        V v4 = this.value2;
                        this.hash2 = this.hash3;
                        this.key2 = k2;
                        this.value2 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return v4;
                    }
                    if (this.key1 != null) {
                        return null;
                    }
                    V v5 = this.value1;
                    this.hash1 = this.hash3;
                    this.key1 = k2;
                    this.value1 = this.value3;
                    this.hash3 = 0;
                    this.key3 = null;
                    this.value3 = null;
                    this.size = 2;
                    return v5;
                }
            } else if (this.key1 == null) {
                V v6 = this.value1;
                this.hash1 = 0;
                this.key1 = null;
                this.value1 = null;
                this.size = 0;
                return v6;
            }
        } else if (i > 0) {
            int hashCode = obj.hashCode();
            int i2 = this.size;
            if (i2 != 1) {
                if (i2 == 2) {
                    if (this.hash2 == hashCode && obj.equals(this.key2)) {
                        V v7 = this.value2;
                        this.hash2 = 0;
                        this.key2 = null;
                        this.value2 = null;
                        this.size = 1;
                        return v7;
                    }
                    if (this.hash1 != hashCode || !obj.equals(this.key1)) {
                        return null;
                    }
                    V v8 = this.value1;
                    this.hash1 = this.hash2;
                    this.key1 = this.key2;
                    this.value1 = this.value2;
                    this.hash2 = 0;
                    this.key2 = null;
                    this.value2 = null;
                    this.size = 1;
                    return v8;
                }
                if (i2 == 3) {
                    if (this.hash3 == hashCode && obj.equals(this.key3)) {
                        V v9 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return v9;
                    }
                    if (this.hash2 == hashCode && obj.equals(this.key2)) {
                        V v10 = this.value2;
                        this.hash2 = this.hash3;
                        this.key2 = this.key3;
                        this.value2 = this.value3;
                        this.hash3 = 0;
                        this.key3 = null;
                        this.value3 = null;
                        this.size = 2;
                        return v10;
                    }
                    if (this.hash1 != hashCode || !obj.equals(this.key1)) {
                        return null;
                    }
                    V v11 = this.value1;
                    this.hash1 = this.hash3;
                    this.key1 = this.key3;
                    this.value1 = this.value3;
                    this.hash3 = 0;
                    this.key3 = null;
                    this.value3 = null;
                    this.size = 2;
                    return v11;
                }
            } else if (this.hash1 == hashCode && obj.equals(this.key1)) {
                V v12 = this.value1;
                this.hash1 = 0;
                this.key1 = null;
                this.value1 = null;
                this.size = 0;
                return v12;
            }
        }
        return null;
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public int size() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        return abstractHashedMap != null ? abstractHashedMap.size() : this.size;
    }

    public String toString() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        if (abstractHashedMap != null) {
            return abstractHashedMap.toString();
        }
        if (this.size == 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(128);
        sb.append('{');
        int i = this.size;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalStateException("Invalid map index: " + this.size);
                }
                Object obj = this.key3;
                if (obj == this) {
                    obj = "(this Map)";
                }
                sb.append(obj);
                sb.append('=');
                Object obj2 = this.value3;
                if (obj2 == this) {
                    obj2 = "(this Map)";
                }
                sb.append(obj2);
                sb.append(',');
            }
            Object obj3 = this.key2;
            if (obj3 == this) {
                obj3 = "(this Map)";
            }
            sb.append(obj3);
            sb.append('=');
            Object obj4 = this.value2;
            if (obj4 == this) {
                obj4 = "(this Map)";
            }
            sb.append(obj4);
            sb.append(',');
        }
        Object obj5 = this.key1;
        if (obj5 == this) {
            obj5 = "(this Map)";
        }
        sb.append(obj5);
        sb.append('=');
        V v = this.value1;
        sb.append(v != this ? v : "(this Map)");
        sb.append('}');
        return sb.toString();
    }

    @Override // java.util.Map, org.apache.commons.collections4.Get
    public Collection<V> values() {
        AbstractHashedMap<K, V> abstractHashedMap = this.delegateMap;
        return abstractHashedMap != null ? abstractHashedMap.values() : new C18770h(this);
    }

    public Flat3Map(Map<? extends K, ? extends V> map) {
        putAll(map);
    }

    public Flat3Map<K, V> clone() {
        try {
            Flat3Map<K, V> flat3Map = (Flat3Map) super.clone();
            AbstractHashedMap<K, V> abstractHashedMap = flat3Map.delegateMap;
            if (abstractHashedMap != null) {
                flat3Map.delegateMap = abstractHashedMap.clone();
            }
            return flat3Map;
        } catch (CloneNotSupportedException unused) {
            throw new InternalError();
        }
    }
}
