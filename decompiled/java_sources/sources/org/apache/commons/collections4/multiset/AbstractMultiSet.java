package org.apache.commons.collections4.multiset;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.collections4.IteratorUtils;
import org.apache.commons.collections4.MultiSet;
import org.apache.commons.collections4.Transformer;

/* loaded from: classes11.dex */
public abstract class AbstractMultiSet<E> extends AbstractCollection<E> implements MultiSet<E> {
    private transient Set<MultiSet.Entry<E>> entrySet;
    private transient Set<E> uniqueSet;

    /* loaded from: classes11.dex */
    public static abstract class AbstractEntry<E> implements MultiSet.Entry<E> {
        @Override // org.apache.commons.collections4.MultiSet.Entry
        public boolean equals(Object obj) {
            if (!(obj instanceof MultiSet.Entry)) {
                return false;
            }
            MultiSet.Entry entry = (MultiSet.Entry) obj;
            E element = getElement();
            Object element2 = entry.getElement();
            if (getCount() == entry.getCount()) {
                return element == element2 || (element != null && element.equals(element2));
            }
            return false;
        }

        @Override // org.apache.commons.collections4.MultiSet.Entry
        public int hashCode() {
            E element = getElement();
            return getCount() ^ (element == null ? 0 : element.hashCode());
        }

        public String toString() {
            return String.format("%s:%d", getElement(), Integer.valueOf(getCount()));
        }
    }

    /* loaded from: classes11.dex */
    public static class EntrySet<E> extends AbstractSet<MultiSet.Entry<E>> {

        /* renamed from: e */
        public final AbstractMultiSet<E> f105273e;

        public EntrySet(AbstractMultiSet<E> abstractMultiSet) {
            this.f105273e = abstractMultiSet;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            if (!(obj instanceof MultiSet.Entry)) {
                return false;
            }
            MultiSet.Entry entry = (MultiSet.Entry) obj;
            return this.f105273e.getCount(entry.getElement()) == entry.getCount();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<MultiSet.Entry<E>> iterator() {
            return this.f105273e.createEntrySetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            int count;
            if (!(obj instanceof MultiSet.Entry)) {
                return false;
            }
            MultiSet.Entry entry = (MultiSet.Entry) obj;
            Object element = entry.getElement();
            if (!this.f105273e.contains(element) || entry.getCount() != (count = this.f105273e.getCount(element))) {
                return false;
            }
            this.f105273e.remove(element, count);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f105273e.uniqueElements();
        }
    }

    /* loaded from: classes11.dex */
    public static class UniqueSet<E> extends AbstractSet<E> {
        protected final AbstractMultiSet<E> parent;

        public UniqueSet(AbstractMultiSet<E> abstractMultiSet) {
            this.parent = abstractMultiSet;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.parent.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.parent.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return this.parent.containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return this.parent.createUniqueSetIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            AbstractMultiSet<E> abstractMultiSet = this.parent;
            return abstractMultiSet.remove(obj, abstractMultiSet.getCount(obj)) != 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.parent.uniqueElements();
        }
    }

    /* renamed from: org.apache.commons.collections4.multiset.AbstractMultiSet$a */
    /* loaded from: classes11.dex */
    public class C18808a implements Transformer<MultiSet.Entry<E>, E> {
        public C18808a() {
        }

        @Override // org.apache.commons.collections4.Transformer
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public E transform(MultiSet.Entry<E> entry) {
            return entry.getElement();
        }
    }

    /* renamed from: org.apache.commons.collections4.multiset.AbstractMultiSet$b */
    /* loaded from: classes11.dex */
    public static class C18809b<E> implements Iterator<E> {

        /* renamed from: e */
        public final AbstractMultiSet<E> f105275e;

        /* renamed from: f */
        public final Iterator<MultiSet.Entry<E>> f105276f;

        /* renamed from: h */
        public int f105278h;

        /* renamed from: g */
        public MultiSet.Entry<E> f105277g = null;

        /* renamed from: i */
        public boolean f105279i = false;

        public C18809b(AbstractMultiSet<E> abstractMultiSet) {
            this.f105275e = abstractMultiSet;
            this.f105276f = abstractMultiSet.entrySet().iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f105278h > 0 || this.f105276f.hasNext();
        }

        @Override // java.util.Iterator
        public E next() {
            if (this.f105278h == 0) {
                MultiSet.Entry<E> next = this.f105276f.next();
                this.f105277g = next;
                this.f105278h = next.getCount();
            }
            this.f105279i = true;
            this.f105278h--;
            return this.f105277g.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f105279i) {
                throw new IllegalStateException();
            }
            if (this.f105277g.getCount() > 1) {
                this.f105275e.remove(this.f105277g.getElement());
            } else {
                this.f105276f.remove();
            }
            this.f105279i = false;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
    public boolean add(E e) {
        add(e, 1);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        Iterator<MultiSet.Entry<E>> it2 = entrySet().iterator();
        while (it2.hasNext()) {
            it2.next();
            it2.remove();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(Object obj) {
        return getCount(obj) > 0;
    }

    public Set<MultiSet.Entry<E>> createEntrySet() {
        return new EntrySet(this);
    }

    public abstract Iterator<MultiSet.Entry<E>> createEntrySetIterator();

    public Set<E> createUniqueSet() {
        return new UniqueSet(this);
    }

    public Iterator<E> createUniqueSetIterator() {
        return IteratorUtils.transformedIterator(entrySet().iterator(), new C18808a());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void doReadObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        int readInt = objectInputStream.readInt();
        for (int i = 0; i < readInt; i++) {
            setCount(objectInputStream.readObject(), objectInputStream.readInt());
        }
    }

    public void doWriteObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(entrySet().size());
        for (MultiSet.Entry<E> entry : entrySet()) {
            objectOutputStream.writeObject(entry.getElement());
            objectOutputStream.writeInt(entry.getCount());
        }
    }

    @Override // org.apache.commons.collections4.MultiSet
    public Set<MultiSet.Entry<E>> entrySet() {
        if (this.entrySet == null) {
            this.entrySet = createEntrySet();
        }
        return this.entrySet;
    }

    @Override // java.util.Collection, org.apache.commons.collections4.MultiSet
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
        for (MultiSet.Entry<E> entry : entrySet()) {
            if (multiSet.getCount(entry.getElement()) != getCount(entry.getElement())) {
                return false;
            }
        }
        return true;
    }

    public int getCount(Object obj) {
        for (MultiSet.Entry<E> entry : entrySet()) {
            E element = entry.getElement();
            if (element == obj || (element != null && element.equals(obj))) {
                return entry.getCount();
            }
        }
        return 0;
    }

    @Override // java.util.Collection, org.apache.commons.collections4.MultiSet
    public int hashCode() {
        return entrySet().hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, org.apache.commons.collections4.MultiSet
    public Iterator<E> iterator() {
        return new C18809b(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
    public boolean remove(Object obj) {
        return remove(obj, 1) != 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
    public boolean removeAll(Collection<?> collection) {
        boolean z;
        while (true) {
            for (Object obj : collection) {
                z = z || (remove(obj, getCount(obj)) != 0);
            }
            return z;
        }
    }

    @Override // org.apache.commons.collections4.MultiSet
    public int setCount(E e, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("Count must not be negative.");
        }
        int count = getCount(e);
        if (count < i) {
            add(e, i - count);
        } else {
            remove(e, count - i);
        }
        return count;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, org.apache.commons.collections4.MultiSet
    public int size() {
        Iterator<MultiSet.Entry<E>> it2 = entrySet().iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().getCount();
        }
        return i;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return entrySet().toString();
    }

    public abstract int uniqueElements();

    @Override // org.apache.commons.collections4.MultiSet
    public Set<E> uniqueSet() {
        if (this.uniqueSet == null) {
            this.uniqueSet = createUniqueSet();
        }
        return this.uniqueSet;
    }

    public int add(E e, int i) {
        throw new UnsupportedOperationException();
    }

    public int remove(Object obj, int i) {
        throw new UnsupportedOperationException();
    }
}
