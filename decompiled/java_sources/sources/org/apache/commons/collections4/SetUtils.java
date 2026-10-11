package org.apache.commons.collections4;

import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.NavigableSet;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import org.apache.commons.collections4.set.ListOrderedSet;
import org.apache.commons.collections4.set.PredicatedNavigableSet;
import org.apache.commons.collections4.set.PredicatedSet;
import org.apache.commons.collections4.set.PredicatedSortedSet;
import org.apache.commons.collections4.set.TransformedNavigableSet;
import org.apache.commons.collections4.set.TransformedSet;
import org.apache.commons.collections4.set.TransformedSortedSet;
import org.apache.commons.collections4.set.UnmodifiableNavigableSet;
import org.apache.commons.collections4.set.UnmodifiableSet;
import org.apache.commons.collections4.set.UnmodifiableSortedSet;

/* loaded from: classes11.dex */
public class SetUtils {
    public static final SortedSet EMPTY_SORTED_SET = UnmodifiableSortedSet.unmodifiableSortedSet(new TreeSet());

    /* loaded from: classes11.dex */
    public static abstract class SetView<E> extends AbstractSet<E> {
        public <S extends Set<E>> void copyInto(S s) {
            CollectionUtils.addAll(s, this);
        }

        public abstract Iterator<E> createIterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return IteratorUtils.unmodifiableIterator(createIterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return IteratorUtils.size(iterator());
        }

        public Set<E> toSet() {
            HashSet hashSet = new HashSet(size());
            copyInto(hashSet);
            return hashSet;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$a */
    /* loaded from: classes11.dex */
    public static class C18716a<E> implements Predicate<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104931e;

        public C18716a(Set set) {
            this.f104931e = set;
        }

        @Override // org.apache.commons.collections4.Predicate
        public boolean evaluate(E e) {
            return !this.f104931e.contains(e);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$b */
    /* loaded from: classes11.dex */
    public static class C18717b<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104932e;

        /* renamed from: f */
        public final /* synthetic */ Set f104933f;

        /* renamed from: g */
        public final /* synthetic */ Predicate f104934g;

        public C18717b(Set set, Set set2, Predicate predicate) {
            this.f104932e = set;
            this.f104933f = set2;
            this.f104934g = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f104932e.contains(obj) && !this.f104933f.contains(obj);
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView
        public Iterator<E> createIterator() {
            return IteratorUtils.filteredIterator(this.f104932e.iterator(), this.f104934g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$c */
    /* loaded from: classes11.dex */
    public static class C18718c<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104935e;

        /* renamed from: f */
        public final /* synthetic */ Set f104936f;

        /* renamed from: g */
        public final /* synthetic */ SetView f104937g;

        /* renamed from: h */
        public final /* synthetic */ SetView f104938h;

        public C18718c(Set set, Set set2, SetView setView, SetView setView2) {
            this.f104935e = set;
            this.f104936f = set2;
            this.f104937g = setView;
            this.f104938h = setView2;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f104936f.contains(obj) ^ this.f104935e.contains(obj);
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView
        public Iterator<E> createIterator() {
            return IteratorUtils.chainedIterator(this.f104937g.iterator(), this.f104938h.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f104937g.isEmpty() && this.f104938h.isEmpty();
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f104937g.size() + this.f104938h.size();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$d */
    /* loaded from: classes11.dex */
    public static class C18719d<E> implements Predicate<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104939e;

        public C18719d(Set set) {
            this.f104939e = set;
        }

        @Override // org.apache.commons.collections4.Predicate
        public boolean evaluate(E e) {
            return this.f104939e.contains(e);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$e */
    /* loaded from: classes11.dex */
    public static class C18720e<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104940e;

        /* renamed from: f */
        public final /* synthetic */ Set f104941f;

        /* renamed from: g */
        public final /* synthetic */ Predicate f104942g;

        public C18720e(Set set, Set set2, Predicate predicate) {
            this.f104940e = set;
            this.f104941f = set2;
            this.f104942g = predicate;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f104940e.contains(obj) && this.f104941f.contains(obj);
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView
        public Iterator<E> createIterator() {
            return IteratorUtils.filteredIterator(this.f104940e.iterator(), this.f104942g);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: org.apache.commons.collections4.SetUtils$f */
    /* loaded from: classes11.dex */
    public static class C18721f<E> extends SetView<E> {

        /* renamed from: e */
        public final /* synthetic */ Set f104943e;

        /* renamed from: f */
        public final /* synthetic */ Set f104944f;

        /* renamed from: g */
        public final /* synthetic */ SetView f104945g;

        public C18721f(Set set, Set set2, SetView setView) {
            this.f104943e = set;
            this.f104944f = set2;
            this.f104945g = setView;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            return this.f104943e.contains(obj) || this.f104944f.contains(obj);
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView
        public Iterator<E> createIterator() {
            return IteratorUtils.chainedIterator(this.f104943e.iterator(), this.f104945g.iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return this.f104943e.isEmpty() && this.f104944f.isEmpty();
        }

        @Override // org.apache.commons.collections4.SetUtils.SetView, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.f104943e.size() + this.f104945g.size();
        }
    }

    public static <E> SetView<E> difference(Set<? extends E> set, Set<? extends E> set2) {
        if (set == null || set2 == null) {
            throw new NullPointerException("Sets must not be null.");
        }
        return new C18717b(set, set2, new C18716a(set2));
    }

    public static <E> SetView<E> disjunction(Set<? extends E> set, Set<? extends E> set2) {
        if (set == null || set2 == null) {
            throw new NullPointerException("Sets must not be null.");
        }
        return new C18718c(set, set2, difference(set, set2), difference(set2, set));
    }

    public static <T> Set<T> emptyIfNull(Set<T> set) {
        return set == null ? Collections.emptySet() : set;
    }

    public static <E> Set<E> emptySet() {
        return Collections.emptySet();
    }

    public static <E> SortedSet<E> emptySortedSet() {
        return EMPTY_SORTED_SET;
    }

    public static <T> int hashCodeForSet(Collection<T> collection) {
        int i = 0;
        if (collection == null) {
            return 0;
        }
        for (T t : collection) {
            if (t != null) {
                i += t.hashCode();
            }
        }
        return i;
    }

    public static <E> HashSet<E> hashSet(E... eArr) {
        if (eArr == null) {
            return null;
        }
        return new HashSet<>(Arrays.asList(eArr));
    }

    public static <E> SetView<E> intersection(Set<? extends E> set, Set<? extends E> set2) {
        if (set == null || set2 == null) {
            throw new NullPointerException("Sets must not be null.");
        }
        return new C18720e(set, set2, new C18719d(set2));
    }

    public static boolean isEqualSet(Collection<?> collection, Collection<?> collection2) {
        if (collection == collection2) {
            return true;
        }
        if (collection == null || collection2 == null || collection.size() != collection2.size()) {
            return false;
        }
        return collection.containsAll(collection2);
    }

    public static <E> Set<E> newIdentityHashSet() {
        return Collections.newSetFromMap(new IdentityHashMap());
    }

    public static <E> Set<E> orderedSet(Set<E> set) {
        return ListOrderedSet.listOrderedSet(set);
    }

    public static <E> SortedSet<E> predicatedNavigableSet(NavigableSet<E> navigableSet, Predicate<? super E> predicate) {
        return PredicatedNavigableSet.predicatedNavigableSet(navigableSet, predicate);
    }

    public static <E> Set<E> predicatedSet(Set<E> set, Predicate<? super E> predicate) {
        return PredicatedSet.predicatedSet(set, predicate);
    }

    public static <E> SortedSet<E> predicatedSortedSet(SortedSet<E> sortedSet, Predicate<? super E> predicate) {
        return PredicatedSortedSet.predicatedSortedSet(sortedSet, predicate);
    }

    public static <E> Set<E> synchronizedSet(Set<E> set) {
        return Collections.synchronizedSet(set);
    }

    public static <E> SortedSet<E> synchronizedSortedSet(SortedSet<E> sortedSet) {
        return Collections.synchronizedSortedSet(sortedSet);
    }

    public static <E> SortedSet<E> transformedNavigableSet(NavigableSet<E> navigableSet, Transformer<? super E, ? extends E> transformer) {
        return TransformedNavigableSet.transformingNavigableSet(navigableSet, transformer);
    }

    public static <E> Set<E> transformedSet(Set<E> set, Transformer<? super E, ? extends E> transformer) {
        return TransformedSet.transformingSet(set, transformer);
    }

    public static <E> SortedSet<E> transformedSortedSet(SortedSet<E> sortedSet, Transformer<? super E, ? extends E> transformer) {
        return TransformedSortedSet.transformingSortedSet(sortedSet, transformer);
    }

    public static <E> SetView<E> union(Set<? extends E> set, Set<? extends E> set2) {
        if (set == null || set2 == null) {
            throw new NullPointerException("Sets must not be null.");
        }
        return new C18721f(set, set2, difference(set2, set));
    }

    public static <E> SortedSet<E> unmodifiableNavigableSet(NavigableSet<E> navigableSet) {
        return UnmodifiableNavigableSet.unmodifiableNavigableSet(navigableSet);
    }

    public static <E> Set<E> unmodifiableSet(E... eArr) {
        if (eArr == null) {
            return null;
        }
        return UnmodifiableSet.unmodifiableSet(hashSet(eArr));
    }

    public static <E> SortedSet<E> unmodifiableSortedSet(SortedSet<E> sortedSet) {
        return UnmodifiableSortedSet.unmodifiableSortedSet(sortedSet);
    }

    public static <E> Set<E> unmodifiableSet(Set<? extends E> set) {
        return UnmodifiableSet.unmodifiableSet(set);
    }
}
