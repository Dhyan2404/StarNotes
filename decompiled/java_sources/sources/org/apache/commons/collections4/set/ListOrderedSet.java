package org.apache.commons.collections4.set;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import java.util.function.Predicate;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.OrderedIterator;
import org.apache.commons.collections4.functors.UniquePredicate;
import org.apache.commons.collections4.iterators.AbstractIteratorDecorator;
import org.apache.commons.collections4.list.UnmodifiableList;

/* loaded from: classes11.dex */
public class ListOrderedSet<E> extends AbstractSerializableSetDecorator<E> {
    private static final long serialVersionUID = -228664372470420141L;
    private final List<E> setOrder;

    /* renamed from: org.apache.commons.collections4.set.ListOrderedSet$b */
    /* loaded from: classes11.dex */
    public static class C18813b<E> extends AbstractIteratorDecorator<E> implements OrderedIterator<E> {

        /* renamed from: f */
        public final Collection<E> f105300f;

        /* renamed from: g */
        public E f105301g;

        @Override // org.apache.commons.collections4.OrderedIterator
        public boolean hasPrevious() {
            return ((ListIterator) getIterator()).hasPrevious();
        }

        @Override // org.apache.commons.collections4.iterators.AbstractIteratorDecorator, java.util.Iterator
        public E next() {
            E next = getIterator().next();
            this.f105301g = next;
            return next;
        }

        @Override // org.apache.commons.collections4.OrderedIterator
        public E previous() {
            E e = (E) ((ListIterator) getIterator()).previous();
            this.f105301g = e;
            return e;
        }

        @Override // org.apache.commons.collections4.iterators.AbstractUntypedIteratorDecorator, java.util.Iterator
        public void remove() {
            this.f105300f.remove(this.f105301g);
            getIterator().remove();
            this.f105301g = null;
        }

        public C18813b(ListIterator<E> listIterator, Collection<E> collection) {
            super(listIterator);
            this.f105300f = collection;
        }
    }

    public ListOrderedSet() {
        super(new HashSet());
        this.setOrder = new ArrayList();
    }

    public static <E> ListOrderedSet<E> listOrderedSet(Set<E> set, List<E> list) {
        if (set == null) {
            throw new NullPointerException("Set must not be null");
        }
        if (list != null) {
            if (set.size() <= 0 && list.size() <= 0) {
                return new ListOrderedSet<>(set, list);
            }
            throw new IllegalArgumentException("Set and List must be empty");
        }
        throw new NullPointerException("List must not be null");
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections4.Bag
    public boolean add(E e) {
        if (!decorated().add(e)) {
            return false;
        }
        this.setOrder.add(e);
        return true;
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        Iterator<? extends E> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= add(it2.next());
        }
        return z;
    }

    public List<E> asList() {
        return UnmodifiableList.unmodifiableList(this.setOrder);
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public void clear() {
        decorated().clear();
        this.setOrder.clear();
    }

    public E get(int i) {
        return this.setOrder.get(i);
    }

    public int indexOf(Object obj) {
        return this.setOrder.indexOf(obj);
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections4.Bag
    public boolean remove(Object obj) {
        boolean remove = decorated().remove(obj);
        if (remove) {
            this.setOrder.remove(obj);
        }
        return remove;
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections4.Bag
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it2 = collection.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= remove(it2.next());
        }
        return z;
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public boolean removeIf(Predicate<? super E> predicate) {
        if (Objects.isNull(predicate)) {
            return false;
        }
        boolean removeIf = decorated().removeIf(predicate);
        if (removeIf) {
            this.setOrder.removeIf(predicate);
        }
        return removeIf;
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, org.apache.commons.collections4.Bag
    public boolean retainAll(Collection<?> collection) {
        boolean retainAll = decorated().retainAll(collection);
        if (!retainAll) {
            return false;
        }
        if (decorated().size() == 0) {
            this.setOrder.clear();
        } else {
            Iterator<E> it2 = this.setOrder.iterator();
            while (it2.hasNext()) {
                if (!decorated().contains(it2.next())) {
                    it2.remove();
                }
            }
        }
        return retainAll;
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public Object[] toArray() {
        return this.setOrder.toArray();
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator
    public String toString() {
        return this.setOrder.toString();
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection, java.lang.Iterable, org.apache.commons.collections4.Bag
    public OrderedIterator<E> iterator() {
        return new C18813b(this.setOrder.listIterator(), decorated());
    }

    @Override // org.apache.commons.collections4.collection.AbstractCollectionDecorator, java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) this.setOrder.toArray(tArr);
    }

    public ListOrderedSet(Set<E> set) {
        super(set);
        this.setOrder = new ArrayList(set);
    }

    public void add(int i, E e) {
        if (contains(e)) {
            return;
        }
        decorated().add(e);
        this.setOrder.add(i, e);
    }

    public boolean addAll(int i, Collection<? extends E> collection) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (E e : collection) {
            if (!contains(e)) {
                decorated().add(e);
                arrayList.add(e);
                z = true;
            }
        }
        if (z) {
            this.setOrder.addAll(i, arrayList);
        }
        return z;
    }

    public E remove(int i) {
        E remove = this.setOrder.remove(i);
        remove(remove);
        return remove;
    }

    public ListOrderedSet(Set<E> set, List<E> list) {
        super(set);
        if (list != null) {
            this.setOrder = list;
            return;
        }
        throw new NullPointerException("List must not be null");
    }

    public static <E> ListOrderedSet<E> listOrderedSet(Set<E> set) {
        return new ListOrderedSet<>(set);
    }

    public static <E> ListOrderedSet<E> listOrderedSet(List<E> list) {
        if (list != null) {
            CollectionUtils.filter(list, UniquePredicate.uniquePredicate());
            return new ListOrderedSet<>(new HashSet(list), list);
        }
        throw new NullPointerException("List must not be null");
    }
}
