package org.apache.commons.collections4.multiset;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import org.apache.commons.collections4.MultiSet;
import org.apache.commons.collections4.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections4.multiset.AbstractMultiSet;

/* loaded from: classes11.dex */
public abstract class AbstractMapMultiSet<E> extends AbstractMultiSet<E> {
    private transient Map<E, MutableInteger> map;
    private transient int modCount;
    private transient int size;

    /* loaded from: classes11.dex */
    public static class EntrySetIterator<E> implements Iterator<MultiSet.Entry<E>> {
        protected final Iterator<Map.Entry<E, MutableInteger>> decorated;
        protected final AbstractMapMultiSet<E> parent;
        protected MultiSet.Entry<E> last = null;
        protected boolean canRemove = false;

        public EntrySetIterator(Iterator<Map.Entry<E, MutableInteger>> it2, AbstractMapMultiSet<E> abstractMapMultiSet) {
            this.decorated = it2;
            this.parent = abstractMapMultiSet;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.decorated.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("Iterator remove() can only be called once after next()");
            }
            this.decorated.remove();
            this.last = null;
            this.canRemove = false;
        }

        @Override // java.util.Iterator
        public MultiSet.Entry<E> next() {
            MultiSetEntry multiSetEntry = new MultiSetEntry(this.decorated.next());
            this.last = multiSetEntry;
            this.canRemove = true;
            return multiSetEntry;
        }
    }

    /* loaded from: classes11.dex */
    public static class MultiSetEntry<E> extends AbstractMultiSet.AbstractEntry<E> {
        protected final Map.Entry<E, MutableInteger> parentEntry;

        public MultiSetEntry(Map.Entry<E, MutableInteger> entry) {
            this.parentEntry = entry;
        }

        @Override // org.apache.commons.collections4.MultiSet.Entry
        public int getCount() {
            return this.parentEntry.getValue().value;
        }

        @Override // org.apache.commons.collections4.MultiSet.Entry
        public E getElement() {
            return this.parentEntry.getKey();
        }
    }

    /* loaded from: classes11.dex */
    public static class MutableInteger {
        protected int value;

        public MutableInteger(int i) {
            this.value = i;
        }

        public boolean equals(Object obj) {
            return (obj instanceof MutableInteger) && ((MutableInteger) obj).value == this.value;
        }

        public int hashCode() {
            return this.value;
        }
    }

    /* loaded from: classes11.dex */
    public static class UniqueSetIterator<E> extends AbstractIteratorDecorator<E> {
        protected boolean canRemove;
        protected E lastElement;
        protected final AbstractMapMultiSet<E> parent;

        public UniqueSetIterator(Iterator<E> it2, AbstractMapMultiSet<E> abstractMapMultiSet) {
            super(it2);
            this.lastElement = null;
            this.canRemove = false;
            this.parent = abstractMapMultiSet;
        }

        @Override // org.apache.commons.collections4.iterators.AbstractIteratorDecorator, java.util.Iterator
        public E next() {
            E e = (E) super.next();
            this.lastElement = e;
            this.canRemove = true;
            return e;
        }

        @Override // org.apache.commons.collections4.iterators.AbstractUntypedIteratorDecorator, java.util.Iterator
        public void remove() {
            if (!this.canRemove) {
                throw new IllegalStateException("Iterator remove() can only be called once after next()");
            }
            int count = this.parent.getCount(this.lastElement);
            super.remove();
            this.parent.remove(this.lastElement, count);
            this.lastElement = null;
            this.canRemove = false;
        }
    }

    /* renamed from: org.apache.commons.collections4.multiset.AbstractMapMultiSet$a */
    /* loaded from: classes11.dex */
    public static class C18807a<E> implements Iterator<E> {

        /* renamed from: e */
        public final AbstractMapMultiSet<E> f105267e;

        /* renamed from: f */
        public final Iterator<Map.Entry<E, MutableInteger>> f105268f;

        /* renamed from: h */
        public int f105270h;

        /* renamed from: i */
        public final int f105271i;

        /* renamed from: g */
        public Map.Entry<E, MutableInteger> f105269g = null;

        /* renamed from: j */
        public boolean f105272j = false;

        public C18807a(AbstractMapMultiSet<E> abstractMapMultiSet) {
            this.f105267e = abstractMapMultiSet;
            this.f105268f = ((AbstractMapMultiSet) abstractMapMultiSet).map.entrySet().iterator();
            this.f105271i = ((AbstractMapMultiSet) abstractMapMultiSet).modCount;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105270h > 0 || this.f105268f.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (((AbstractMapMultiSet) this.f105267e).modCount != this.f105271i) {
                throw new ConcurrentModificationException();
            }
            if (this.f105270h == 0) {
                Map.Entry<E, MutableInteger> next = this.f105268f.next();
                this.f105269g = next;
                this.f105270h = next.getValue().value;
            }
            this.f105272j = true;
            this.f105270h--;
            return this.f105269g.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (((AbstractMapMultiSet) this.f105267e).modCount != this.f105271i) {
                throw new ConcurrentModificationException();
            }
            if (!this.f105272j) {
                throw new IllegalStateException();
            }
            MutableInteger value = this.f105269g.getValue();
            int i = value.value;
            if (i > 1) {
                value.value = i - 1;
            } else {
                this.f105268f.remove();
            }
            AbstractMapMultiSet.access$210(this.f105267e);
            this.f105272j = false;
        }
    }

    public AbstractMapMultiSet() {
    }

    public static /* synthetic */ int access$210(AbstractMapMultiSet abstractMapMultiSet) {
        int i = abstractMapMultiSet.size;
        abstractMapMultiSet.size = i - 1;
        return i;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, org.apache.commons.collections4.MultiSet
    public int add(E e, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Occurrences must not be negative.");
        }
        MutableInteger mutableInteger = this.map.get(e);
        int i2 = mutableInteger != null ? mutableInteger.value : 0;
        if (i > 0) {
            this.modCount++;
            this.size += i;
            if (mutableInteger == null) {
                this.map.put(e, new MutableInteger(i));
            } else {
                mutableInteger.value += i;
            }
        }
        return i2;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection
    public void clear() {
        this.modCount++;
        this.map.clear();
        this.size = 0;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
    public Iterator<MultiSet.Entry<E>> createEntrySetIterator() {
        return new EntrySetIterator(this.map.entrySet().iterator(), this);
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
    public Iterator<E> createUniqueSetIterator() {
        return new UniqueSetIterator(getMap().keySet().iterator(), this);
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            this.map.put(readObject, new MutableInteger(readInt2));
            this.size += readInt2;
        }
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.map.size());
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().value);
        }
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.Collection, org.apache.commons.collections4.MultiSet
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof MultiSet)) {
            return false;
        }
        MultiSet multiSet = (MultiSet) obj;
        if (multiSet.size() != size()) {
            return false;
        }
        for (E e : this.map.keySet()) {
            if (multiSet.getCount(e) != getCount(e)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, org.apache.commons.collections4.MultiSet
    public int getCount(Object obj) {
        MutableInteger mutableInteger = this.map.get(obj);
        if (mutableInteger != null) {
            return mutableInteger.value;
        }
        return 0;
    }

    public Map<E, MutableInteger> getMap() {
        return this.map;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.Collection, org.apache.commons.collections4.MultiSet
    public int hashCode() {
        int i = 0;
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            E key = entry.getKey();
            i += entry.getValue().value ^ (key == null ? 0 : key.hashCode());
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, org.apache.commons.collections4.MultiSet
    public Iterator<E> iterator() {
        return new C18807a(this);
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, org.apache.commons.collections4.MultiSet
    public int remove(Object obj, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Occurrences must not be negative.");
        }
        MutableInteger mutableInteger = this.map.get(obj);
        if (mutableInteger == null) {
            return 0;
        }
        int i2 = mutableInteger.value;
        if (i > 0) {
            this.modCount++;
            if (i < i2) {
                mutableInteger.value = i2 - i;
                this.size -= i;
            } else {
                this.map.remove(obj);
                this.size -= mutableInteger.value;
                mutableInteger.value = 0;
            }
        }
        return i2;
    }

    public void setMap(Map<E, MutableInteger> map) {
        this.map = map;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet, java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        int i = 0;
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            E key = entry.getKey();
            int i2 = entry.getValue().value;
            while (i2 > 0) {
                objArr[i] = key;
                i2--;
                i++;
            }
        }
        return objArr;
    }

    @Override // org.apache.commons.collections4.multiset.AbstractMultiSet
    public int uniqueElements() {
        return this.map.size();
    }

    public AbstractMapMultiSet(Map<E, MutableInteger> map) {
        this.map = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        int i = 0;
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            E key = entry.getKey();
            int i2 = entry.getValue().value;
            while (i2 > 0) {
                tArr[i] = key;
                i2--;
                i++;
            }
        }
        while (i < tArr.length) {
            tArr[i] = null;
            i++;
        }
        return tArr;
    }
}
