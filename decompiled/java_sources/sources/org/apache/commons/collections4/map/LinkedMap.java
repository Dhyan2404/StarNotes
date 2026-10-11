package org.apache.commons.collections4.map;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.function.Predicate;
import org.apache.commons.collections4.iterators.UnmodifiableIterator;
import org.apache.commons.collections4.iterators.UnmodifiableListIterator;
import org.apache.commons.collections4.list.UnmodifiableList;
import org.apache.commons.collections4.map.AbstractLinkedMap;

/* loaded from: classes11.dex */
public class LinkedMap<K, V> extends AbstractLinkedMap<K, V> implements Serializable, Cloneable {
    private static final long serialVersionUID = 9077234323521161066L;

    /* renamed from: org.apache.commons.collections4.map.LinkedMap$a */
    /* loaded from: classes11.dex */
    public static class C18772a<K> extends AbstractList<K> {

        /* renamed from: e */
        public final LinkedMap<K, ?> f105188e;

        public C18772a(LinkedMap<K, ?> linkedMap) {
            this.f105188e = linkedMap;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            return this.f105188e.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean containsAll(Collection<?> collection) {
            return this.f105188e.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractList, java.util.List
        public K get(int i) {
            return this.f105188e.get(i);
        }

        @Override // java.util.AbstractList, java.util.List
        public int indexOf(Object obj) {
            return this.f105188e.indexOf(obj);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator<K> iterator() {
            return UnmodifiableIterator.unmodifiableIterator(this.f105188e.keySet().iterator());
        }

        @Override // java.util.AbstractList, java.util.List
        public int lastIndexOf(Object obj) {
            return this.f105188e.indexOf(obj);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<K> listIterator() {
            return UnmodifiableListIterator.umodifiableListIterator(super.listIterator());
        }

        @Override // java.util.AbstractList, java.util.List
        public K remove(int i) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean removeIf(Predicate<? super K> predicate) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f105188e.size();
        }

        @Override // java.util.AbstractList, java.util.List
        public List<K> subList(int i, int i2) {
            return UnmodifiableList.unmodifiableList(super.subList(i, i2));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public Object[] toArray() {
            return this.f105188e.keySet().toArray();
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator<K> listIterator(int i) {
            return UnmodifiableListIterator.umodifiableListIterator(super.listIterator(i));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public <T> T[] toArray(T[] tArr) {
            return (T[]) this.f105188e.keySet().toArray(tArr);
        }
    }

    public LinkedMap() {
        super(16, 0.75f, 12);
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        doReadObject(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        doWriteObject(objectOutputStream);
    }

    public List<K> asList() {
        return new C18772a(this);
    }

    public K get(int i) {
        return getEntry(i).getKey();
    }

    public V getValue(int i) {
        return getEntry(i).getValue();
    }

    public int indexOf(Object obj) {
        Object convertKey = convertKey(obj);
        AbstractLinkedMap.LinkEntry<K, V> linkEntry = this.header.after;
        int i = 0;
        while (linkEntry != this.header) {
            if (isEqualKey(convertKey, linkEntry.key)) {
                return i;
            }
            linkEntry = linkEntry.after;
            i++;
        }
        return -1;
    }

    public V remove(int i) {
        return remove(get(i));
    }

    public LinkedMap(int i) {
        super(i);
    }

    public LinkedMap(int i, float f) {
        super(i, f);
    }

    @Override // org.apache.commons.collections4.map.AbstractHashedMap, java.util.AbstractMap
    public LinkedMap<K, V> clone() {
        return (LinkedMap) super.clone();
    }

    public LinkedMap(Map<? extends K, ? extends V> map) {
        super(map);
    }
}
