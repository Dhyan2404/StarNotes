package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.collect.C6131z;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* renamed from: com.google.common.collect.l */
/* loaded from: classes6.dex */
public abstract class AbstractC6117l<E> extends ForwardingMultiset<E> implements SortedMultiset<E> {

    /* renamed from: e */
    @CheckForNull
    public transient Comparator<? super E> f34605e;

    /* renamed from: f */
    @CheckForNull
    public transient NavigableSet<E> f34606f;

    /* renamed from: g */
    @CheckForNull
    public transient Set<Multiset.Entry<E>> f34607g;

    /* renamed from: com.google.common.collect.l$a */
    /* loaded from: classes6.dex */
    public class a extends Multisets.AbstractC6003i<E> {
        public a() {
        }

        @Override // com.google.common.collect.Multisets.AbstractC6003i
        /* renamed from: a */
        public Multiset<E> mo26120a() {
            return AbstractC6117l.this;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Multiset.Entry<E>> iterator() {
            return AbstractC6117l.this.entryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return AbstractC6117l.this.mo26137g().entrySet().size();
        }
    }

    @Override // com.google.common.collect.SortedMultiset, com.sunia.HTREnginev2.svm
    public Comparator<? super E> comparator() {
        Comparator<? super E> comparator = this.f34605e;
        if (comparator != null) {
            return comparator;
        }
        Ordering reverse = Ordering.from(mo26137g().comparator()).reverse();
        this.f34605e = reverse;
        return reverse;
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> descendingMultiset() {
        return mo26137g();
    }

    /* renamed from: e */
    public Set<Multiset.Entry<E>> m26992e() {
        return new a();
    }

    public abstract Iterator<Multiset.Entry<E>> entryIterator();

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public Set<Multiset.Entry<E>> entrySet() {
        Set<Multiset.Entry<E>> set = this.f34607g;
        if (set != null) {
            return set;
        }
        Set<Multiset.Entry<E>> m26992e = m26992e();
        this.f34607g = m26992e;
        return m26992e;
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> firstEntry() {
        return mo26137g().lastEntry();
    }

    /* renamed from: g */
    public abstract SortedMultiset<E> mo26137g();

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> headMultiset(@xvk E e, BoundType boundType) {
        return mo26137g().tailMultiset(e, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return Multisets.m26638h(this);
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> lastEntry() {
        return mo26137g().firstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollFirstEntry() {
        return mo26137g().pollLastEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    @CheckForNull
    public Multiset.Entry<E> pollLastEntry() {
        return mo26137g().pollFirstEntry();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> subMultiset(@xvk E e, BoundType boundType, @xvk E e2, BoundType boundType2) {
        return mo26137g().subMultiset(e2, boundType2, e, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.SortedMultiset
    public SortedMultiset<E> tailMultiset(@xvk E e, BoundType boundType) {
        return mo26137g().headMultiset(e, boundType).descendingMultiset();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public Object[] toArray() {
        return standardToArray();
    }

    @Override // com.google.common.collect.ForwardingObject
    public String toString() {
        return entrySet().toString();
    }

    @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        return (T[]) standardToArray(tArr);
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
    public Multiset<E> delegate() {
        return mo26137g();
    }

    @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
    public NavigableSet<E> elementSet() {
        NavigableSet<E> navigableSet = this.f34606f;
        if (navigableSet != null) {
            return navigableSet;
        }
        C6131z.b bVar = new C6131z.b(this);
        this.f34606f = bVar;
        return bVar;
    }
}
