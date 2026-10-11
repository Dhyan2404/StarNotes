package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.ohi;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.svm;
import com.sunia.HTREnginev2.vzd;
import java.util.Comparator;
import java.util.Objects;
import java.util.Spliterator;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
final class ImmutableSortedAsList<E> extends RegularImmutableAsList<E> implements svm<E> {
    public ImmutableSortedAsList(ImmutableSortedSet<E> immutableSortedSet, ImmutableList<E> immutableList) {
        super(immutableSortedSet, immutableList);
    }

    @Override // com.sunia.HTREnginev2.svm
    public Comparator<? super E> comparator() {
        return delegateCollection().comparator();
    }

    @Override // com.google.common.collect.ImmutableAsList, com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible
    public int indexOf(@CheckForNull Object obj) {
        int indexOf = delegateCollection().indexOf(obj);
        if (indexOf < 0 || !get(indexOf).equals(obj)) {
            return -1;
        }
        return indexOf;
    }

    @Override // com.google.common.collect.ImmutableList, java.util.List
    @GwtIncompatible
    public int lastIndexOf(@CheckForNull Object obj) {
        return indexOf(obj);
    }

    @Override // com.google.common.collect.ImmutableList, com.google.common.collect.ImmutableCollection, java.util.Collection, java.lang.Iterable
    public Spliterator<E> spliterator() {
        int size = size();
        ImmutableList<? extends E> delegateList = delegateList();
        Objects.requireNonNull(delegateList);
        return vzd.m57902g(size, 1301, new ohi(delegateList), comparator());
    }

    @Override // com.google.common.collect.ImmutableList
    @GwtIncompatible
    public ImmutableList<E> subListUnchecked(int i, int i2) {
        return new RegularImmutableSortedSet(super.subListUnchecked(i, i2), comparator()).asList();
    }

    @Override // com.google.common.collect.RegularImmutableAsList, com.google.common.collect.ImmutableAsList
    public ImmutableSortedSet<E> delegateCollection() {
        return (ImmutableSortedSet) super.delegateCollection();
    }
}
