package org.apache.commons.collections4.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.Factory;
import org.apache.commons.collections4.FunctorException;
import org.apache.commons.collections4.MultiMap;
import org.apache.commons.collections4.Transformer;
import org.apache.commons.collections4.iterators.EmptyIterator;
import org.apache.commons.collections4.iterators.IteratorChain;
import org.apache.commons.collections4.iterators.LazyIteratorChain;
import org.apache.commons.collections4.iterators.TransformIterator;

@Deprecated
/* loaded from: classes11.dex */
public class MultiValueMap<K, V> extends AbstractMapDecorator<K, Object> implements MultiMap<K, V>, Serializable {
    private static final long serialVersionUID = -2214159910087182007L;
    private final Factory<? extends Collection<V>> collectionFactory;
    private transient Collection<V> valuesView;

    /* loaded from: classes11.dex */
    public static class ReflectionFactory<T extends Collection<?>> implements Factory<T>, Serializable {
        private static final long serialVersionUID = 2986114157496788874L;
        private final Class<T> clazz;

        public ReflectionFactory(Class<T> cls) {
            this.clazz = cls;
        }

        private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
            objectInputStream.defaultReadObject();
            Class<T> cls = this.clazz;
            if (cls != null && !Collection.class.isAssignableFrom(cls)) {
                throw new UnsupportedOperationException();
            }
        }

        @Override // org.apache.commons.collections4.Factory
        public T create() {
            try {
                return this.clazz.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (Exception e) {
                throw new FunctorException("Cannot instantiate class: " + this.clazz, e);
            }
        }
    }

    /* renamed from: org.apache.commons.collections4.map.MultiValueMap$a */
    /* loaded from: classes11.dex */
    public class C18779a extends LazyIteratorChain<Map.Entry<K, V>> {

        /* renamed from: i */
        public final /* synthetic */ Iterator f105203i;

        /* renamed from: org.apache.commons.collections4.map.MultiValueMap$a$a */
        /* loaded from: classes11.dex */
        public class a implements Transformer<V, Map.Entry<K, V>> {

            /* renamed from: e */
            public final /* synthetic */ Object f105205e;

            /* renamed from: org.apache.commons.collections4.map.MultiValueMap$a$a$a, reason: collision with other inner class name */
            /* loaded from: classes11.dex */
            public class C20621a implements Map.Entry<K, V> {

                /* renamed from: e */
                public final /* synthetic */ Object f105207e;

                public C20621a(Object obj) {
                    this.f105207e = obj;
                }

                @Override // java.util.Map.Entry
                public K getKey() {
                    return (K) a.this.f105205e;
                }

                @Override // java.util.Map.Entry
                public V getValue() {
                    return (V) this.f105207e;
                }

                @Override // java.util.Map.Entry
                public V setValue(V v) {
                    throw new UnsupportedOperationException();
                }
            }

            public a(Object obj) {
                this.f105205e = obj;
            }

            @Override // org.apache.commons.collections4.Transformer
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public Map.Entry<K, V> transform(V v) {
                return new C20621a(v);
            }
        }

        public C18779a(Iterator it2) {
            this.f105203i = it2;
        }

        @Override // org.apache.commons.collections4.iterators.LazyIteratorChain
        public Iterator<? extends Map.Entry<K, V>> nextIterator(int i) {
            if (!this.f105203i.hasNext()) {
                return null;
            }
            Object next = this.f105203i.next();
            return new TransformIterator(new C18781c(next), new a(next));
        }
    }

    /* renamed from: org.apache.commons.collections4.map.MultiValueMap$b */
    /* loaded from: classes11.dex */
    public class C18780b extends AbstractCollection<V> {
        public C18780b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            MultiValueMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            IteratorChain iteratorChain = new IteratorChain();
            Iterator<K> it2 = MultiValueMap.this.keySet().iterator();
            while (it2.hasNext()) {
                iteratorChain.addIterator(new C18781c(it2.next()));
            }
            return iteratorChain;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return MultiValueMap.this.totalSize();
        }

        public /* synthetic */ C18780b(MultiValueMap multiValueMap, C18779a c18779a) {
            this();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.MultiValueMap$c */
    /* loaded from: classes11.dex */
    public class C18781c implements Iterator<V> {

        /* renamed from: e */
        public final Object f105210e;

        /* renamed from: f */
        public final Collection<V> f105211f;

        /* renamed from: g */
        public final Iterator<V> f105212g;

        public C18781c(Object obj) {
            this.f105210e = obj;
            Collection<V> collection = MultiValueMap.this.getCollection(obj);
            this.f105211f = collection;
            this.f105212g = collection.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105212g.hasNext();
        }

        @Override // java.util.Iterator
        public V next() {
            return this.f105212g.next();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f105212g.remove();
            if (this.f105211f.isEmpty()) {
                MultiValueMap.this.remove(this.f105210e);
            }
        }
    }

    public MultiValueMap() {
        this(new HashMap(), new ReflectionFactory(ArrayList.class));
    }

    public static <K, V> MultiValueMap<K, V> multiValueMap(Map<K, ? super Collection<V>> map) {
        return multiValueMap(map, ArrayList.class);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.map = (Map) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.map);
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        decorated().clear();
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public boolean containsValue(Object obj) {
        Set<Map.Entry<K, V>> entrySet = decorated().entrySet();
        if (entrySet == null) {
            return false;
        }
        Iterator<Map.Entry<K, V>> it2 = entrySet.iterator();
        while (it2.hasNext()) {
            if (((Collection) it2.next().getValue()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    public Collection<V> createCollection(int i) {
        return this.collectionFactory.create();
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, Object>> entrySet() {
        return super.entrySet();
    }

    public Collection<V> getCollection(Object obj) {
        return (Collection) decorated().get(obj);
    }

    public Iterator<V> iterator(Object obj) {
        if (!containsKey(obj)) {
            return EmptyIterator.emptyIterator();
        }
        return new C18781c(obj);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public Object put(K k, Object obj) {
        boolean add;
        Collection<V> collection = getCollection(k);
        if (collection == null) {
            add = true;
            Collection<V> createCollection = createCollection(1);
            createCollection.add(obj);
            if (createCollection.size() > 0) {
                decorated().put(k, createCollection);
            } else {
                add = false;
            }
        } else {
            add = collection.add(obj);
        }
        if (add) {
            return obj;
        }
        return null;
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public void putAll(Map<? extends K, ?> map) {
        if (map instanceof MultiMap) {
            for (Map.Entry<K, Object> entry : ((MultiMap) map).entrySet()) {
                putAll(entry.getKey(), (Collection) entry.getValue());
            }
            return;
        }
        for (Map.Entry<? extends K, ?> entry2 : map.entrySet()) {
            put(entry2.getKey(), entry2.getValue());
        }
    }

    @Override // org.apache.commons.collections4.MultiMap
    public boolean removeMapping(Object obj, Object obj2) {
        Collection<V> collection = getCollection(obj);
        if (collection == null || !collection.remove(obj2)) {
            return false;
        }
        if (!collection.isEmpty()) {
            return true;
        }
        remove(obj);
        return true;
    }

    public int size(Object obj) {
        Collection<V> collection = getCollection(obj);
        if (collection == null) {
            return 0;
        }
        return collection.size();
    }

    public int totalSize() {
        Iterator<V> it2 = decorated().values().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += CollectionUtils.size(it2.next());
        }
        return i;
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Collection<Object> values() {
        Collection<V> collection = this.valuesView;
        if (collection != null) {
            return collection;
        }
        C18780b c18780b = new C18780b(this, null);
        this.valuesView = c18780b;
        return c18780b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends Collection<V>> MultiValueMap(Map<K, ? super C> map, Factory<C> factory) {
        super(map);
        if (factory != 0) {
            this.collectionFactory = factory;
            return;
        }
        throw new IllegalArgumentException("The factory must not be null");
    }

    public static <K, V, C extends Collection<V>> MultiValueMap<K, V> multiValueMap(Map<K, ? super C> map, Class<C> cls) {
        return new MultiValueMap<>(map, new ReflectionFactory(cls));
    }

    public static <K, V, C extends Collection<V>> MultiValueMap<K, V> multiValueMap(Map<K, ? super C> map, Factory<C> factory) {
        return new MultiValueMap<>(map, factory);
    }

    public boolean containsValue(Object obj, Object obj2) {
        Collection<V> collection = getCollection(obj);
        if (collection == null) {
            return false;
        }
        return collection.contains(obj2);
    }

    public Iterator<Map.Entry<K, V>> iterator() {
        return new C18779a(new ArrayList(keySet()).iterator());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public boolean putAll(K k, Collection<V> collection) {
        if (collection == 0 || collection.size() == 0) {
            return false;
        }
        Collection<V> collection2 = getCollection(k);
        if (collection2 == null) {
            Collection<V> createCollection = createCollection(collection.size());
            createCollection.addAll(collection);
            if (createCollection.size() <= 0) {
                return false;
            }
            decorated().put(k, createCollection);
            return true;
        }
        return collection2.addAll(collection);
    }
}
