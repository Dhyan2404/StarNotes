package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.j2objc.annotations.Weak;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.NoSuchElementException;
import java.util.SortedSet;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* renamed from: com.google.common.collect.z */
/* loaded from: classes6.dex */
public final class C6131z {

    /* renamed from: com.google.common.collect.z$a */
    /* loaded from: classes6.dex */
    public static class a<E> extends Multisets.AbstractC6002h<E> implements SortedSet<E> {

        /* renamed from: e */
        @Weak
        public final SortedMultiset<E> f34636e;

        public a(SortedMultiset<E> sortedMultiset) {
            this.f34636e = sortedMultiset;
        }

        @Override // com.google.common.collect.Multisets.AbstractC6002h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public final SortedMultiset<E> mo26134a() {
            return this.f34636e;
        }

        @Override // java.util.SortedSet
        public Comparator<? super E> comparator() {
            return mo26134a().comparator();
        }

        @Override // java.util.SortedSet
        @xvk
        public E first() {
            return (E) C6131z.m27022d(mo26134a().firstEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> headSet(@xvk E e) {
            return mo26134a().headMultiset(e, BoundType.OPEN).elementSet();
        }

        @Override // com.google.common.collect.Multisets.AbstractC6002h, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Multisets.m26635e(mo26134a().entrySet().iterator());
        }

        @Override // java.util.SortedSet
        @xvk
        public E last() {
            return (E) C6131z.m27022d(mo26134a().lastEntry());
        }

        @Override // java.util.SortedSet
        public SortedSet<E> subSet(@xvk E e, @xvk E e2) {
            return mo26134a().subMultiset(e, BoundType.CLOSED, e2, BoundType.OPEN).elementSet();
        }

        @Override // java.util.SortedSet
        public SortedSet<E> tailSet(@xvk E e) {
            return mo26134a().tailMultiset(e, BoundType.CLOSED).elementSet();
        }
    }

    @GwtIncompatible
    /* renamed from: com.google.common.collect.z$b */
    /* loaded from: classes6.dex */
    public static class b<E> extends a<E> implements NavigableSet<E> {
        public b(SortedMultiset<E> sortedMultiset) {
            super(sortedMultiset);
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E ceiling(@xvk E e) {
            return (E) C6131z.m27021c(mo26134a().tailMultiset(e, BoundType.CLOSED).firstEntry());
        }

        @Override // java.util.NavigableSet
        public Iterator<E> descendingIterator() {
            return descendingSet().iterator();
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> descendingSet() {
            return new b(mo26134a().descendingMultiset());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E floor(@xvk E e) {
            return (E) C6131z.m27021c(mo26134a().headMultiset(e, BoundType.CLOSED).lastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> headSet(@xvk E e, boolean z) {
            return new b(mo26134a().headMultiset(e, BoundType.forBoolean(z)));
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E higher(@xvk E e) {
            return (E) C6131z.m27021c(mo26134a().tailMultiset(e, BoundType.OPEN).firstEntry());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E lower(@xvk E e) {
            return (E) C6131z.m27021c(mo26134a().headMultiset(e, BoundType.OPEN).lastEntry());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollFirst() {
            return (E) C6131z.m27021c(mo26134a().pollFirstEntry());
        }

        @Override // java.util.NavigableSet
        @CheckForNull
        public E pollLast() {
            return (E) C6131z.m27021c(mo26134a().pollLastEntry());
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> subSet(@xvk E e, boolean z, @xvk E e2, boolean z2) {
            return new b(mo26134a().subMultiset(e, BoundType.forBoolean(z), e2, BoundType.forBoolean(z2)));
        }

        @Override // java.util.NavigableSet
        public NavigableSet<E> tailSet(@xvk E e, boolean z) {
            return new b(mo26134a().tailMultiset(e, BoundType.forBoolean(z)));
        }
    }

    @CheckForNull
    /* renamed from: c */
    public static <E> E m27021c(@CheckForNull Multiset.Entry<E> entry) {
        if (entry == null) {
            return null;
        }
        return entry.getElement();
    }

    /* renamed from: d */
    public static <E> E m27022d(@CheckForNull Multiset.Entry<E> entry) {
        if (entry != null) {
            return entry.getElement();
        }
        throw new NoSuchElementException();
    }
}
