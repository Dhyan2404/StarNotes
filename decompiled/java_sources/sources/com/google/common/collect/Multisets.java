package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Multiset;
import com.google.common.collect.Multisets;
import com.google.common.collect.Sets;
import com.google.common.math.IntMath;
import com.google.common.primitives.Ints;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.Spliterator;
import java.util.function.Function;
import java.util.function.ObjIntConsumer;
import java.util.function.Supplier;
import java.util.function.ToIntFunction;
import java.util.stream.Collector;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class Multisets {

    /* loaded from: classes6.dex */
    public static class ImmutableEntry<E> extends AbstractC6000f<E> implements Serializable {
        private static final long serialVersionUID = 0;
        private final int count;

        @xvk
        private final E element;

        public ImmutableEntry(@xvk E e, int i) {
            this.element = e;
            this.count = i;
            szd.m57279b(i, "count");
        }

        @Override // com.google.common.collect.Multiset.Entry
        public final int getCount() {
            return this.count;
        }

        @Override // com.google.common.collect.Multiset.Entry
        @xvk
        public final E getElement() {
            return this.element;
        }

        @CheckForNull
        public ImmutableEntry<E> nextInBucket() {
            return null;
        }
    }

    /* loaded from: classes6.dex */
    public static class UnmodifiableMultiset<E> extends ForwardingMultiset<E> implements Serializable {
        private static final long serialVersionUID = 0;
        final Multiset<? extends E> delegate;

        @CheckForNull
        transient Set<E> elementSet;

        @CheckForNull
        transient Set<Multiset.Entry<E>> entrySet;

        public UnmodifiableMultiset(Multiset<? extends E> multiset) {
            this.delegate = multiset;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Queue
        public boolean add(@xvk E e) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public void clear() {
            throw new UnsupportedOperationException();
        }

        public Set<E> createElementSet() {
            return Collections.unmodifiableSet(this.delegate.elementSet());
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<E> elementSet() {
            Set<E> set = this.elementSet;
            if (set != null) {
                return set;
            }
            Set<E> createElementSet = createElementSet();
            this.elementSet = createElementSet;
            return createElementSet;
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public Set<Multiset.Entry<E>> entrySet() {
            Set<Multiset.Entry<E>> set = this.entrySet;
            if (set != null) {
                return set;
            }
            Set<Multiset.Entry<E>> unmodifiableSet = Collections.unmodifiableSet(this.delegate.entrySet());
            this.entrySet = unmodifiableSet;
            return unmodifiableSet;
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<E> iterator() {
            return Iterators.unmodifiableIterator(this.delegate.iterator());
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection<?> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int setCount(@xvk E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int add(@xvk E e, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public int remove(@CheckForNull Object obj, int i) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.Multiset
        public boolean setCount(@xvk E e, int i, int i2) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.ForwardingMultiset, com.google.common.collect.ForwardingCollection, com.google.common.collect.ForwardingObject
        public Multiset<E> delegate() {
            return this.delegate;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Multisets$a */
    /* loaded from: classes6.dex */
    public class C5995a<E> extends AbstractC6006l<E> {

        /* renamed from: e */
        public final /* synthetic */ Multiset f34335e;

        /* renamed from: f */
        public final /* synthetic */ Multiset f34336f;

        /* renamed from: com.google.common.collect.Multisets$a$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Multiset.Entry<E>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34337g;

            /* renamed from: h */
            public final /* synthetic */ Iterator f34338h;

            public a(Iterator it2, Iterator it3) {
                this.f34337g = it2;
                this.f34338h = it3;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> computeNext() {
                if (this.f34337g.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f34337g.next();
                    Object element = entry.getElement();
                    return Multisets.immutableEntry(element, Math.max(entry.getCount(), C5995a.this.f34336f.count(element)));
                }
                while (this.f34338h.hasNext()) {
                    Multiset.Entry entry2 = (Multiset.Entry) this.f34338h.next();
                    Object element2 = entry2.getElement();
                    if (!C5995a.this.f34335e.contains(element2)) {
                        return Multisets.immutableEntry(element2, entry2.getCount());
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5995a(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f34335e = multiset;
            this.f34336f = multiset2;
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@CheckForNull Object obj) {
            return this.f34335e.contains(obj) || this.f34336f.contains(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            return Math.max(this.f34335e.count(obj), this.f34336f.count(obj));
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Set<E> createElementSet() {
            return Sets.union(this.f34335e.elementSet(), this.f34336f.elementSet());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new a(this.f34335e.entrySet().iterator(), this.f34336f.entrySet().iterator());
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f34335e.isEmpty() && this.f34336f.isEmpty();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Multisets$b */
    /* loaded from: classes6.dex */
    public class C5996b<E> extends AbstractC6006l<E> {

        /* renamed from: e */
        public final /* synthetic */ Multiset f34340e;

        /* renamed from: f */
        public final /* synthetic */ Multiset f34341f;

        /* renamed from: com.google.common.collect.Multisets$b$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Multiset.Entry<E>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34342g;

            public a(Iterator it2) {
                this.f34342g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> computeNext() {
                while (this.f34342g.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f34342g.next();
                    Object element = entry.getElement();
                    int min = Math.min(entry.getCount(), C5996b.this.f34341f.count(element));
                    if (min > 0) {
                        return Multisets.immutableEntry(element, min);
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5996b(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f34340e = multiset;
            this.f34341f = multiset2;
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            int count = this.f34340e.count(obj);
            if (count == 0) {
                return 0;
            }
            return Math.min(count, this.f34341f.count(obj));
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Set<E> createElementSet() {
            return Sets.intersection(this.f34340e.elementSet(), this.f34341f.elementSet());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new a(this.f34340e.entrySet().iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Multisets$c */
    /* loaded from: classes6.dex */
    public class C5997c<E> extends AbstractC6006l<E> {

        /* renamed from: e */
        public final /* synthetic */ Multiset f34344e;

        /* renamed from: f */
        public final /* synthetic */ Multiset f34345f;

        /* renamed from: com.google.common.collect.Multisets$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<Multiset.Entry<E>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34346g;

            /* renamed from: h */
            public final /* synthetic */ Iterator f34347h;

            public a(Iterator it2, Iterator it3) {
                this.f34346g = it2;
                this.f34347h = it3;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> computeNext() {
                if (this.f34346g.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f34346g.next();
                    Object element = entry.getElement();
                    return Multisets.immutableEntry(element, entry.getCount() + C5997c.this.f34345f.count(element));
                }
                while (this.f34347h.hasNext()) {
                    Multiset.Entry entry2 = (Multiset.Entry) this.f34347h.next();
                    Object element2 = entry2.getElement();
                    if (!C5997c.this.f34344e.contains(element2)) {
                        return Multisets.immutableEntry(element2, entry2.getCount());
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5997c(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f34344e = multiset;
            this.f34345f = multiset2;
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public boolean contains(@CheckForNull Object obj) {
            return this.f34344e.contains(obj) || this.f34345f.contains(obj);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            return this.f34344e.count(obj) + this.f34345f.count(obj);
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Set<E> createElementSet() {
            return Sets.union(this.f34344e.elementSet(), this.f34345f.elementSet());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new a(this.f34344e.entrySet().iterator(), this.f34345f.entrySet().iterator());
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f34344e.isEmpty() && this.f34345f.isEmpty();
        }

        @Override // com.google.common.collect.Multisets.AbstractC6006l, java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return IntMath.saturatedAdd(this.f34344e.size(), this.f34345f.size());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Multisets$d */
    /* loaded from: classes6.dex */
    public class C5998d<E> extends AbstractC6006l<E> {

        /* renamed from: e */
        public final /* synthetic */ Multiset f34349e;

        /* renamed from: f */
        public final /* synthetic */ Multiset f34350f;

        /* renamed from: com.google.common.collect.Multisets$d$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractIterator<E> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34351g;

            public a(Iterator it2) {
                this.f34351g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            public E computeNext() {
                while (this.f34351g.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f34351g.next();
                    E e = (E) entry.getElement();
                    if (entry.getCount() > C5998d.this.f34350f.count(e)) {
                        return e;
                    }
                }
                return endOfData();
            }
        }

        /* renamed from: com.google.common.collect.Multisets$d$b */
        /* loaded from: classes6.dex */
        public class b extends AbstractIterator<Multiset.Entry<E>> {

            /* renamed from: g */
            public final /* synthetic */ Iterator f34353g;

            public b(Iterator it2) {
                this.f34353g = it2;
            }

            @Override // com.google.common.collect.AbstractIterator
            @CheckForNull
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Multiset.Entry<E> computeNext() {
                while (this.f34353g.hasNext()) {
                    Multiset.Entry entry = (Multiset.Entry) this.f34353g.next();
                    Object element = entry.getElement();
                    int count = entry.getCount() - C5998d.this.f34350f.count(element);
                    if (count > 0) {
                        return Multisets.immutableEntry(element, count);
                    }
                }
                return endOfData();
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5998d(Multiset multiset, Multiset multiset2) {
            super(null);
            this.f34349e = multiset;
            this.f34350f = multiset2;
        }

        @Override // com.google.common.collect.Multisets.AbstractC6006l, com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            int count = this.f34349e.count(obj);
            if (count == 0) {
                return 0;
            }
            return Math.max(0, count - this.f34350f.count(obj));
        }

        @Override // com.google.common.collect.Multisets.AbstractC6006l, com.google.common.collect.AbstractC6112g
        public int distinctElements() {
            return Iterators.size(entryIterator());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<E> elementIterator() {
            return new a(this.f34349e.entrySet().iterator());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<E>> entryIterator() {
            return new b(this.f34349e.entrySet().iterator());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [E] */
    /* renamed from: com.google.common.collect.Multisets$e */
    /* loaded from: classes6.dex */
    public class C5999e<E> extends AbstractC6108d0<Multiset.Entry<E>, E> {
        public C5999e(Iterator it2) {
            super(it2);
        }

        @Override // com.google.common.collect.AbstractC6108d0
        @xvk
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public E mo26351a(Multiset.Entry<E> entry) {
            return entry.getElement();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$f */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6000f<E> implements Multiset.Entry<E> {
        @Override // com.google.common.collect.Multiset.Entry
        public boolean equals(@CheckForNull Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return getCount() == entry.getCount() && Objects.equal(getElement(), entry.getElement());
        }

        @Override // com.google.common.collect.Multiset.Entry
        public int hashCode() {
            E element = getElement();
            return getCount() ^ (element == null ? 0 : element.hashCode());
        }

        @Override // com.google.common.collect.Multiset.Entry
        public String toString() {
            String valueOf = String.valueOf(getElement());
            int count = getCount();
            if (count == 1) {
                return valueOf;
            }
            StringBuilder sb = new StringBuilder(valueOf.length() + 14);
            sb.append(valueOf);
            sb.append(" x ");
            sb.append(count);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$g */
    /* loaded from: classes6.dex */
    public static final class C6001g implements Comparator<Multiset.Entry<?>> {

        /* renamed from: e */
        public static final C6001g f34355e = new C6001g();

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Multiset.Entry<?> entry, Multiset.Entry<?> entry2) {
            return entry2.getCount() - entry.getCount();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$h */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6002h<E> extends Sets.AbstractC6030j<E> {
        /* renamed from: a */
        public abstract Multiset<E> mo26134a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo26134a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            return mo26134a().contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(Collection<?> collection) {
            return mo26134a().containsAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean isEmpty() {
            return mo26134a().isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public abstract Iterator<E> iterator();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            return mo26134a().remove(obj, Integer.MAX_VALUE) > 0;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return mo26134a().entrySet().size();
        }
    }

    /* renamed from: com.google.common.collect.Multisets$i */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6003i<E> extends Sets.AbstractC6030j<Multiset.Entry<E>> {
        /* renamed from: a */
        public abstract Multiset<E> mo26120a();

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            mo26120a().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof Multiset.Entry)) {
                return false;
            }
            Multiset.Entry entry = (Multiset.Entry) obj;
            return entry.getCount() > 0 && mo26120a().count(entry.getElement()) == entry.getCount();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(@CheckForNull Object obj) {
            if (obj instanceof Multiset.Entry) {
                Multiset.Entry entry = (Multiset.Entry) obj;
                Object element = entry.getElement();
                int count = entry.getCount();
                if (count != 0) {
                    return mo26120a().setCount(element, count, 0);
                }
            }
            return false;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$j */
    /* loaded from: classes6.dex */
    public static final class C6004j<E> extends AbstractC6006l<E> {

        /* renamed from: e */
        public final Multiset<E> f34356e;

        /* renamed from: f */
        public final Predicate<? super E> f34357f;

        /* renamed from: com.google.common.collect.Multisets$j$a */
        /* loaded from: classes6.dex */
        public class a implements Predicate<Multiset.Entry<E>> {
            public a() {
            }

            @Override // com.google.common.base.Predicate
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public boolean apply(Multiset.Entry<E> entry) {
                return C6004j.this.f34357f.apply(entry.getElement());
            }
        }

        public C6004j(Multiset<E> multiset, Predicate<? super E> predicate) {
            super(null);
            this.f34356e = (Multiset) Preconditions.checkNotNull(multiset);
            this.f34357f = (Predicate) Preconditions.checkNotNull(predicate);
        }

        @Override // com.google.common.collect.Multisets.AbstractC6006l, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public UnmodifiableIterator<E> iterator() {
            return Iterators.filter(this.f34356e.iterator(), this.f34357f);
        }

        @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public int add(@xvk E e, int i) {
            Preconditions.checkArgument(this.f34357f.apply(e), "Element %s does not match predicate %s", e, this.f34357f);
            return this.f34356e.add(e, i);
        }

        @Override // com.google.common.collect.Multiset
        public int count(@CheckForNull Object obj) {
            int count = this.f34356e.count(obj);
            if (count <= 0 || !this.f34357f.apply(obj)) {
                return 0;
            }
            return count;
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Set<E> createElementSet() {
            return Sets.filter(this.f34356e.elementSet(), this.f34357f);
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Set<Multiset.Entry<E>> createEntrySet() {
            return Sets.filter(this.f34356e.entrySet(), new a());
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<E> elementIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g
        public Iterator<Multiset.Entry<E>> entryIterator() {
            throw new AssertionError("should never be called");
        }

        @Override // com.google.common.collect.AbstractC6112g, com.google.common.collect.Multiset
        public int remove(@CheckForNull Object obj, int i) {
            szd.m57279b(i, "occurrences");
            if (i == 0) {
                return count(obj);
            }
            if (contains(obj)) {
                return this.f34356e.remove(obj, i);
            }
            return 0;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$k */
    /* loaded from: classes6.dex */
    public static final class C6005k<E> implements Iterator<E> {

        /* renamed from: e */
        public final Multiset<E> f34359e;

        /* renamed from: f */
        public final Iterator<Multiset.Entry<E>> f34360f;

        /* renamed from: g */
        @CheckForNull
        public Multiset.Entry<E> f34361g;

        /* renamed from: h */
        public int f34362h;

        /* renamed from: i */
        public int f34363i;

        /* renamed from: j */
        public boolean f34364j;

        public C6005k(Multiset<E> multiset, Iterator<Multiset.Entry<E>> it2) {
            this.f34359e = multiset;
            this.f34360f = it2;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f34362h > 0 || this.f34360f.hasNext();
        }

        @Override // java.util.Iterator
        @xvk
        public E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            if (this.f34362h == 0) {
                Multiset.Entry<E> next = this.f34360f.next();
                this.f34361g = next;
                int count = next.getCount();
                this.f34362h = count;
                this.f34363i = count;
            }
            this.f34362h--;
            this.f34364j = true;
            Multiset.Entry<E> entry = this.f34361g;
            java.util.Objects.requireNonNull(entry);
            return entry.getElement();
        }

        @Override // java.util.Iterator
        public void remove() {
            szd.m57282e(this.f34364j);
            if (this.f34363i == 1) {
                this.f34360f.remove();
            } else {
                Multiset<E> multiset = this.f34359e;
                Multiset.Entry<E> entry = this.f34361g;
                java.util.Objects.requireNonNull(entry);
                multiset.remove(entry.getElement());
            }
            this.f34363i--;
            this.f34364j = false;
        }
    }

    /* renamed from: com.google.common.collect.Multisets$l */
    /* loaded from: classes6.dex */
    public static abstract class AbstractC6006l<E> extends AbstractC6112g<E> {
        public AbstractC6006l() {
        }

        @Override // com.google.common.collect.AbstractC6112g, java.util.AbstractCollection, java.util.Collection
        public void clear() {
            elementSet().clear();
        }

        @Override // com.google.common.collect.AbstractC6112g
        public int distinctElements() {
            return elementSet().size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, com.google.common.collect.Multiset
        public Iterator<E> iterator() {
            return Multisets.m26638h(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, com.google.common.collect.Multiset
        public int size() {
            return Multisets.m26640j(this);
        }

        public /* synthetic */ AbstractC6006l(C5995a c5995a) {
            this();
        }
    }

    /* renamed from: b */
    public static <E> boolean m26632b(final Multiset<E> multiset, Multiset<? extends E> multiset2) {
        if (multiset2.isEmpty()) {
            return false;
        }
        java.util.Objects.requireNonNull(multiset);
        multiset2.forEachEntry(new ObjIntConsumer() { // from class: com.sunia.HTREnginev2.qqj
            @Override // java.util.function.ObjIntConsumer
            public final void accept(Object obj, int i) {
                Multiset.this.add(obj, i);
            }
        });
        return true;
    }

    /* renamed from: c */
    public static <E> boolean m26633c(Multiset<E> multiset, Collection<? extends E> collection) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            return m26632b(multiset, m26634d(collection));
        }
        if (collection.isEmpty()) {
            return false;
        }
        return Iterators.addAll(multiset, collection.iterator());
    }

    @CanIgnoreReturnValue
    public static boolean containsOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        for (Multiset.Entry<?> entry : multiset2.entrySet()) {
            if (multiset.count(entry.getElement()) < entry.getCount()) {
                return false;
            }
        }
        return true;
    }

    @Beta
    public static <E> ImmutableMultiset<E> copyHighestCountFirst(Multiset<E> multiset) {
        Multiset.Entry[] entryArr = (Multiset.Entry[]) multiset.entrySet().toArray(new Multiset.Entry[0]);
        Arrays.sort(entryArr, C6001g.f34355e);
        return ImmutableMultiset.copyFromEntries(Arrays.asList(entryArr));
    }

    /* renamed from: d */
    public static <T> Multiset<T> m26634d(Iterable<T> iterable) {
        return (Multiset) iterable;
    }

    @Beta
    public static <E> Multiset<E> difference(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new C5998d(multiset, multiset2);
    }

    /* renamed from: e */
    public static <E> Iterator<E> m26635e(Iterator<Multiset.Entry<E>> it2) {
        return new C5999e(it2);
    }

    /* renamed from: f */
    public static boolean m26636f(Multiset<?> multiset, @CheckForNull Object obj) {
        if (obj == multiset) {
            return true;
        }
        if (obj instanceof Multiset) {
            Multiset multiset2 = (Multiset) obj;
            if (multiset.size() == multiset2.size() && multiset.entrySet().size() == multiset2.entrySet().size()) {
                for (Multiset.Entry entry : multiset2.entrySet()) {
                    if (multiset.count(entry.getElement()) != entry.getCount()) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Beta
    public static <E> Multiset<E> filter(Multiset<E> multiset, Predicate<? super E> predicate) {
        if (!(multiset instanceof C6004j)) {
            return new C6004j(multiset, predicate);
        }
        C6004j c6004j = (C6004j) multiset;
        return new C6004j(c6004j.f34356e, Predicates.and(c6004j.f34357f, predicate));
    }

    /* renamed from: g */
    public static int m26637g(Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return ((Multiset) iterable).elementSet().size();
        }
        return 11;
    }

    /* renamed from: h */
    public static <E> Iterator<E> m26638h(Multiset<E> multiset) {
        return new C6005k(multiset, multiset.entrySet().iterator());
    }

    /* renamed from: i */
    public static /* synthetic */ Spliterator m26639i(Multiset.Entry entry) {
        return Collections.nCopies(entry.getCount(), entry.getElement()).spliterator();
    }

    public static <E> Multiset.Entry<E> immutableEntry(@xvk E e, int i) {
        return new ImmutableEntry(e, i);
    }

    public static <E> Multiset<E> intersection(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new C5996b(multiset, multiset2);
    }

    /* renamed from: j */
    public static int m26640j(Multiset<?> multiset) {
        long j = 0;
        while (multiset.entrySet().iterator().hasNext()) {
            j += r4.next().getCount();
        }
        return Ints.saturatedCast(j);
    }

    /* renamed from: k */
    public static boolean m26641k(Multiset<?> multiset, Collection<?> collection) {
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().removeAll(collection);
    }

    /* renamed from: l */
    public static boolean m26642l(Multiset<?> multiset, Collection<?> collection) {
        Preconditions.checkNotNull(collection);
        if (collection instanceof Multiset) {
            collection = ((Multiset) collection).elementSet();
        }
        return multiset.elementSet().retainAll(collection);
    }

    /* renamed from: m */
    public static <E> boolean m26643m(Multiset<E> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<E>> it2 = multiset.entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Multiset.Entry<E> next = it2.next();
            int count = multiset2.count(next.getElement());
            if (count == 0) {
                it2.remove();
            } else if (count < next.getCount()) {
                multiset.setCount(next.getElement(), count);
            }
            z = true;
        }
        return z;
    }

    /* renamed from: n */
    public static <E> int m26644n(Multiset<E> multiset, @xvk E e, int i) {
        szd.m57279b(i, "count");
        int count = multiset.count(e);
        int i2 = i - count;
        if (i2 > 0) {
            multiset.add(e, i2);
        } else if (i2 < 0) {
            multiset.remove(e, -i2);
        }
        return count;
    }

    /* renamed from: o */
    public static <E> boolean m26645o(Multiset<E> multiset, @xvk E e, int i, int i2) {
        szd.m57279b(i, "oldCount");
        szd.m57279b(i2, "newCount");
        if (multiset.count(e) != i) {
            return false;
        }
        multiset.setCount(e, i2);
        return true;
    }

    /* renamed from: p */
    public static <E> Spliterator<E> m26646p(Multiset<E> multiset) {
        Spliterator<Multiset.Entry<E>> spliterator = multiset.entrySet().spliterator();
        return vzd.m57897b(spliterator, new Function() { // from class: com.sunia.HTREnginev2.pqj
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Spliterator m26639i;
                m26639i = Multisets.m26639i((Multiset.Entry) obj);
                return m26639i;
            }
        }, (spliterator.characteristics() & 1296) | 64, multiset.size());
    }

    @CanIgnoreReturnValue
    public static boolean removeOccurrences(Multiset<?> multiset, Iterable<?> iterable) {
        if (iterable instanceof Multiset) {
            return removeOccurrences(multiset, (Multiset<?>) iterable);
        }
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(iterable);
        Iterator<?> it2 = iterable.iterator();
        boolean z = false;
        while (it2.hasNext()) {
            z |= multiset.remove(it2.next());
        }
        return z;
    }

    @CanIgnoreReturnValue
    public static boolean retainOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        return m26643m(multiset, multiset2);
    }

    @Beta
    public static <E> Multiset<E> sum(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new C5997c(multiset, multiset2);
    }

    public static <T, E, M extends Multiset<E>> Collector<T, ?, M> toMultiset(Function<? super T, E> function, ToIntFunction<? super T> toIntFunction, Supplier<M> supplier) {
        return C6116k.m26981w0(function, toIntFunction, supplier);
    }

    @Beta
    public static <E> Multiset<E> union(Multiset<? extends E> multiset, Multiset<? extends E> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        return new C5995a(multiset, multiset2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <E> Multiset<E> unmodifiableMultiset(Multiset<? extends E> multiset) {
        return ((multiset instanceof UnmodifiableMultiset) || (multiset instanceof ImmutableMultiset)) ? multiset : new UnmodifiableMultiset((Multiset) Preconditions.checkNotNull(multiset));
    }

    @Beta
    public static <E> SortedMultiset<E> unmodifiableSortedMultiset(SortedMultiset<E> sortedMultiset) {
        return new UnmodifiableSortedMultiset((SortedMultiset) Preconditions.checkNotNull(sortedMultiset));
    }

    @Deprecated
    public static <E> Multiset<E> unmodifiableMultiset(ImmutableMultiset<E> immutableMultiset) {
        return (Multiset) Preconditions.checkNotNull(immutableMultiset);
    }

    @CanIgnoreReturnValue
    public static boolean removeOccurrences(Multiset<?> multiset, Multiset<?> multiset2) {
        Preconditions.checkNotNull(multiset);
        Preconditions.checkNotNull(multiset2);
        Iterator<Multiset.Entry<?>> it2 = multiset.entrySet().iterator();
        boolean z = false;
        while (it2.hasNext()) {
            Multiset.Entry<?> next = it2.next();
            int count = multiset2.count(next.getElement());
            if (count >= next.getCount()) {
                it2.remove();
            } else if (count > 0) {
                multiset.remove(next.getElement(), count);
            }
            z = true;
        }
        return z;
    }
}
