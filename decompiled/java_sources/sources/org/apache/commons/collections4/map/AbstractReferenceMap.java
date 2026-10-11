package org.apache.commons.collections4.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.keyvalue.DefaultMapEntry;
import org.apache.commons.collections4.map.AbstractHashedMap;

/* loaded from: classes11.dex */
public abstract class AbstractReferenceMap<K, V> extends AbstractHashedMap<K, V> {
    private ReferenceStrength keyType;
    private boolean purgeValues;
    private transient ReferenceQueue<Object> queue;
    private ReferenceStrength valueType;

    /* loaded from: classes11.dex */
    public static class ReferenceEntry<K, V> extends AbstractHashedMap.HashEntry<K, V> {

        /* renamed from: e */
        public final AbstractReferenceMap<K, V> f105161e;

        public ReferenceEntry(AbstractReferenceMap<K, V> abstractReferenceMap, AbstractHashedMap.HashEntry<K, V> hashEntry, int i, K k, V v) {
            super(hashEntry, i, null, null);
            this.f105161e = abstractReferenceMap;
            this.key = toReference(((AbstractReferenceMap) abstractReferenceMap).keyType, k, i);
            this.value = toReference(((AbstractReferenceMap) abstractReferenceMap).valueType, v, i);
        }

        @Override // org.apache.commons.collections4.map.AbstractHashedMap.HashEntry, java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (key == null || value == null) {
                return false;
            }
            return this.f105161e.isEqualKey(key, this.key) && this.f105161e.isEqualValue(value, getValue());
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.collections4.map.AbstractHashedMap.HashEntry, java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        public K getKey() {
            ReferenceStrength referenceStrength = ((AbstractReferenceMap) this.f105161e).keyType;
            ReferenceStrength referenceStrength2 = ReferenceStrength.HARD;
            K k = (K) this.key;
            return referenceStrength == referenceStrength2 ? k : (K) ((Reference) k).get();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // org.apache.commons.collections4.map.AbstractHashedMap.HashEntry, java.util.Map.Entry, org.apache.commons.collections4.KeyValue
        public V getValue() {
            ReferenceStrength referenceStrength = ((AbstractReferenceMap) this.f105161e).valueType;
            ReferenceStrength referenceStrength2 = ReferenceStrength.HARD;
            V v = (V) this.value;
            return referenceStrength == referenceStrength2 ? v : (V) ((Reference) v).get();
        }

        @Override // org.apache.commons.collections4.map.AbstractHashedMap.HashEntry, java.util.Map.Entry
        public int hashCode() {
            return this.f105161e.hashEntry(getKey(), getValue());
        }

        public ReferenceEntry<K, V> next() {
            return (ReferenceEntry) this.next;
        }

        public void nullValue() {
            this.value = null;
        }

        public void onPurge() {
        }

        public boolean purge(Reference<?> reference) {
            ReferenceStrength referenceStrength = ((AbstractReferenceMap) this.f105161e).keyType;
            ReferenceStrength referenceStrength2 = ReferenceStrength.HARD;
            boolean z = true;
            if (!(referenceStrength != referenceStrength2 && this.key == reference) && (((AbstractReferenceMap) this.f105161e).valueType == referenceStrength2 || this.value != reference)) {
                z = false;
            }
            if (z) {
                if (((AbstractReferenceMap) this.f105161e).keyType != referenceStrength2) {
                    ((Reference) this.key).clear();
                }
                if (((AbstractReferenceMap) this.f105161e).valueType != referenceStrength2) {
                    ((Reference) this.value).clear();
                } else if (((AbstractReferenceMap) this.f105161e).purgeValues) {
                    nullValue();
                }
            }
            return z;
        }

        @Override // org.apache.commons.collections4.map.AbstractHashedMap.HashEntry, java.util.Map.Entry
        public V setValue(V v) {
            V value = getValue();
            if (((AbstractReferenceMap) this.f105161e).valueType != ReferenceStrength.HARD) {
                ((Reference) this.value).clear();
            }
            this.value = toReference(((AbstractReferenceMap) this.f105161e).valueType, v, this.hashCode);
            return value;
        }

        public <T> Object toReference(ReferenceStrength referenceStrength, T t, int i) {
            if (referenceStrength == ReferenceStrength.HARD) {
                return t;
            }
            if (referenceStrength == ReferenceStrength.SOFT) {
                return new C18761i(i, t, ((AbstractReferenceMap) this.f105161e).queue);
            }
            if (referenceStrength == ReferenceStrength.WEAK) {
                return new C18762j(i, t, ((AbstractReferenceMap) this.f105161e).queue);
            }
            throw new Error();
        }
    }

    /* loaded from: classes11.dex */
    public enum ReferenceStrength {
        HARD(0),
        SOFT(1),
        WEAK(2);

        public final int value;

        ReferenceStrength(int i) {
            this.value = i;
        }

        public static ReferenceStrength resolve(int i) {
            if (i == 0) {
                return HARD;
            }
            if (i == 1) {
                return SOFT;
            }
            if (i == 2) {
                return WEAK;
            }
            throw new IllegalArgumentException();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$a */
    /* loaded from: classes11.dex */
    public static class C18753a<K, V> {

        /* renamed from: e */
        public final AbstractReferenceMap<K, V> f105162e;

        /* renamed from: f */
        public int f105163f;

        /* renamed from: g */
        public ReferenceEntry<K, V> f105164g;

        /* renamed from: h */
        public ReferenceEntry<K, V> f105165h;

        /* renamed from: i */
        public K f105166i;

        /* renamed from: j */
        public K f105167j;

        /* renamed from: k */
        public V f105168k;

        /* renamed from: l */
        public V f105169l;

        /* renamed from: m */
        public int f105170m;

        public C18753a(AbstractReferenceMap<K, V> abstractReferenceMap) {
            this.f105162e = abstractReferenceMap;
            this.f105163f = abstractReferenceMap.size() != 0 ? abstractReferenceMap.data.length : 0;
            this.f105170m = abstractReferenceMap.modCount;
        }

        /* renamed from: a */
        public final void m66011a() {
            if (this.f105162e.modCount != this.f105170m) {
                throw new ConcurrentModificationException();
            }
        }

        /* renamed from: b */
        public ReferenceEntry<K, V> m66012b() {
            m66011a();
            return this.f105165h;
        }

        /* renamed from: c */
        public ReferenceEntry<K, V> m66013c() {
            m66011a();
            if (m66014d() && !hasNext()) {
                throw new NoSuchElementException();
            }
            ReferenceEntry<K, V> referenceEntry = this.f105164g;
            this.f105165h = referenceEntry;
            this.f105164g = referenceEntry.next();
            this.f105166i = this.f105167j;
            this.f105168k = this.f105169l;
            this.f105167j = null;
            this.f105169l = null;
            return this.f105165h;
        }

        /* renamed from: d */
        public final boolean m66014d() {
            return this.f105167j == null || this.f105169l == null;
        }

        public boolean hasNext() {
            m66011a();
            while (m66014d()) {
                ReferenceEntry<K, V> referenceEntry = this.f105164g;
                int i = this.f105163f;
                while (referenceEntry == null && i > 0) {
                    i--;
                    referenceEntry = (ReferenceEntry) this.f105162e.data[i];
                }
                this.f105164g = referenceEntry;
                this.f105163f = i;
                if (referenceEntry == null) {
                    this.f105166i = null;
                    this.f105168k = null;
                    return false;
                }
                this.f105167j = referenceEntry.getKey();
                this.f105169l = referenceEntry.getValue();
                if (m66014d()) {
                    this.f105164g = this.f105164g.next();
                }
            }
            return true;
        }

        public void remove() {
            m66011a();
            if (this.f105165h == null) {
                throw new IllegalStateException();
            }
            this.f105162e.remove(this.f105166i);
            this.f105165h = null;
            this.f105166i = null;
            this.f105168k = null;
            this.f105170m = this.f105162e.modCount;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$b */
    /* loaded from: classes11.dex */
    public static class C18754b<K, V> extends AbstractHashedMap.EntrySet<K, V> {
        public C18754b(AbstractHashedMap<K, V> abstractHashedMap) {
            super(abstractHashedMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return toArray(new Object[size()]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<Map.Entry<K, V>> it2 = iterator();
            while (it2.hasNext()) {
                arrayList.add(new DefaultMapEntry(it2.next()));
            }
            return (T[]) arrayList.toArray(tArr);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$c */
    /* loaded from: classes11.dex */
    public static class C18755c<K, V> extends C18753a<K, V> implements Iterator<Map.Entry<K, V>> {
        public C18755c(AbstractReferenceMap<K, V> abstractReferenceMap) {
            super(abstractReferenceMap);
        }

        @Override // java.util.Iterator
        /* renamed from: e, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m66013c();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$d */
    /* loaded from: classes11.dex */
    public static class C18756d<K> extends AbstractHashedMap.KeySet<K> {
        public C18756d(AbstractHashedMap<K, ?> abstractHashedMap) {
            super(abstractHashedMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public Object[] toArray() {
            return toArray(new Object[size()]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public <T> T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<K> it2 = iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            return (T[]) arrayList.toArray(tArr);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$e */
    /* loaded from: classes11.dex */
    public static class C18757e<K> extends C18753a<K, Object> implements Iterator<K> {
        public C18757e(AbstractReferenceMap<K, ?> abstractReferenceMap) {
            super(abstractReferenceMap);
        }

        @Override // java.util.Iterator
        public K next() {
            return m66013c().getKey();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$f */
    /* loaded from: classes11.dex */
    public static class C18758f<K, V> extends C18753a<K, V> implements MapIterator<K, V> {
        public C18758f(AbstractReferenceMap<K, V> abstractReferenceMap) {
            super(abstractReferenceMap);
        }

        @Override // org.apache.commons.collections4.MapIterator
        public K getKey() {
            ReferenceEntry<K, V> m66012b = m66012b();
            if (m66012b != null) {
                return m66012b.getKey();
            }
            throw new IllegalStateException("getKey() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V getValue() {
            ReferenceEntry<K, V> m66012b = m66012b();
            if (m66012b != null) {
                return m66012b.getValue();
            }
            throw new IllegalStateException("getValue() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public K next() {
            return m66013c().getKey();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V setValue(V v) {
            ReferenceEntry<K, V> m66012b = m66012b();
            if (m66012b != null) {
                return m66012b.setValue(v);
            }
            throw new IllegalStateException("setValue() can only be called after next() and before remove()");
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$g */
    /* loaded from: classes11.dex */
    public static class C18759g<V> extends AbstractHashedMap.Values<V> {
        public C18759g(AbstractHashedMap<?, V> abstractHashedMap) {
            super(abstractHashedMap);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return toArray(new Object[size()]);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            ArrayList arrayList = new ArrayList(size());
            Iterator<V> it2 = iterator();
            while (it2.hasNext()) {
                arrayList.add(it2.next());
            }
            return (T[]) arrayList.toArray(tArr);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$h */
    /* loaded from: classes11.dex */
    public static class C18760h<V> extends C18753a<Object, V> implements Iterator<V> {
        public C18760h(AbstractReferenceMap<?, V> abstractReferenceMap) {
            super(abstractReferenceMap);
        }

        @Override // java.util.Iterator
        public V next() {
            return m66013c().getValue();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$i */
    /* loaded from: classes11.dex */
    public static class C18761i<T> extends SoftReference<T> {

        /* renamed from: a */
        public final int f105171a;

        public C18761i(int i, T t, ReferenceQueue<? super T> referenceQueue) {
            super(t, referenceQueue);
            this.f105171a = i;
        }

        public int hashCode() {
            return this.f105171a;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.AbstractReferenceMap$j */
    /* loaded from: classes11.dex */
    public static class C18762j<T> extends WeakReference<T> {

        /* renamed from: a */
        public final int f105172a;

        public C18762j(int i, T t, ReferenceQueue<? super T> referenceQueue) {
            super(t, referenceQueue);
            this.f105172a = i;
        }

        public int hashCode() {
            return this.f105172a;
        }
    }

    public AbstractReferenceMap() {
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        super.clear();
        do {
        } while (this.queue.poll() != null);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public boolean containsKey(Object obj) {
        purgeBeforeRead();
        AbstractHashedMap.HashEntry<K, V> entry = getEntry(obj);
        return (entry == null || entry.getValue() == null) ? false : true;
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public boolean containsValue(Object obj) {
        purgeBeforeRead();
        if (obj == null) {
            return false;
        }
        return super.containsValue(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public /* bridge */ /* synthetic */ AbstractHashedMap.HashEntry createEntry(AbstractHashedMap.HashEntry hashEntry, int i, Object obj, Object obj2) {
        return createEntry((AbstractHashedMap.HashEntry<int, Object>) hashEntry, i, (int) obj, obj2);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public Iterator<Map.Entry<K, V>> createEntrySetIterator() {
        return new C18755c(this);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public Iterator<K> createKeySetIterator() {
        return new C18757e(this);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public Iterator<V> createValuesIterator() {
        return new C18760h(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.keyType = ReferenceStrength.resolve(objectInputStream.readInt());
        this.valueType = ReferenceStrength.resolve(objectInputStream.readInt());
        this.purgeValues = objectInputStream.readBoolean();
        this.loadFactor = objectInputStream.readFloat();
        int readInt = objectInputStream.readInt();
        init();
        AbstractHashedMap.HashEntry<K, V>[] hashEntryArr = new AbstractHashedMap.HashEntry[readInt];
        this.data = hashEntryArr;
        this.threshold = calculateThreshold(hashEntryArr.length, this.loadFactor);
        while (true) {
            Object readObject = objectInputStream.readObject();
            if (readObject == null) {
                return;
            } else {
                put(readObject, objectInputStream.readObject());
            }
        }
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.keyType.value);
        objectOutputStream.writeInt(this.valueType.value);
        objectOutputStream.writeBoolean(this.purgeValues);
        objectOutputStream.writeFloat(this.loadFactor);
        objectOutputStream.writeInt(this.data.length);
        MapIterator<K, V> mapIterator = mapIterator();
        while (mapIterator.hasNext()) {
            objectOutputStream.writeObject(mapIterator.next());
            objectOutputStream.writeObject(mapIterator.getValue());
        }
        objectOutputStream.writeObject(null);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = new C18754b(this);
        }
        return this.entrySet;
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public V get(Object obj) {
        purgeBeforeRead();
        AbstractHashedMap.HashEntry<K, V> entry = getEntry(obj);
        if (entry == null) {
            return null;
        }
        return entry.getValue();
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public AbstractHashedMap.HashEntry<K, V> getEntry(Object obj) {
        if (obj == null) {
            return null;
        }
        return super.getEntry(obj);
    }

    public int hashEntry(Object obj, Object obj2) {
        return (obj2 != null ? obj2.hashCode() : 0) ^ (obj == null ? 0 : obj.hashCode());
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public void init() {
        this.queue = new ReferenceQueue<>();
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public boolean isEmpty() {
        purgeBeforeRead();
        return super.isEmpty();
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public boolean isEqualKey(Object obj, Object obj2) {
        if (this.keyType != ReferenceStrength.HARD) {
            obj2 = ((Reference) obj2).get();
        }
        return obj == obj2 || obj.equals(obj2);
    }

    public boolean isKeyType(ReferenceStrength referenceStrength) {
        return this.keyType == referenceStrength;
    }

    public boolean isValueType(ReferenceStrength referenceStrength) {
        return this.valueType == referenceStrength;
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        if (this.keySet == null) {
            this.keySet = new C18756d(this);
        }
        return this.keySet;
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, org.apache.commons.collections4.IterableGet
    public MapIterator<K, V> mapIterator() {
        return new C18758f(this);
    }

    public void purge() {
        Reference<? extends Object> poll = this.queue.poll();
        while (poll != null) {
            purge(poll);
            poll = this.queue.poll();
        }
    }

    public void purgeBeforeRead() {
        purge();
    }

    public void purgeBeforeWrite() {
        purge();
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        if (k == null) {
            throw new NullPointerException("null keys not allowed");
        }
        if (v == null) {
            throw new NullPointerException("null values not allowed");
        }
        purgeBeforeWrite();
        return (V) super.put(k, v);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        if (obj == null) {
            return null;
        }
        purgeBeforeWrite();
        return (V) super.remove(obj);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public int size() {
        purgeBeforeRead();
        return super.size();
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap, java.util.Map, org.apache.commons.collections4.Get
    public Collection<V> values() {
        if (this.values == null) {
            this.values = new C18759g(this);
        }
        return this.values;
    }

    public AbstractReferenceMap(ReferenceStrength referenceStrength, ReferenceStrength referenceStrength2, int i, float f, boolean z) {
        super(i, f);
        this.keyType = referenceStrength;
        this.valueType = referenceStrength2;
        this.purgeValues = z;
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap
    public ReferenceEntry<K, V> createEntry(AbstractHashedMap.HashEntry<K, V> hashEntry, int i, K k, V v) {
        return new ReferenceEntry<>(this, hashEntry, i, k, v);
    }

    public void purge(Reference<?> reference) {
        int hashIndex = hashIndex(reference.hashCode(), this.data.length);
        AbstractHashedMap.HashEntry<K, V> hashEntry = null;
        for (AbstractHashedMap.HashEntry<K, V> hashEntry2 = this.data[hashIndex]; hashEntry2 != null; hashEntry2 = hashEntry2.next) {
            ReferenceEntry referenceEntry = (ReferenceEntry) hashEntry2;
            if (referenceEntry.purge(reference)) {
                if (hashEntry == null) {
                    this.data[hashIndex] = hashEntry2.next;
                } else {
                    hashEntry.next = hashEntry2.next;
                }
                this.size--;
                referenceEntry.onPurge();
                return;
            }
            hashEntry = hashEntry2;
        }
    }
}
