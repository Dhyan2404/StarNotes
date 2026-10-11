package org.apache.commons.collections4.collection;

import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;
import org.apache.commons.collections4.CollectionUtils;
import org.apache.commons.collections4.iterators.EmptyIterator;
import org.apache.commons.collections4.iterators.IteratorChain;
import org.apache.commons.collections4.list.UnmodifiableList;

/* loaded from: classes11.dex */
public class CompositeCollection<E> implements Collection<E>, Serializable {
    private static final long serialVersionUID = 8417515734108306801L;
    private final List<Collection<E>> all = new ArrayList();
    private CollectionMutator<E> mutator;

    /* loaded from: classes11.dex */
    public interface CollectionMutator<E> extends Serializable {
        boolean add(CompositeCollection<E> compositeCollection, List<Collection<E>> list, E e);

        boolean addAll(CompositeCollection<E> compositeCollection, List<Collection<E>> list, Collection<? extends E> collection);

        boolean remove(CompositeCollection<E> compositeCollection, List<Collection<E>> list, Object obj);
    }

    public CompositeCollection() {
    }

    @Override // java.util.Collection
    public boolean add(E e) {
        CollectionMutator<E> collectionMutator = this.mutator;
        if (collectionMutator != null) {
            return collectionMutator.add(this, this.all, e);
        }
        throw new UnsupportedOperationException("add() is not supported on CompositeCollection without a CollectionMutator strategy");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends E> collection) {
        CollectionMutator<E> collectionMutator = this.mutator;
        if (collectionMutator != null) {
            return collectionMutator.addAll(this, this.all, collection);
        }
        throw new UnsupportedOperationException("addAll() is not supported on CompositeCollection without a CollectionMutator strategy");
    }

    public void addComposited(Collection<E> collection) {
        if (collection != null) {
            this.all.add(collection);
        }
    }

    @Override // java.util.Collection
    public void clear() {
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            it2.next().clear();
        }
    }

    @Override // java.util.Collection
    public boolean contains(Object obj) {
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            if (it2.next().contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(Collection<?> collection) {
        if (collection == null) {
            return false;
        }
        Iterator<?> it2 = collection.iterator();
        while (it2.hasNext()) {
            if (!contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    public List<Collection<E>> getCollections() {
        return UnmodifiableList.unmodifiableList(this.all);
    }

    public CollectionMutator<E> getMutator() {
        return this.mutator;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            if (!it2.next().isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public Iterator<E> iterator() {
        if (this.all.isEmpty()) {
            return EmptyIterator.emptyIterator();
        }
        IteratorChain iteratorChain = new IteratorChain();
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            iteratorChain.addIterator(it2.next().iterator());
        }
        return iteratorChain;
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        CollectionMutator<E> collectionMutator = this.mutator;
        if (collectionMutator != null) {
            return collectionMutator.remove(this, this.all, obj);
        }
        throw new UnsupportedOperationException("remove() is not supported on CompositeCollection without a CollectionMutator strategy");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<?> collection) {
        boolean z = false;
        if (CollectionUtils.isEmpty(collection)) {
            return false;
        }
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            z |= it2.next().removeAll(collection);
        }
        return z;
    }

    public void removeComposited(Collection<E> collection) {
        this.all.remove(collection);
    }

    @Override // java.util.Collection
    public boolean removeIf(Predicate<? super E> predicate) {
        boolean z = false;
        if (Objects.isNull(predicate)) {
            return false;
        }
        Iterator<Collection<E>> it2 = this.all.iterator();
        while (it2.hasNext()) {
            z |= it2.next().removeIf(predicate);
        }
        return z;
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<?> collection) {
        boolean z = false;
        if (collection != null) {
            Iterator<Collection<E>> it2 = this.all.iterator();
            while (it2.hasNext()) {
                z |= it2.next().retainAll(collection);
            }
        }
        return z;
    }

    public void setMutator(CollectionMutator<E> collectionMutator) {
        this.mutator = collectionMutator;
    }

    @Override // java.util.Collection
    public int size() {
        Iterator<Collection<E>> it2 = this.all.iterator();
        int i = 0;
        while (it2.hasNext()) {
            i += it2.next().size();
        }
        return i;
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        Object[] objArr = new Object[size()];
        Iterator<E> it2 = iterator();
        int i = 0;
        while (it2.hasNext()) {
            objArr[i] = it2.next();
            i++;
        }
        return objArr;
    }

    public Collection<E> toCollection() {
        return new ArrayList(this);
    }

    public void addComposited(Collection<E> collection, Collection<E> collection2) {
        if (collection != null) {
            this.all.add(collection);
        }
        if (collection2 != null) {
            this.all.add(collection2);
        }
    }

    public CompositeCollection(Collection<E> collection) {
        addComposited(collection);
    }

    public void addComposited(Collection<E>... collectionArr) {
        for (Collection<E> collection : collectionArr) {
            if (collection != null) {
                this.all.add(collection);
            }
        }
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        int size = size();
        if (tArr.length < size) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), size));
        }
        Iterator<Collection<E>> it2 = this.all.iterator();
        int i = 0;
        while (it2.hasNext()) {
            Iterator<E> it3 = it2.next().iterator();
            while (it3.hasNext()) {
                tArr[i] = it3.next();
                i++;
            }
        }
        if (tArr.length > size) {
            tArr[size] = null;
        }
        return tArr;
    }

    public CompositeCollection(Collection<E> collection, Collection<E> collection2) {
        addComposited(collection, collection2);
    }

    public CompositeCollection(Collection<E>... collectionArr) {
        addComposited(collectionArr);
    }
}
