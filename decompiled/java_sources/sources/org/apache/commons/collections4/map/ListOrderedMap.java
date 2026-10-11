package org.apache.commons.collections4.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.OrderedMap;
import org.apache.commons.collections4.OrderedMapIterator;
import org.apache.commons.collections4.ResettableIterator;
import org.apache.commons.collections4.iterators.AbstractUntypedIteratorDecorator;
import org.apache.commons.collections4.keyvalue.AbstractMapEntry;
import org.apache.commons.collections4.list.UnmodifiableList;

/* loaded from: classes11.dex */
public class ListOrderedMap<K, V> extends AbstractMapDecorator<K, V> implements OrderedMap<K, V>, Serializable {
    private static final long serialVersionUID = 2728177751851003750L;
    private final List<K> insertOrder;

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$a */
    /* loaded from: classes11.dex */
    public static class C18773a<K, V> extends AbstractSet<Map.Entry<K, V>> {

        /* renamed from: e */
        public final ListOrderedMap<K, V> f105189e;

        /* renamed from: f */
        public final List<K> f105190f;

        /* renamed from: g */
        public Set<Map.Entry<K, V>> f105191g;

        public C18773a(ListOrderedMap<K, V> listOrderedMap, List<K> list) {
            this.f105189e = listOrderedMap;
            this.f105190f = list;
        }

        /* renamed from: a */
        public final Set<Map.Entry<K, V>> m66019a() {
            if (this.f105191g == null) {
                this.f105191g = this.f105189e.decorated().entrySet();
            }
            return this.f105191g;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f105189e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return m66019a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return m66019a().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return m66019a().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return m66019a().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f105189e.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new C18775c(this.f105189e, this.f105190f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry) || !m66019a().contains(obj)) {
                return false;
            }
            this.f105189e.remove(((Map.Entry) obj).getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105189e.size();
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            return m66019a().toString();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$b */
    /* loaded from: classes11.dex */
    public static class C18774b<K> extends AbstractSet<K> {

        /* renamed from: e */
        public final ListOrderedMap<K, Object> f105192e;

        /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$b$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractUntypedIteratorDecorator<Map.Entry<K, Object>, K> {
            public a(Iterator it2) {
                super(it2);
            }

            @Override // java.util.Iterator
            public K next() {
                return getIterator().next().getKey();
            }
        }

        public C18774b(ListOrderedMap<K, ?> listOrderedMap) {
            this.f105192e = listOrderedMap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.f105192e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f105192e.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<K> iterator() {
            return new a(this.f105192e.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105192e.size();
        }
    }

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$c */
    /* loaded from: classes11.dex */
    public static class C18775c<K, V> extends AbstractUntypedIteratorDecorator<K, Map.Entry<K, V>> {

        /* renamed from: f */
        public final ListOrderedMap<K, V> f105194f;

        /* renamed from: g */
        public K f105195g;

        public C18775c(ListOrderedMap<K, V> listOrderedMap, List<K> list) {
            super(list.iterator());
            this.f105195g = null;
            this.f105194f = listOrderedMap;
        }

        @Override // org.apache.commons.collections4.iterators.AbstractUntypedIteratorDecorator, java.util.Iterator
        public void remove() {
            super.remove();
            this.f105194f.decorated().remove(this.f105195g);
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            K next = getIterator().next();
            this.f105195g = next;
            return new C18776d(this.f105194f, next);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$d */
    /* loaded from: classes11.dex */
    public static class C18776d<K, V> extends AbstractMapEntry<K, V> {

        /* renamed from: g */
        public final ListOrderedMap<K, V> f105196g;

        public C18776d(ListOrderedMap<K, V> listOrderedMap, K k) {
            super(k, null);
            this.f105196g = listOrderedMap;
        }

        @Override // org.apache.commons.collections4.keyvalue.AbstractKeyValue, org.apache.commons.collections4.KeyValue
        public V getValue() {
            return this.f105196g.get(getKey());
        }

        @Override // org.apache.commons.collections4.keyvalue.AbstractMapEntry, org.apache.commons.collections4.keyvalue.AbstractKeyValue, java.util.Map.Entry
        public V setValue(V v) {
            return this.f105196g.decorated().put(getKey(), v);
        }
    }

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$e */
    /* loaded from: classes11.dex */
    public static class C18777e<K, V> implements OrderedMapIterator<K, V>, ResettableIterator<K> {

        /* renamed from: e */
        public final ListOrderedMap<K, V> f105197e;

        /* renamed from: f */
        public ListIterator<K> f105198f;

        /* renamed from: g */
        public K f105199g = null;

        /* renamed from: h */
        public boolean f105200h = false;

        public C18777e(ListOrderedMap<K, V> listOrderedMap) {
            this.f105197e = listOrderedMap;
            this.f105198f = ((ListOrderedMap) listOrderedMap).insertOrder.listIterator();
        }

        @Override // org.apache.commons.collections4.MapIterator
        public K getKey() {
            if (this.f105200h) {
                return this.f105199g;
            }
            throw new IllegalStateException("getKey() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V getValue() {
            if (this.f105200h) {
                return this.f105197e.get(this.f105199g);
            }
            throw new IllegalStateException("getValue() can only be called after next() and before remove()");
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f105198f.hasNext();
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return this.f105198f.hasPrevious();
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public K next() {
            K next = this.f105198f.next();
            this.f105199g = next;
            this.f105200h = true;
            return next;
        }

        @Override // org.apache.commons.collections4.OrderedMapIterator, org.apache.commons.collections4.OrderedIterator
        public K previous() {
            K previous = this.f105198f.previous();
            this.f105199g = previous;
            this.f105200h = true;
            return previous;
        }

        @Override // org.apache.commons.collections4.MapIterator, java.util.Iterator
        public void remove() {
            if (!this.f105200h) {
                throw new IllegalStateException("remove() can only be called once after next()");
            }
            this.f105198f.remove();
            this.f105197e.map.remove(this.f105199g);
            this.f105200h = false;
        }

        @Override // org.apache.commons.collections4.ResettableIterator
        public void reset() {
            this.f105198f = ((ListOrderedMap) this.f105197e).insertOrder.listIterator();
            this.f105199g = null;
            this.f105200h = false;
        }

        @Override // org.apache.commons.collections4.MapIterator
        public V setValue(V v) {
            if (this.f105200h) {
                return this.f105197e.map.put(this.f105199g, v);
            }
            throw new IllegalStateException("setValue() can only be called after next() and before remove()");
        }

        public String toString() {
            if (!this.f105200h) {
                return "Iterator[]";
            }
            return "Iterator[" + getKey() + "=" + getValue() + IteratorUtils.f104924b;
        }
    }

    /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$f */
    /* loaded from: classes11.dex */
    public static class C18778f<V> extends AbstractList<V> {

        /* renamed from: e */
        public final ListOrderedMap<Object, V> f105201e;

        /* renamed from: org.apache.commons.collections4.map.ListOrderedMap$f$a */
        /* loaded from: classes11.dex */
        public class a extends AbstractUntypedIteratorDecorator<Map.Entry<Object, V>, V> {
            public a(Iterator it2) {
                super(it2);
            }

            @Override // java.util.Iterator
            public V next() {
                return getIterator().next().getValue();
            }
        }

        public C18778f(ListOrderedMap<?, V> listOrderedMap) {
            this.f105201e = listOrderedMap;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            this.f105201e.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f105201e.containsValue(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public V get(int i) {
            return this.f105201e.getValue(i);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<V> iterator() {
            return new a(this.f105201e.entrySet().iterator());
        }

        @Override // java.util.AbstractList, java.util.List
        public V remove(int i) {
            return this.f105201e.remove(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public V set(int i, V v) {
            return this.f105201e.setValue(i, v);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f105201e.size();
        }
    }

    public ListOrderedMap() {
        this(new HashMap());
    }

    public static <K, V> ListOrderedMap<K, V> listOrderedMap(Map<K, V> map) {
        return new ListOrderedMap<>(map);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.map = (Map) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.map);
    }

    public List<K> asList() {
        return keyList();
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public void clear() {
        decorated().clear();
        this.insertOrder.clear();
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Set<Map.Entry<K, V>> entrySet() {
        return new C18773a(this, this.insertOrder);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K firstKey() {
        if (size() != 0) {
            return this.insertOrder.get(0);
        }
        throw new NoSuchElementException("Map is empty");
    }

    public K get(int i) {
        return this.insertOrder.get(i);
    }

    public V getValue(int i) {
        return get(this.insertOrder.get(i));
    }

    public int indexOf(Object obj) {
        return this.insertOrder.indexOf(obj);
    }

    public List<K> keyList() {
        return UnmodifiableList.unmodifiableList(this.insertOrder);
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Set<K> keySet() {
        return new C18774b(this);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K lastKey() {
        if (size() != 0) {
            return this.insertOrder.get(size() - 1);
        }
        throw new NoSuchElementException("Map is empty");
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K nextKey(Object obj) {
        int indexOf = this.insertOrder.indexOf(obj);
        if (indexOf < 0 || indexOf >= size() - 1) {
            return null;
        }
        return this.insertOrder.get(indexOf + 1);
    }

    @Override // org.apache.commons.collections4.OrderedMap
    public K previousKey(Object obj) {
        int indexOf = this.insertOrder.indexOf(obj);
        if (indexOf > 0) {
            return this.insertOrder.get(indexOf - 1);
        }
        return null;
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public V put(K k, V v) {
        if (decorated().containsKey(k)) {
            return decorated().put(k, v);
        }
        V put = decorated().put(k, v);
        this.insertOrder.add(k);
        return put;
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Put
    public void putAll(Map<? extends K, ? extends V> map) {
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public V remove(Object obj) {
        if (!decorated().containsKey(obj)) {
            return null;
        }
        V remove = decorated().remove(obj);
        this.insertOrder.remove(obj);
        return remove;
    }

    public V setValue(int i, V v) {
        return put(this.insertOrder.get(i), v);
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator
    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (z) {
                z = false;
            } else {
                sb.append(", ");
            }
            if (key == this) {
                key = "(this Map)";
            }
            sb.append(key);
            sb.append('=');
            if (value == this) {
                value = "(this Map)";
            }
            sb.append(value);
        }
        sb.append('}');
        return sb.toString();
    }

    public List<V> valueList() {
        return new C18778f(this);
    }

    @Override // org.apache.commons.collections4.map.AbstractMapDecorator, java.util.Map, org.apache.commons.collections4.Get
    public Collection<V> values() {
        return new C18778f(this);
    }

    public ListOrderedMap(Map<K, V> map) {
        super(map);
        ArrayList arrayList = new ArrayList();
        this.insertOrder = arrayList;
        arrayList.addAll(decorated().keySet());
    }

    @Override // org.apache.commons.collections4.map.AbstractIterableMap, org.apache.commons.collections4.IterableGet
    public OrderedMapIterator<K, V> mapIterator() {
        return new C18777e(this);
    }

    public void putAll(int i, Map<? extends K, ? extends V> map) {
        if (i >= 0 && i <= this.insertOrder.size()) {
            for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
                boolean containsKey = containsKey(entry.getKey());
                put(i, entry.getKey(), entry.getValue());
                if (containsKey) {
                    i = indexOf(entry.getKey());
                }
                i++;
            }
            return;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.insertOrder.size());
    }

    public V remove(int i) {
        return remove(get(i));
    }

    public V put(int i, K k, V v) {
        if (i >= 0 && i <= this.insertOrder.size()) {
            Map<K, V> decorated = decorated();
            if (decorated.containsKey(k)) {
                V remove = decorated.remove(k);
                int indexOf = this.insertOrder.indexOf(k);
                this.insertOrder.remove(indexOf);
                if (indexOf < i) {
                    i--;
                }
                this.insertOrder.add(i, k);
                decorated.put(k, v);
                return remove;
            }
            this.insertOrder.add(i, k);
            decorated.put(k, v);
            return null;
        }
        throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.insertOrder.size());
    }
}
