package org.apache.commons.collections4.multimap;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.MapIterator;
import org.apache.commons.collections4.MultiSet;
import org.apache.commons.collections4.MultiValuedMap;
import org.apache.commons.collections4.Transformer;
import org.apache.commons.collections4.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections4.iterators.EmptyMapIterator;
import org.apache.commons.collections4.iterators.IteratorChain;
import org.apache.commons.collections4.iterators.LazyIteratorChain;
import org.apache.commons.collections4.iterators.TransformIterator;
import org.apache.commons.collections4.keyvalue.AbstractMapEntry;
import org.apache.commons.collections4.keyvalue.UnmodifiableMapEntry;
import org.apache.commons.collections4.multiset.AbstractMultiSet;
import org.apache.commons.collections4.multiset.UnmodifiableMultiSet;

/* loaded from: classes11.dex */
public abstract class AbstractMultiValuedMap<K, V> implements MultiValuedMap<K, V> {
    private transient AbstractMultiValuedMap<K, V>.C18798b asMapView;
    private transient AbstractMultiValuedMap<K, V>.C18799c entryValuesView;
    private transient MultiSet<K> keysMultiSetView;
    private transient Map<K, Collection<V>> map;
    private transient Collection<V> valuesView;

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$b */
    /* loaded from: classes11.dex */
    public class C18798b extends AbstractMap<K, Collection<V>> {

        /* renamed from: e */
        public final transient Map<K, Collection<V>> f105241e;

        /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$b$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractSet<Map.Entry<K, Collection<V>>> {
            public a() {
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public void clear() {
                C18798b.this.clear();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(Object obj) {
                return C18798b.this.f105241e.entrySet().contains(obj);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public Iterator<Map.Entry<K, Collection<V>>> iterator() {
                C18798b c18798b = C18798b.this;
                return new b(c18798b.f105241e.entrySet().iterator());
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                AbstractMultiValuedMap.this.remove(((Map.Entry) obj).getKey());
                return true;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public int size() {
                return C18798b.this.size();
            }
        }

        /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$b$b */
        /* loaded from: classes11.dex */
        public class b extends AbstractIteratorDecorator<Map.Entry<K, Collection<V>>> {
            public b(Iterator<Map.Entry<K, Collection<V>>> it2) {
                super(it2);
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // org.apache.commons.collections4.iterators.AbstractIteratorDecorator, java.util.Iterator
            public Map.Entry<K, Collection<V>> next() {
                Object key = ((Map.Entry) super.next()).getKey();
                return new UnmodifiableMapEntry(key, AbstractMultiValuedMap.this.wrappedCollection(key));
            }
        }

        public C18798b(Map<K, Collection<V>> map) {
            this.f105241e = map;
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<V> get(Object obj) {
            if (this.f105241e.get(obj) == null) {
                return null;
            }
            return AbstractMultiValuedMap.this.wrappedCollection(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Collection<V> remove(Object obj) {
            Collection<V> remove = this.f105241e.remove(obj);
            if (remove == null) {
                return null;
            }
            Collection<V> createCollection = AbstractMultiValuedMap.this.createCollection();
            createCollection.addAll(remove);
            remove.clear();
            return createCollection;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            AbstractMultiValuedMap.this.clear();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(Object obj) {
            return this.f105241e.containsKey(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<Map.Entry<K, Collection<V>>> entrySet() {
            return new a();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(Object obj) {
            return this == obj || this.f105241e.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f105241e.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set<K> keySet() {
            return AbstractMultiValuedMap.this.keySet();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f105241e.size();
        }

        @Override // java.util.AbstractMap
        public String toString() {
            return this.f105241e.toString();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$c */
    /* loaded from: classes11.dex */
    public class C18799c extends AbstractCollection<Map.Entry<K, V>> {

        /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$c$a */
        /* loaded from: classes11.dex */
        public class a extends LazyIteratorChain<Map.Entry<K, V>> {

            /* renamed from: i */
            public final Collection<K> f105246i;

            /* renamed from: j */
            public final Iterator<K> f105247j;

            /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$c$a$a, reason: collision with other inner class name */
            /* loaded from: classes11.dex */
            public class C20622a implements Transformer<V, Map.Entry<K, V>> {

                /* renamed from: e */
                public final /* synthetic */ Object f105249e;

                public C20622a(Object obj) {
                    this.f105249e = obj;
                }

                @Override // org.apache.commons.collections4.Transformer
                /* renamed from: a, reason: merged with bridge method [inline-methods] */
                public Map.Entry<K, V> transform(V v) {
                    return new C18801e(this.f105249e, v);
                }
            }

            public a() {
                ArrayList arrayList = new ArrayList(AbstractMultiValuedMap.this.getMap().keySet());
                this.f105246i = arrayList;
                this.f105247j = arrayList.iterator();
            }

            @Override // org.apache.commons.collections4.iterators.LazyIteratorChain
            public Iterator<? extends Map.Entry<K, V>> nextIterator(int i) {
                if (!this.f105247j.hasNext()) {
                    return null;
                }
                K next = this.f105247j.next();
                return new TransformIterator(new C18804h(next), new C20622a(next));
            }
        }

        public C18799c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractMultiValuedMap.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$d */
    /* loaded from: classes11.dex */
    public class C18800d extends AbstractMultiSet<K> {

        /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$d$a */
        /* loaded from: classes11.dex */
        public final class a implements Transformer<Map.Entry<K, Collection<V>>, MultiSet.Entry<K>> {

            /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$d$a$a, reason: collision with other inner class name */
            /* loaded from: classes11.dex */
            public class C20623a extends AbstractMultiSet.AbstractEntry<K> {

                /* renamed from: a */
                public final /* synthetic */ Map.Entry f105253a;

                public C20623a(Map.Entry entry) {
                    this.f105253a = entry;
                }

                @Override // org.apache.commons.collections4.MultiSet.Entry
                public int getCount() {
                    return ((Collection) this.f105253a.getValue()).size();
                }

                @Override // org.apache.commons.collections4.MultiSet.Entry
                public K getElement() {
                    return (K) this.f105253a.getKey();
                }
            }

            public a() {
            }

            @Override // org.apache.commons.collections4.Transformer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public MultiSet.Entry<K> transform(Map.Entry<K, Collection<V>> entry) {
                return new C20623a(entry);
            }
        }

        public C18800d() {
        }

        @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            return AbstractMultiValuedMap.this.getMap().containsKey(obj);
        }

        @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
        public Iterator<MultiSet.Entry<K>> createEntrySetIterator() {
            return IteratorUtils.transformedIterator(AbstractMultiValuedMap.this.map.entrySet().iterator(), new a());
        }

        @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, org.apache.commons.collections4.MultiSet
        public int getCount(Object obj) {
            Collection<V> collection = AbstractMultiValuedMap.this.getMap().get(obj);
            if (collection != null) {
                return collection.size();
            }
            return 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return AbstractMultiValuedMap.this.getMap().isEmpty();
        }

        @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
        public int size() {
            return AbstractMultiValuedMap.this.size();
        }

        @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
        public int uniqueElements() {
            return AbstractMultiValuedMap.this.getMap().size();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$e */
    /* loaded from: classes11.dex */
    public class C18801e extends AbstractMapEntry<K, V> {
        public C18801e(K k, V v) {
            super(k, v);
        }

        @Override // org.apache.commons.collections4.keyvalue.AbstractMapEntry, org.apache.commons.collections4.keyvalue.AbstractKeyValue, java.util.Map.Entry
        public V setValue(V v) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$f */
    /* loaded from: classes11.dex */
    public class C18802f implements MapIterator<K, V> {

        /* renamed from: e */
        public final Iterator<Map.Entry<K, V>> f105256e;

        /* renamed from: f */
        public Map.Entry<K, V> f105257f = null;

        public C18802f() {
            this.f105256e = AbstractMultiValuedMap.this.entries().iterator();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public K getKey() {
            Map.Entry<K, V> entry = this.f105257f;
            if (entry != null) {
                return entry.getKey();
            }
            throw new IllegalStateException();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V getValue() {
            Map.Entry<K, V> entry = this.f105257f;
            if (entry != null) {
                return entry.getValue();
            }
            throw new IllegalStateException();
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f105256e.hasNext();
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public K next() {
            Map.Entry<K, V> next = this.f105256e.next();
            this.f105257f = next;
            return next.getKey();
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public void remove() {
            this.f105256e.remove();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V setValue(V v) {
            Map.Entry<K, V> entry = this.f105257f;
            if (entry != null) {
                return entry.setValue(v);
            }
            throw new IllegalStateException();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$g */
    /* loaded from: classes11.dex */
    public class C18803g extends AbstractCollection<V> {
        public C18803g() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            AbstractMultiValuedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            IteratorChain iteratorChain = new IteratorChain();
            Iterator<K> it2 = AbstractMultiValuedMap.this.keySet().iterator();
            while (it2.hasNext()) {
                iteratorChain.addIterator(new C18804h(it2.next()));
            }
            return iteratorChain;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return AbstractMultiValuedMap.this.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$h */
    /* loaded from: classes11.dex */
    public class C18804h implements Iterator<V> {

        /* renamed from: e */
        public final Object f105260e;

        /* renamed from: f */
        public final Collection<V> f105261f;

        /* renamed from: g */
        public final Iterator<V> f105262g;

        public C18804h(Object obj) {
            this.f105260e = obj;
            Collection<V> collection = AbstractMultiValuedMap.this.getMap().get(obj);
            this.f105261f = collection;
            this.f105262g = collection.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105262g.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f105262g.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f105262g.remove();
            if (this.f105261f.isEmpty()) {
                AbstractMultiValuedMap.this.remove(this.f105260e);
            }
        }
    }

    public AbstractMultiValuedMap() {
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Map<K, Collection<V>> asMap() {
        AbstractMultiValuedMap<K, V>.C18798b c18798b = this.asMapView;
        if (c18798b != null) {
            return c18798b;
        }
        AbstractMultiValuedMap<K, V>.C18798b c18798b2 = new C18798b(this.map);
        this.asMapView = c18798b2;
        return c18798b2;
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public void clear() {
        getMap().clear();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean containsKey(Object obj) {
        return getMap().containsKey(obj);
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean containsMapping(Object obj, Object obj2) {
        Collection<V> collection = getMap().get(obj);
        return collection != null && collection.contains(obj2);
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract Collection<V> createCollection();

    /* JADX WARN: Multi-variable type inference failed */
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            Collection collection = get(objectInputStream.readObject());
            int readInt2 = objectInputStream.readInt();
            for (int i2 = 0; i2 < readInt2; i2++) {
                collection.add(objectInputStream.readObject());
            }
        }
    }

    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.map.size());
        for (Map.Entry<K, Collection<V>> entry : this.map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().size());
            Iterator<V> it2 = entry.getValue().iterator();
            while (it2.hasNext()) {
                objectOutputStream.writeObject(it2.next());
            }
        }
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Collection<Map.Entry<K, V>> entries() {
        AbstractMultiValuedMap<K, V>.C18799c c18799c = this.entryValuesView;
        if (c18799c != null) {
            return c18799c;
        }
        AbstractMultiValuedMap<K, V>.C18799c c18799c2 = new C18799c();
        this.entryValuesView = c18799c2;
        return c18799c2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof MultiValuedMap) {
            return asMap().equals(((MultiValuedMap) obj).asMap());
        }
        return false;
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Collection<V> get(K k) {
        return wrappedCollection(k);
    }

    public Map<K, ? extends Collection<V>> getMap() {
        return this.map;
    }

    public int hashCode() {
        return getMap().hashCode();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean isEmpty() {
        return getMap().isEmpty();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Set<K> keySet() {
        return getMap().keySet();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public MultiSet<K> keys() {
        if (this.keysMultiSetView == null) {
            this.keysMultiSetView = UnmodifiableMultiSet.unmodifiableMultiSet(new C18800d());
        }
        return this.keysMultiSetView;
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public MapIterator<K, V> mapIterator() {
        return size() == 0 ? EmptyMapIterator.emptyMapIterator() : new C18802f();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean put(K k, V v) {
        Collection<V> collection = getMap().get(k);
        if (collection != null) {
            return collection.add(v);
        }
        Collection<V> createCollection = createCollection();
        if (!createCollection.add(v)) {
            return false;
        }
        this.map.put(k, createCollection);
        return true;
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean putAll(Map<? extends K, ? extends V> map) {
        if (map != null) {
            boolean z = false;
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                z |= put(entry.getKey(), entry.getValue());
            }
            return z;
        }
        throw new NullPointerException("Map must not be null.");
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Collection<V> remove(Object obj) {
        return CollectionUtils.emptyIfNull(getMap().remove(obj));
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean removeMapping(Object obj, Object obj2) {
        Collection<V> collection = getMap().get(obj);
        if (collection == null) {
            return false;
        }
        boolean remove = collection.remove(obj2);
        if (collection.isEmpty()) {
            getMap().remove(obj);
        }
        return remove;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setMap(Map<K, ? extends Collection<V>> map) {
        this.map = map;
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public int size() {
        Iterator<? extends Collection<V>> it2 = getMap().values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    public String toString() {
        return getMap().toString();
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public Collection<V> values() {
        Collection<V> collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        C18803g c18803g = new C18803g();
        this.valuesView = c18803g;
        return c18803g;
    }

    public Collection<V> wrappedCollection(K k) {
        return new C18805i(k);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractMultiValuedMap(Map<K, ? extends Collection<V>> map) {
        if (map != 0) {
            this.map = map;
            return;
        }
        throw new NullPointerException("Map must not be null.");
    }

    /* renamed from: org.apache.commons.collections4.multimap.AbstractMultiValuedMap$i */
    /* loaded from: classes11.dex */
    public class C18805i implements Collection<V> {

        /* renamed from: e */
        public final K f105264e;

        public C18805i(K k) {
            this.f105264e = k;
        }

        /* renamed from: a */
        public Collection<V> mo66028a() {
            return AbstractMultiValuedMap.this.getMap().get(this.f105264e);
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                mo66028a = AbstractMultiValuedMap.this.createCollection();
                AbstractMultiValuedMap.this.map.put(this.f105264e, mo66028a);
            }
            return mo66028a.add(v);
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                mo66028a = AbstractMultiValuedMap.this.createCollection();
                AbstractMultiValuedMap.this.map.put(this.f105264e, mo66028a);
            }
            return mo66028a.addAll(collection);
        }

        @Override // java.util.Collection
        public void clear() {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a != null) {
                mo66028a.clear();
                AbstractMultiValuedMap.this.remove(this.f105264e);
            }
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            Collection<V> mo66028a = mo66028a();
            return mo66028a != null && mo66028a.contains(obj);
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Collection<V> mo66028a = mo66028a();
            return mo66028a != null && mo66028a.containsAll(collection);
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            Collection<V> mo66028a = mo66028a();
            return mo66028a == null || mo66028a.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return mo66028a() == null ? IteratorUtils.EMPTY_ITERATOR : new C18804h(this.f105264e);
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return false;
            }
            boolean remove = mo66028a.remove(obj);
            if (mo66028a.isEmpty()) {
                AbstractMultiValuedMap.this.remove(this.f105264e);
            }
            return remove;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return false;
            }
            boolean removeAll = mo66028a.removeAll(collection);
            if (mo66028a.isEmpty()) {
                AbstractMultiValuedMap.this.remove(this.f105264e);
            }
            return removeAll;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return false;
            }
            boolean retainAll = mo66028a.retainAll(collection);
            if (mo66028a.isEmpty()) {
                AbstractMultiValuedMap.this.remove(this.f105264e);
            }
            return retainAll;
        }

        @Override // java.util.Collection
        public int size() {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return 0;
            }
            return mo66028a.size();
        }

        @Override // java.util.Collection
        public Object[] toArray() {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return CollectionUtils.EMPTY_COLLECTION.toArray();
            }
            return mo66028a.toArray();
        }

        public String toString() {
            Collection<V> mo66028a = mo66028a();
            return mo66028a == null ? CollectionUtils.EMPTY_COLLECTION.toString() : mo66028a.toString();
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            Collection<V> mo66028a = mo66028a();
            if (mo66028a == null) {
                return (T[]) CollectionUtils.EMPTY_COLLECTION.toArray(tArr);
            }
            return (T[]) mo66028a.toArray(tArr);
        }
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean putAll(MultiValuedMap<? extends K, ? extends V> multiValuedMap) {
        if (multiValuedMap != null) {
            boolean z = false;
            for (Map.Entry<? extends K, ? extends V> entry : multiValuedMap.entries()) {
                z |= put(entry.getKey(), entry.getValue());
            }
            return z;
        }
        throw new NullPointerException("Map must not be null.");
    }

    @Override // org.apache.commons.collections4.MultiValuedMap
    public boolean putAll(K k, Iterable<? extends V> iterable) {
        if (iterable != null) {
            if (iterable instanceof Collection) {
                Collection<? extends V> collection = (Collection) iterable;
                return !collection.isEmpty() && get(k).addAll(collection);
            }
            Iterator<? extends V> it2 = iterable.iterator();
            return it2.hasNext() && CollectionUtils.addAll(get(k), it2);
        }
        throw new NullPointerException("Values must not be null.");
    }
}
