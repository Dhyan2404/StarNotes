package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.C6131z;
import com.google.common.collect.Multiset;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.u6h;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* renamed from: com.google.common.collect.i */
/* loaded from: classes6.dex */
public abstract class AbstractC6114i<E> extends AbstractC6112g<E> implements SortedMultiset<E> {

    @u6h
    final Comparator<? super E> comparator;

    @CheckForNull
    private transient SortedMultiset<E> descendingMultiset;

    /* renamed from: com.google.common.collect.i$a */
    /* loaded from: classes6.dex */
    public class a extends AbstractC6117l<E> {
        public a() {
        }

        @Override // com.google.common.collect.AbstractC6117l
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return AbstractC6114i.this.descendingEntryIterator();
        }

        @Override // com.google.common.collect.AbstractC6117l
        /* renamed from: g */
        public SortedMultiset<E> mo26137g() {
            return AbstractC6114i.this;
        }

        @Override // com.google.common.collect.AbstractC6117l, com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return AbstractC6114i.this.descendingIterator();
        }
    }

    public AbstractC6114i() {
        this(Ordering.natural());
    }

    public Comparator<? super E> comparator() {
        return this.comparator;
    }

    public SortedMultiset<E> createDescendingMultiset() {
        return new a();
    }

    public abstract Iterator<Multiset.Entry<E>> descendingEntryIterator();

    Iterator<E> descendingIterator() {
        return Multisets.m26638h(descendingMultiset());
    }

    public SortedMultiset<E> descendingMultiset() {
        SortedMultiset<E> sortedMultiset = this.descendingMultiset;
        if (sortedMultiset != null) {
            return sortedMultiset;
        }
        SortedMultiset<E> createDescendingMultiset = createDescendingMultiset();
        this.descendingMultiset = createDescendingMultiset;
        return createDescendingMultiset;
    }

    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        Iterator<Multiset.Entry<E>> entryIterator = entryIterator();
        if (entryIterator.hasNext()) {
            return entryIterator.next();
        }
        return null;
    }

    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        Iterator<Multiset.Entry<E>> descendingEntryIterator = descendingEntryIterator();
        if (descendingEntryIterator.hasNext()) {
            return descendingEntryIterator.next();
        }
        return null;
    }

    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        Iterator<Multiset.Entry<E>> entryIterator = entryIterator();
        if (!entryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = entryIterator.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        entryIterator.remove();
        return immutableEntry;
    }

    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        Iterator<Multiset.Entry<E>> descendingEntryIterator = descendingEntryIterator();
        if (!descendingEntryIterator.hasNext()) {
            return null;
        }
        Multiset.Entry<E> next = descendingEntryIterator.next();
        Multiset.Entry<E> immutableEntry = Multisets.immutableEntry(next.getElement(), next.getCount());
        descendingEntryIterator.remove();
        return immutableEntry;
    }

    public SortedMultiset<E> subMultiset(@xvk E e, BoundType boundType, @xvk E e2, BoundType boundType2) {
        Preconditions.checkNotNull(boundType);
        Preconditions.checkNotNull(boundType2);
        return tailMultiset(e, boundType).headMultiset(e2, boundType2);
    }

    public AbstractC6114i(Comparator<? super E> comparator) {
        this.comparator = (Comparator) Preconditions.checkNotNull(comparator);
    }

    @Override // com.google.common.collect.AbstractC6112g
    public NavigableSet<E> createElementSet() {
        return new C6131z.b(this);
    }

    @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        return (NavigableSet) super.elementSet();
    }
}
