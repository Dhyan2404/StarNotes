package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.Multiset;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.svm;
import com.sunia.HTREnginev2.uvm;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public interface SortedMultiset<E> extends uvm<E>, svm<E> {
    Comparator<? super E> comparator();

    SortedMultiset<E> descendingMultiset();

    @Override // com.sunia.HTREnginev2.uvm, com.google.common.collect.Multiset
    NavigableSet<E> elementSet();

    @Override // com.google.common.collect.Multiset
    Set<Multiset.Entry<E>> entrySet();

    @CheckForNull
    Multiset.Entry<E> firstEntry();

    SortedMultiset<E> headMultiset(@xvk E e, BoundType boundType);

    @Override // com.google.common.collect.Multiset, java.util.Collection, java.lang.Iterable
    Iterator<E> iterator();

    @CheckForNull
    Multiset.Entry<E> lastEntry();

    @CheckForNull
    Multiset.Entry<E> pollFirstEntry();

    @CheckForNull
    Multiset.Entry<E> pollLastEntry();

    SortedMultiset<E> subMultiset(@xvk E e, BoundType boundType, @xvk E e2, BoundType boundType2);

    SortedMultiset<E> tailMultiset(@xvk E e, BoundType boundType);
}
