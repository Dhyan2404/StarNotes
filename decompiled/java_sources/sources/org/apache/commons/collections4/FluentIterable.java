package org.apache.commons.collections4;

import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.collections4.iterators.SingletonIterator;

/* loaded from: classes11.dex */
public class FluentIterable<E> implements Iterable<E> {

    /* renamed from: e */
    public final Iterable<E> f104897e;

    public FluentIterable() {
        this.f104897e = this;
    }

    public static <T> FluentIterable<T> empty() {
        return IterableUtils.f104898a;
    }

    /* renamed from: of */
    public static <T> FluentIterable<T> m65879of(T t) {
        return m65878of(IteratorUtils.asIterable(new SingletonIterator(t, false)));
    }

    public boolean allMatch(Predicate<? super E> predicate) {
        return IterableUtils.matchesAll(this.f104897e, predicate);
    }

    public boolean anyMatch(Predicate<? super E> predicate) {
        return IterableUtils.matchesAny(this.f104897e, predicate);
    }

    public FluentIterable<E> append(E... eArr) {
        return append(Arrays.asList(eArr));
    }

    public Enumeration<E> asEnumeration() {
        return IteratorUtils.asEnumeration(iterator());
    }

    public FluentIterable<E> collate(Iterable<? extends E> iterable) {
        return m65878of(IterableUtils.collatedIterable(this.f104897e, iterable));
    }

    public boolean contains(Object obj) {
        return IterableUtils.contains(this.f104897e, obj);
    }

    public void copyInto(Collection<? super E> collection) {
        if (collection == null) {
            throw new NullPointerException("Collection must not be null");
        }
        CollectionUtils.addAll(collection, this.f104897e);
    }

    public FluentIterable<E> eval() {
        return m65878of((Iterable) toList());
    }

    public FluentIterable<E> filter(Predicate<? super E> predicate) {
        return m65878of(IterableUtils.filteredIterable(this.f104897e, predicate));
    }

    public void forEach(Closure<? super E> closure) {
        IterableUtils.forEach(this.f104897e, closure);
    }

    public E get(int i) {
        return (E) IterableUtils.get(this.f104897e, i);
    }

    public boolean isEmpty() {
        return IterableUtils.isEmpty(this.f104897e);
    }

    @Override // java.lang.Iterable
    public Iterator<E> iterator() {
        return this.f104897e.iterator();
    }

    public FluentIterable<E> limit(long j) {
        return m65878of(IterableUtils.boundedIterable(this.f104897e, j));
    }

    public FluentIterable<E> loop() {
        return m65878of(IterableUtils.loopingIterable(this.f104897e));
    }

    public FluentIterable<E> reverse() {
        return m65878of(IterableUtils.reversedIterable(this.f104897e));
    }

    public int size() {
        return IterableUtils.size(this.f104897e);
    }

    public FluentIterable<E> skip(long j) {
        return m65878of(IterableUtils.skippingIterable(this.f104897e, j));
    }

    public E[] toArray(Class<E> cls) {
        return (E[]) IteratorUtils.toArray(iterator(), cls);
    }

    public List<E> toList() {
        return IterableUtils.toList(this.f104897e);
    }

    public String toString() {
        return IterableUtils.toString(this.f104897e);
    }

    public <O> FluentIterable<O> transform(Transformer<? super E, ? extends O> transformer) {
        return m65878of(IterableUtils.transformedIterable(this.f104897e, transformer));
    }

    public FluentIterable<E> unique() {
        return m65878of(IterableUtils.uniqueIterable(this.f104897e));
    }

    public FluentIterable<E> unmodifiable() {
        return m65878of(IterableUtils.unmodifiableIterable(this.f104897e));
    }

    public FluentIterable<E> zip(Iterable<? extends E> iterable) {
        return m65878of(IterableUtils.zippingIterable(this.f104897e, iterable));
    }

    /* renamed from: of */
    public static <T> FluentIterable<T> m65880of(T... tArr) {
        return m65878of((Iterable) Arrays.asList(tArr));
    }

    public FluentIterable<E> append(Iterable<? extends E> iterable) {
        return m65878of(IterableUtils.chainedIterable(this.f104897e, iterable));
    }

    public FluentIterable<E> collate(Iterable<? extends E> iterable, Comparator<? super E> comparator) {
        return m65878of(IterableUtils.collatedIterable(comparator, this.f104897e, iterable));
    }

    public FluentIterable<E> zip(Iterable<? extends E>... iterableArr) {
        return m65878of(IterableUtils.zippingIterable(this.f104897e, iterableArr));
    }

    public FluentIterable(Iterable<E> iterable) {
        this.f104897e = iterable;
    }

    /* renamed from: of */
    public static <T> FluentIterable<T> m65878of(Iterable<T> iterable) {
        IterableUtils.m65882b(iterable);
        if (iterable instanceof FluentIterable) {
            return (FluentIterable) iterable;
        }
        return new FluentIterable<>(iterable);
    }
}
