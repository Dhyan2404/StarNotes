package com.twelvemonkeys.util;

import com.sunia.HTREnginev2.gon;
import com.twelvemonkeys.util.AbstractDecoratedMap;
import java.io.Serializable;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes10.dex */
public class LinkedMap<K, V> extends AbstractDecoratedMap<K, V> implements Serializable {
    protected final boolean accessOrder;
    transient LinkedEntry<K, V> head;

    /* loaded from: classes10.dex */
    public static class LinkedEntry<K, V> extends AbstractDecoratedMap.BasicEntry<K, V> implements Serializable {
        LinkedEntry<K, V> next;
        LinkedEntry<K, V> previous;

        public LinkedEntry(K k, V v, LinkedEntry<K, V> linkedEntry) {
            super(k, v);
            this.next = linkedEntry;
        }

        public void addBefore(LinkedEntry<K, V> linkedEntry) {
            this.next = linkedEntry;
            LinkedEntry<K, V> linkedEntry2 = linkedEntry.previous;
            this.previous = linkedEntry2;
            linkedEntry2.next = this;
            this.next.previous = this;
        }

        @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry
        public void recordAccess(Map<K, V> map) {
            LinkedMap linkedMap = (LinkedMap) map;
            if (linkedMap.accessOrder) {
                linkedMap.modCount++;
                remove();
                addBefore(linkedMap.head);
            }
        }

        @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry
        public void recordRemoval(Map<K, V> map) {
            remove();
        }

        public void remove() {
            LinkedEntry<K, V> linkedEntry = this.previous;
            linkedEntry.next = this.next;
            this.next.previous = linkedEntry;
        }
    }

    /* renamed from: com.twelvemonkeys.util.LinkedMap$a */
    /* loaded from: classes10.dex */
    public class C17002a extends LinkedMap<K, V>.AbstractC17004c<Map.Entry<K, V>> {
        public C17002a() {
            super();
        }

        @Override // java.util.Iterator
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            return m60755a();
        }
    }

    /* renamed from: com.twelvemonkeys.util.LinkedMap$b */
    /* loaded from: classes10.dex */
    public class C17003b extends LinkedMap<K, V>.AbstractC17004c<K> {
        public C17003b() {
            super();
        }

        @Override // java.util.Iterator
        public K next() {
            return m60755a().mKey;
        }
    }

    /* renamed from: com.twelvemonkeys.util.LinkedMap$c */
    /* loaded from: classes10.dex */
    public abstract class AbstractC17004c<E> implements Iterator<E> {

        /* renamed from: e */
        public LinkedEntry<K, V> f94361e;

        /* renamed from: f */
        public LinkedEntry<K, V> f94362f;

        /* renamed from: g */
        public int f94363g;

        public AbstractC17004c() {
            this.f94361e = LinkedMap.this.head.next;
            this.f94362f = null;
            this.f94363g = LinkedMap.this.modCount;
        }

        /* renamed from: a */
        public LinkedEntry<K, V> m60755a() {
            if (LinkedMap.this.modCount != this.f94363g) {
                throw new ConcurrentModificationException();
            }
            LinkedEntry<K, V> linkedEntry = this.f94361e;
            if (linkedEntry == LinkedMap.this.head) {
                throw new NoSuchElementException();
            }
            this.f94362f = linkedEntry;
            this.f94361e = linkedEntry.next;
            return linkedEntry;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f94361e != LinkedMap.this.head;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.f94362f == null) {
                throw new IllegalStateException();
            }
            if (LinkedMap.this.modCount != this.f94363g) {
                throw new ConcurrentModificationException();
            }
            LinkedMap.this.remove(this.f94362f.mKey);
            this.f94362f = null;
            this.f94363g = LinkedMap.this.modCount;
        }
    }

    /* renamed from: com.twelvemonkeys.util.LinkedMap$d */
    /* loaded from: classes10.dex */
    public class C17005d extends LinkedMap<K, V>.AbstractC17004c<V> {
        public C17005d() {
            super();
        }

        @Override // java.util.Iterator
        public V next() {
            return m60755a().mValue;
        }
    }

    public LinkedMap() {
        this((Map) null, false);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ void clear() {
        super.clear();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap
    public Object clone() throws CloneNotSupportedException {
        return (LinkedMap) super.clone();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean containsKey(Object obj) {
        return super.containsKey(obj);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object obj) {
        if (obj == null) {
            LinkedEntry<K, V> linkedEntry = this.head;
            do {
                linkedEntry = linkedEntry.next;
                if (linkedEntry == this.head) {
                    return false;
                }
            } while (linkedEntry.mValue != null);
            return true;
        }
        LinkedEntry<K, V> linkedEntry2 = this.head;
        do {
            linkedEntry2 = linkedEntry2.next;
            if (linkedEntry2 == this.head) {
                return false;
            }
        } while (!obj.equals(linkedEntry2.mValue));
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public /* bridge */ /* synthetic */ Map.Entry createEntry(Object obj, Object obj2) {
        return createEntry((LinkedMap<K, V>) obj, obj2);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set entrySet() {
        return super.entrySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        LinkedEntry linkedEntry = (LinkedEntry) this.entries.get(obj);
        if (linkedEntry == null) {
            return null;
        }
        linkedEntry.recordAccess(this);
        return linkedEntry.mValue;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public void init() {
        LinkedEntry linkedEntry = null;
        LinkedEntry<K, V> linkedEntry2 = new LinkedEntry<K, V>(linkedEntry, linkedEntry, linkedEntry) { // from class: com.twelvemonkeys.util.LinkedMap.1
            @Override // com.twelvemonkeys.util.LinkedMap.LinkedEntry
            public void addBefore(LinkedEntry linkedEntry3) {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry, java.util.Map.Entry
            public K getKey() {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry, java.util.Map.Entry
            public V getValue() {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.LinkedMap.LinkedEntry, com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry
            public void recordAccess(Map map) {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.LinkedMap.LinkedEntry, com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry
            public void recordRemoval(Map map) {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.LinkedMap.LinkedEntry
            public void remove() {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry, java.util.Map.Entry
            public V setValue(V v) {
                throw new Error();
            }

            @Override // com.twelvemonkeys.util.AbstractDecoratedMap.BasicEntry
            public String toString() {
                return gon.f71289o;
            }

            public void recordRemoval() {
                throw new Error();
            }
        };
        this.head = linkedEntry2;
        linkedEntry2.next = linkedEntry2;
        linkedEntry2.previous = linkedEntry2;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ boolean isEmpty() {
        return super.isEmpty();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Set keySet() {
        return super.keySet();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<Map.Entry<K, V>> newEntryIterator() {
        return new C17002a();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<K> newKeyIterator() {
        return new C17003b();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public Iterator<V> newValueIterator() {
        return new C17005d();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V put(K k, V v) {
        V v2;
        LinkedEntry linkedEntry = (LinkedEntry) this.entries.get(k);
        if (linkedEntry == null) {
            LinkedEntry<K, V> linkedEntry2 = this.head.next;
            if (removeEldestEntry(linkedEntry2)) {
                removeEntry(linkedEntry2);
            }
            LinkedEntry<K, V> createEntry = createEntry((LinkedMap<K, V>) k, (K) v);
            createEntry.addBefore(this.head);
            this.entries.put(k, createEntry);
            v2 = null;
        } else {
            v2 = linkedEntry.mValue;
            linkedEntry.mValue = v;
            linkedEntry.recordAccess(this);
        }
        this.modCount++;
        return v2;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        LinkedEntry linkedEntry = (LinkedEntry) this.entries.remove(obj);
        if (linkedEntry == null) {
            return null;
        }
        linkedEntry.remove();
        this.modCount++;
        return linkedEntry.mValue;
    }

    public boolean removeEldestEntry(Map.Entry<K, V> entry) {
        return false;
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ int size() {
        return super.size();
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap, java.util.AbstractMap, java.util.Map
    public /* bridge */ /* synthetic */ Collection values() {
        return super.values();
    }

    public LinkedMap(boolean z) {
        this((Map) null, z);
    }

    @Override // com.twelvemonkeys.util.AbstractDecoratedMap
    public LinkedEntry<K, V> createEntry(K k, V v) {
        return new LinkedEntry<>(k, v, null);
    }

    public LinkedMap(Map<? extends K, ? extends V> map) {
        this((Map) map, false);
    }

    public LinkedMap(Map<? extends K, ? extends V> map, boolean z) {
        super(map);
        this.accessOrder = z;
    }

    public LinkedMap(Map<K, Map.Entry<K, V>> map, Map<? extends K, ? extends V> map2) {
        this(map, map2, false);
    }

    public LinkedMap(Map<K, Map.Entry<K, V>> map, Map<? extends K, ? extends V> map2, boolean z) {
        super(map, map2);
        this.accessOrder = z;
    }
}
