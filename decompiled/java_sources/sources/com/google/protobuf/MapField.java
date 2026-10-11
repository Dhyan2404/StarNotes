package com.google.protobuf;

import com.sunia.HTREnginev2.rqj;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes6.dex */
public class MapField<K, V> implements rqj {

    /* renamed from: b */
    public volatile boolean f37719b;

    /* renamed from: c */
    public volatile StorageMode f37720c;

    /* renamed from: d */
    public C6798c<K, V> f37721d;

    /* renamed from: e */
    public List<Message> f37722e;

    /* renamed from: f */
    public final InterfaceC6796a<K, V> f37723f;

    /* loaded from: classes6.dex */
    public enum StorageMode {
        MAP,
        LIST,
        BOTH
    }

    /* renamed from: com.google.protobuf.MapField$a */
    /* loaded from: classes6.dex */
    public interface InterfaceC6796a<K, V> {
        /* renamed from: a */
        Message mo29403a();

        /* renamed from: b */
        void mo29404b(Message message, Map<K, V> map);

        /* renamed from: c */
        Message mo29405c(K key, V value);
    }

    /* renamed from: com.google.protobuf.MapField$b */
    /* loaded from: classes6.dex */
    public static class C6797b<K, V> implements InterfaceC6796a<K, V> {

        /* renamed from: a */
        public final MapEntry<K, V> f37724a;

        public C6797b(MapEntry<K, V> defaultEntry) {
            this.f37724a = defaultEntry;
        }

        @Override // com.google.protobuf.MapField.InterfaceC6796a
        /* renamed from: a */
        public Message mo29403a() {
            return this.f37724a;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.protobuf.MapField.InterfaceC6796a
        /* renamed from: b */
        public void mo29404b(Message message, Map<K, V> map) {
            MapEntry mapEntry = (MapEntry) message;
            map.put(mapEntry.getKey(), mapEntry.getValue());
        }

        @Override // com.google.protobuf.MapField.InterfaceC6796a
        /* renamed from: c */
        public Message mo29405c(K key, V value) {
            return this.f37724a.newBuilderForType().setKey(key).setValue(value).buildPartial();
        }
    }

    /* renamed from: com.google.protobuf.MapField$c */
    /* loaded from: classes6.dex */
    public static class C6798c<K, V> implements Map<K, V> {

        /* renamed from: e */
        public final rqj f37725e;

        /* renamed from: f */
        public final Map<K, V> f37726f;

        /* renamed from: com.google.protobuf.MapField$c$a */
        /* loaded from: classes6.dex */
        public static class a<E> implements Collection<E> {

            /* renamed from: e */
            public final rqj f37727e;

            /* renamed from: f */
            public final Collection<E> f37728f;

            public a(rqj mutabilityOracle, Collection<E> delegate) {
                this.f37727e = mutabilityOracle;
                this.f37728f = delegate;
            }

            @Override // java.util.Collection
            public boolean add(E e) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public boolean addAll(Collection<? extends E> c) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.Collection
            public void clear() {
                this.f37727e.ensureMutable();
                this.f37728f.clear();
            }

            @Override // java.util.Collection
            public boolean contains(Object o) {
                return this.f37728f.contains(o);
            }

            @Override // java.util.Collection
            public boolean containsAll(Collection<?> c) {
                return this.f37728f.containsAll(c);
            }

            @Override // java.util.Collection
            public boolean equals(Object o) {
                return this.f37728f.equals(o);
            }

            @Override // java.util.Collection
            public int hashCode() {
                return this.f37728f.hashCode();
            }

            @Override // java.util.Collection
            public boolean isEmpty() {
                return this.f37728f.isEmpty();
            }

            @Override // java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f37727e, this.f37728f.iterator());
            }

            @Override // java.util.Collection
            public boolean remove(Object o) {
                this.f37727e.ensureMutable();
                return this.f37728f.remove(o);
            }

            @Override // java.util.Collection
            public boolean removeAll(Collection<?> c) {
                this.f37727e.ensureMutable();
                return this.f37728f.removeAll(c);
            }

            @Override // java.util.Collection
            public boolean retainAll(Collection<?> c) {
                this.f37727e.ensureMutable();
                return this.f37728f.retainAll(c);
            }

            @Override // java.util.Collection
            public int size() {
                return this.f37728f.size();
            }

            @Override // java.util.Collection
            public Object[] toArray() {
                return this.f37728f.toArray();
            }

            public String toString() {
                return this.f37728f.toString();
            }

            @Override // java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f37728f.toArray(tArr);
            }
        }

        /* renamed from: com.google.protobuf.MapField$c$b */
        /* loaded from: classes6.dex */
        public static class b<E> implements Iterator<E> {

            /* renamed from: e */
            public final rqj f37729e;

            /* renamed from: f */
            public final Iterator<E> f37730f;

            public b(rqj mutabilityOracle, Iterator<E> delegate) {
                this.f37729e = mutabilityOracle;
                this.f37730f = delegate;
            }

            public boolean equals(Object obj) {
                return this.f37730f.equals(obj);
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.f37730f.hasNext();
            }

            public int hashCode() {
                return this.f37730f.hashCode();
            }

            @Override // java.util.Iterator
            public E next() {
                return this.f37730f.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.f37729e.ensureMutable();
                this.f37730f.remove();
            }

            public String toString() {
                return this.f37730f.toString();
            }
        }

        /* renamed from: com.google.protobuf.MapField$c$c */
        /* loaded from: classes6.dex */
        public static class c<E> implements Set<E> {

            /* renamed from: e */
            public final rqj f37731e;

            /* renamed from: f */
            public final Set<E> f37732f;

            public c(rqj mutabilityOracle, Set<E> delegate) {
                this.f37731e = mutabilityOracle;
                this.f37732f = delegate;
            }

            @Override // java.util.Set, java.util.Collection
            public boolean add(E e) {
                this.f37731e.ensureMutable();
                return this.f37732f.add(e);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean addAll(Collection<? extends E> c) {
                this.f37731e.ensureMutable();
                return this.f37732f.addAll(c);
            }

            @Override // java.util.Set, java.util.Collection
            public void clear() {
                this.f37731e.ensureMutable();
                this.f37732f.clear();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean contains(Object o) {
                return this.f37732f.contains(o);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean containsAll(Collection<?> c) {
                return this.f37732f.containsAll(c);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean equals(Object o) {
                return this.f37732f.equals(o);
            }

            @Override // java.util.Set, java.util.Collection
            public int hashCode() {
                return this.f37732f.hashCode();
            }

            @Override // java.util.Set, java.util.Collection
            public boolean isEmpty() {
                return this.f37732f.isEmpty();
            }

            @Override // java.util.Set, java.util.Collection, java.lang.Iterable
            public Iterator<E> iterator() {
                return new b(this.f37731e, this.f37732f.iterator());
            }

            @Override // java.util.Set, java.util.Collection
            public boolean remove(Object o) {
                this.f37731e.ensureMutable();
                return this.f37732f.remove(o);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean removeAll(Collection<?> c) {
                this.f37731e.ensureMutable();
                return this.f37732f.removeAll(c);
            }

            @Override // java.util.Set, java.util.Collection
            public boolean retainAll(Collection<?> c) {
                this.f37731e.ensureMutable();
                return this.f37732f.retainAll(c);
            }

            @Override // java.util.Set, java.util.Collection
            public int size() {
                return this.f37732f.size();
            }

            @Override // java.util.Set, java.util.Collection
            public Object[] toArray() {
                return this.f37732f.toArray();
            }

            public String toString() {
                return this.f37732f.toString();
            }

            @Override // java.util.Set, java.util.Collection
            public <T> T[] toArray(T[] tArr) {
                return (T[]) this.f37732f.toArray(tArr);
            }
        }

        public C6798c(rqj mutabilityOracle, Map<K, V> delegate) {
            this.f37725e = mutabilityOracle;
            this.f37726f = delegate;
        }

        @Override // java.util.Map
        public void clear() {
            this.f37725e.ensureMutable();
            this.f37726f.clear();
        }

        @Override // java.util.Map
        public boolean containsKey(Object key) {
            return this.f37726f.containsKey(key);
        }

        @Override // java.util.Map
        public boolean containsValue(Object value) {
            return this.f37726f.containsValue(value);
        }

        @Override // java.util.Map
        public Set<Map.Entry<K, V>> entrySet() {
            return new c(this.f37725e, this.f37726f.entrySet());
        }

        @Override // java.util.Map
        public boolean equals(Object o) {
            return this.f37726f.equals(o);
        }

        @Override // java.util.Map
        public V get(Object key) {
            return this.f37726f.get(key);
        }

        @Override // java.util.Map
        public int hashCode() {
            return this.f37726f.hashCode();
        }

        @Override // java.util.Map
        public boolean isEmpty() {
            return this.f37726f.isEmpty();
        }

        @Override // java.util.Map
        public Set<K> keySet() {
            return new c(this.f37725e, this.f37726f.keySet());
        }

        @Override // java.util.Map
        public V put(K key, V value) {
            this.f37725e.ensureMutable();
            Internal.m29343a(key);
            Internal.m29343a(value);
            return this.f37726f.put(key, value);
        }

        @Override // java.util.Map
        public void putAll(Map<? extends K, ? extends V> m) {
            this.f37725e.ensureMutable();
            for (K k : m.keySet()) {
                Internal.m29343a(k);
                Internal.m29343a(m.get(k));
            }
            this.f37726f.putAll(m);
        }

        @Override // java.util.Map
        public V remove(Object key) {
            this.f37725e.ensureMutable();
            return this.f37726f.remove(key);
        }

        @Override // java.util.Map
        public int size() {
            return this.f37726f.size();
        }

        public String toString() {
            return this.f37726f.toString();
        }

        @Override // java.util.Map
        public Collection<V> values() {
            return new a(this.f37725e, this.f37726f.values());
        }
    }

    public MapField(InterfaceC6796a<K, V> converter, StorageMode mode, Map<K, V> mapData) {
        this.f37723f = converter;
        this.f37719b = true;
        this.f37720c = mode;
        this.f37721d = new C6798c<>(this, mapData);
        this.f37722e = null;
    }

    public static <K, V> MapField<K, V> emptyMapField(MapEntry<K, V> defaultEntry) {
        return new MapField<>(defaultEntry, StorageMode.MAP, Collections.emptyMap());
    }

    public static <K, V> MapField<K, V> newMapField(MapEntry<K, V> defaultEntry) {
        return new MapField<>(defaultEntry, StorageMode.MAP, new LinkedHashMap());
    }

    /* renamed from: a */
    public final Message m29396a(K key, V value) {
        return this.f37723f.mo29405c(key, value);
    }

    /* renamed from: b */
    public final C6798c<K, V> m29397b(List<Message> listData) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Message> it2 = listData.iterator();
        while (it2.hasNext()) {
            m29399d(it2.next(), linkedHashMap);
        }
        return new C6798c<>(this, linkedHashMap);
    }

    /* renamed from: c */
    public final List<Message> m29398c(C6798c<K, V> mapData) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<K, V> entry : mapData.entrySet()) {
            arrayList.add(m29396a(entry.getKey(), entry.getValue()));
        }
        return arrayList;
    }

    public void clear() {
        this.f37721d = new C6798c<>(this, new LinkedHashMap());
        this.f37720c = StorageMode.MAP;
    }

    public MapField<K, V> copy() {
        return new MapField<>(this.f37723f, StorageMode.MAP, MapFieldLite.copy((Map) getMap()));
    }

    /* renamed from: d */
    public final void m29399d(Message message, Map<K, V> map) {
        this.f37723f.mo29404b(message, map);
    }

    /* renamed from: e */
    public List<Message> m29400e() {
        StorageMode storageMode = this.f37720c;
        StorageMode storageMode2 = StorageMode.MAP;
        if (storageMode == storageMode2) {
            synchronized (this) {
                if (this.f37720c == storageMode2) {
                    this.f37722e = m29398c(this.f37721d);
                    this.f37720c = StorageMode.BOTH;
                }
            }
        }
        return Collections.unmodifiableList(this.f37722e);
    }

    @Override // com.sunia.HTREnginev2.rqj
    public void ensureMutable() {
        if (!isMutable()) {
            throw new UnsupportedOperationException();
        }
    }

    public boolean equals(Object object) {
        if (object instanceof MapField) {
            return MapFieldLite.equals((Map) getMap(), (Map) ((MapField) object).getMap());
        }
        return false;
    }

    /* renamed from: f */
    public Message m29401f() {
        return this.f37723f.mo29403a();
    }

    /* renamed from: g */
    public List<Message> m29402g() {
        StorageMode storageMode = this.f37720c;
        StorageMode storageMode2 = StorageMode.LIST;
        if (storageMode != storageMode2) {
            if (this.f37720c == StorageMode.MAP) {
                this.f37722e = m29398c(this.f37721d);
            }
            this.f37721d = null;
            this.f37720c = storageMode2;
        }
        return this.f37722e;
    }

    public Map<K, V> getMap() {
        StorageMode storageMode = this.f37720c;
        StorageMode storageMode2 = StorageMode.LIST;
        if (storageMode == storageMode2) {
            synchronized (this) {
                if (this.f37720c == storageMode2) {
                    this.f37721d = m29397b(this.f37722e);
                    this.f37720c = StorageMode.BOTH;
                }
            }
        }
        return Collections.unmodifiableMap(this.f37721d);
    }

    public Map<K, V> getMutableMap() {
        StorageMode storageMode = this.f37720c;
        StorageMode storageMode2 = StorageMode.MAP;
        if (storageMode != storageMode2) {
            if (this.f37720c == StorageMode.LIST) {
                this.f37721d = m29397b(this.f37722e);
            }
            this.f37722e = null;
            this.f37720c = storageMode2;
        }
        return this.f37721d;
    }

    public int hashCode() {
        return MapFieldLite.calculateHashCodeForMap(getMap());
    }

    public boolean isMutable() {
        return this.f37719b;
    }

    public void makeImmutable() {
        this.f37719b = false;
    }

    public void mergeFrom(MapField<K, V> other) {
        getMutableMap().putAll(MapFieldLite.copy((Map) other.getMap()));
    }

    public MapField(MapEntry<K, V> defaultEntry, StorageMode mode, Map<K, V> mapData) {
        this(new C6797b(defaultEntry), mode, mapData);
    }
}
