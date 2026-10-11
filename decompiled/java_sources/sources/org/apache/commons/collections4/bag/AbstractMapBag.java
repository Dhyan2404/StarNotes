package org.apache.commons.collections4.bag;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.apache.commons.collections4.Bag;
import org.apache.commons.collections4.set.UnmodifiableSet;

/* loaded from: classes11.dex */
public abstract class AbstractMapBag<E> implements Bag<E> {
    private transient Map<E, MutableInteger> map;
    private transient int modCount;
    private int size;
    private transient Set<E> uniqueSet;

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

    /* renamed from: org.apache.commons.collections4.bag.AbstractMapBag$a */
    /* loaded from: classes11.dex */
    public static class C18725a<E> implements Iterator<E> {

        /* renamed from: e */
        public final AbstractMapBag<E> f104948e;

        /* renamed from: f */
        public final Iterator<Map.Entry<E, MutableInteger>> f104949f;

        /* renamed from: h */
        public int f104951h;

        /* renamed from: i */
        public final int f104952i;

        /* renamed from: g */
        public Map.Entry<E, MutableInteger> f104950g = null;

        /* renamed from: j */
        public boolean f104953j = false;

        public C18725a(AbstractMapBag<E> abstractMapBag) {
            this.f104948e = abstractMapBag;
            this.f104949f = ((AbstractMapBag) abstractMapBag).map.entrySet().iterator();
            this.f104952i = ((AbstractMapBag) abstractMapBag).modCount;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f104951h > 0 || this.f104949f.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (((AbstractMapBag) this.f104948e).modCount != this.f104952i) {
                throw new ConcurrentModificationException();
            }
            if (this.f104951h == 0) {
                Map.Entry<E, MutableInteger> next = this.f104949f.next();
                this.f104950g = next;
                this.f104951h = next.getValue().value;
            }
            this.f104953j = true;
            this.f104951h--;
            return this.f104950g.getKey();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (((AbstractMapBag) this.f104948e).modCount != this.f104952i) {
                throw new ConcurrentModificationException();
            }
            if (!this.f104953j) {
                throw new IllegalStateException();
            }
            MutableInteger value = this.f104950g.getValue();
            int i = value.value;
            if (i > 1) {
                value.value = i - 1;
            } else {
                this.f104949f.remove();
            }
            AbstractMapBag.access$210(this.f104948e);
            this.f104953j = false;
        }
    }

    public AbstractMapBag() {
    }

    public static /* synthetic */ int access$210(AbstractMapBag abstractMapBag) {
        int i = abstractMapBag.size;
        abstractMapBag.size = i - 1;
        return i;
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public boolean add(E e) {
        return add(e, 1);
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        while (true) {
            boolean z = false;
            while (it2.hasNext()) {
                boolean add = add(it2.next());
                if (z || add) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Override // java.util.Collection
    public void clear() {
        this.modCount++;
        this.map.clear();
        this.size = 0;
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        return this.map.containsKey(obj);
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        if (collection instanceof Bag) {
            return containsAll((Bag<?>) collection);
        }
        return containsAll((Bag<?>) new HashBag(collection));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void doReadObject(Map<E, MutableInteger> map, ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.map = map;
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            Object readObject = objectInputStream.readObject();
            int readInt2 = objectInputStream.readInt();
            map.put(readObject, new MutableInteger(readInt2));
            this.size += readInt2;
        }
    }

    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.map.size());
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            objectOutputStream.writeObject(entry.getKey());
            objectOutputStream.writeInt(entry.getValue().value);
        }
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Bag)) {
            return false;
        }
        Bag bag = (Bag) obj;
        if (bag.size() != size()) {
            return false;
        }
        for (E e : this.map.keySet()) {
            if (bag.getCount(e) != getCount(e)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.apache.commons.collections4.Bag
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

    @Override // java.util.Collection
    public int hashCode() {
        int i = 0;
        for (Map.Entry<E, MutableInteger> entry : this.map.entrySet()) {
            E key = entry.getKey();
            i += entry.getValue().value ^ (key == null ? 0 : key.hashCode());
        }
        return i;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        return new C18725a(this);
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public boolean remove(Object obj) {
        MutableInteger mutableInteger = this.map.get(obj);
        if (mutableInteger == null) {
            return false;
        }
        this.modCount++;
        this.map.remove(obj);
        this.size -= mutableInteger.value;
        return true;
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        if (collection == null) {
            return false;
        }
        Iterator<?> it2 = collection.iterator();
        while (true) {
            boolean z = false;
            while (it2.hasNext()) {
                boolean remove = remove(it2.next(), 1);
                if (z || remove) {
                    z = true;
                }
            }
            return z;
        }
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        if (collection instanceof Bag) {
            return retainAll((Bag<?>) collection);
        }
        return retainAll((Bag<?>) new HashBag(collection));
    }

    @Override // org.apache.commons.collections4.Bag, java.util.Collection
    public int size() {
        return this.size;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        int i = 0;
        for (E e : this.map.keySet()) {
            int count = getCount(e);
            while (count > 0) {
                objArr[i] = e;
                count--;
                i++;
            }
        }
        return objArr;
    }

    public String toString() {
        if (size() == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        Iterator<E> it2 = uniqueSet().iterator();
        while (it2.hasNext()) {
            E next = it2.next();
            sb.append(getCount(next));
            sb.append(':');
            sb.append(next);
            if (it2.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // org.apache.commons.collections4.Bag
    public Set<E> uniqueSet() {
        if (this.uniqueSet == null) {
            this.uniqueSet = UnmodifiableSet.unmodifiableSet(this.map.keySet());
        }
        return this.uniqueSet;
    }

    public AbstractMapBag(Map<E, MutableInteger> map) {
        this.map = map;
    }

    @Override // org.apache.commons.collections4.Bag
    public boolean add(E e, int i) {
        this.modCount++;
        if (i > 0) {
            MutableInteger mutableInteger = this.map.get(e);
            this.size += i;
            if (mutableInteger == null) {
                this.map.put(e, new MutableInteger(i));
                return true;
            }
            mutableInteger.value += i;
        }
        return false;
    }

    public boolean containsAll(Bag<?> bag) {
        for (Object obj : bag.uniqueSet()) {
            if (getCount(obj) < bag.getCount(obj)) {
                return false;
            }
        }
        return true;
    }

    public boolean retainAll(Bag<?> bag) {
        HashBag hashBag = new HashBag();
        for (E e : uniqueSet()) {
            int count = getCount(e);
            int count2 = bag.getCount(e);
            if (1 <= count2 && count2 <= count) {
                hashBag.add(e, count - count2);
            } else {
                hashBag.add(e, count);
            }
        }
        if (hashBag.isEmpty()) {
            return false;
        }
        return removeAll(hashBag);
    }

    @Override // org.apache.commons.collections4.Bag
    public boolean remove(Object obj, int i) {
        MutableInteger mutableInteger = this.map.get(obj);
        if (mutableInteger == null || i <= 0) {
            return false;
        }
        this.modCount++;
        int i2 = mutableInteger.value;
        if (i < i2) {
            mutableInteger.value = i2 - i;
            this.size -= i;
        } else {
            this.map.remove(obj);
            this.size -= mutableInteger.value;
        }
        return true;
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        int i = 0;
        for (E e : this.map.keySet()) {
            int count = getCount(e);
            while (count > 0) {
                tArr[i] = e;
                count--;
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
