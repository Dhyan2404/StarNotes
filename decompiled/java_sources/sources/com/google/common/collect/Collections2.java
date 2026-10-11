package com.google.common.collect;

import com.google.android.material.motion.MotionUtils;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.Collections2;
import com.google.common.math.IntMath;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.vzd;
import com.sunia.HTREnginev2.xvk;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Spliterator;
import java.util.function.Consumer;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class Collections2 {

    /* renamed from: com.google.common.collect.Collections2$a */
    /* loaded from: classes6.dex */
    public static class C5781a<E> extends AbstractCollection<E> {

        /* renamed from: e */
        public final Collection<E> f33928e;

        /* renamed from: f */
        public final Predicate<? super E> f33929f;

        public C5781a(Collection<E> collection, Predicate<? super E> predicate) {
            this.f33928e = collection;
            this.f33929f = predicate;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: e */
        public /* synthetic */ void m26083e(Consumer consumer, Object obj) {
            if (this.f33929f.test(obj)) {
                consumer.accept(obj);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: g */
        public /* synthetic */ boolean m26084g(java.util.function.Predicate predicate, Object obj) {
            return this.f33929f.apply(obj) && predicate.test(obj);
        }

        /* renamed from: h */
        public static /* synthetic */ boolean m26085h(Collection collection, Object obj) {
            return !collection.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(@xvk E e) {
            Preconditions.checkArgument(this.f33929f.apply(e));
            return this.f33928e.add(e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(Collection<? extends E> collection) {
            Iterator<? extends E> it2 = collection.iterator();
            while (it2.hasNext()) {
                Preconditions.checkArgument(this.f33929f.apply(it2.next()));
            }
            return this.f33928e.addAll(collection);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            Iterables.removeIf(this.f33928e, this.f33929f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (Collections2.m26077e(this.f33928e, obj)) {
                return this.f33929f.apply(obj);
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return Collections2.m26074b(this, collection);
        }

        /* renamed from: d */
        public C5781a<E> m26086d(Predicate<? super E> predicate) {
            return new C5781a<>(this.f33928e, Predicates.and(this.f33929f, predicate));
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super E> consumer) {
            Preconditions.checkNotNull(consumer);
            this.f33928e.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.c1e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Collections2.C5781a.this.m26083e(consumer, obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return !Iterables.any(this.f33928e, this.f33929f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<E> iterator() {
            return Iterators.filter(this.f33928e.iterator(), this.f33929f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(@CheckForNull Object obj) {
            return contains(obj) && this.f33928e.remove(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(final Collection<?> collection) {
            Objects.requireNonNull(collection);
            return removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.a1e
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    return collection.contains(obj);
                }
            });
        }

        @Override // java.util.Collection
        public boolean removeIf(final java.util.function.Predicate<? super E> predicate) {
            Preconditions.checkNotNull(predicate);
            return this.f33928e.removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.d1e
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26084g;
                    m26084g = Collections2.C5781a.this.m26084g(predicate, obj);
                    return m26084g;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(final Collection<?> collection) {
            return removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.b1e
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26085h;
                    m26085h = Collections2.C5781a.m26085h(collection, obj);
                    return m26085h;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            Iterator<E> it2 = this.f33928e.iterator();
            int i = 0;
            while (it2.hasNext()) {
                if (this.f33929f.apply(it2.next())) {
                    i++;
                }
            }
            return i;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<E> spliterator() {
            return vzd.m57896a(this.f33928e.spliterator(), this.f33929f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public Object[] toArray() {
            return Lists.newArrayList(iterator()).toArray();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) Lists.newArrayList(iterator()).toArray(tArr);
        }
    }

    /* renamed from: com.google.common.collect.Collections2$b */
    /* loaded from: classes6.dex */
    public static final class C5782b<E> extends AbstractCollection<List<E>> {

        /* renamed from: e */
        public final ImmutableList<E> f33930e;

        /* renamed from: f */
        public final Comparator<? super E> f33931f;

        /* renamed from: g */
        public final int f33932g;

        public C5782b(Iterable<E> iterable, Comparator<? super E> comparator) {
            ImmutableList<E> sortedCopyOf = ImmutableList.sortedCopyOf(comparator, iterable);
            this.f33930e = sortedCopyOf;
            this.f33931f = comparator;
            this.f33932g = m26087a(sortedCopyOf, comparator);
        }

        /* renamed from: a */
        public static <E> int m26087a(List<E> list, Comparator<? super E> comparator) {
            int i = 1;
            int i2 = 1;
            int i3 = 1;
            while (i < list.size()) {
                if (comparator.compare(list.get(i - 1), list.get(i)) < 0) {
                    i2 = IntMath.saturatedMultiply(i2, IntMath.binomial(i, i3));
                    if (i2 == Integer.MAX_VALUE) {
                        return Integer.MAX_VALUE;
                    }
                    i3 = 0;
                }
                i++;
                i3++;
            }
            return IntMath.saturatedMultiply(i2, IntMath.binomial(i, i3));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.m26075c(this.f33930e, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new C5783c(this.f33930e, this.f33931f);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f33932g;
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.f33930e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 30);
            sb.append("orderedPermutationCollection(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.collect.Collections2$c */
    /* loaded from: classes6.dex */
    public static final class C5783c<E> extends AbstractIterator<List<E>> {

        /* renamed from: g */
        @CheckForNull
        public List<E> f33933g;

        /* renamed from: h */
        public final Comparator<? super E> f33934h;

        public C5783c(List<E> list, Comparator<? super E> comparator) {
            this.f33933g = Lists.newArrayList(list);
            this.f33934h = comparator;
        }

        /* renamed from: b */
        public void m26088b() {
            int m26090d = m26090d();
            if (m26090d == -1) {
                this.f33933g = null;
                return;
            }
            Objects.requireNonNull(this.f33933g);
            Collections.swap(this.f33933g, m26090d, m26091e(m26090d));
            Collections.reverse(this.f33933g.subList(m26090d + 1, this.f33933g.size()));
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public List<E> computeNext() {
            List<E> list = this.f33933g;
            if (list == null) {
                return endOfData();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) list);
            m26088b();
            return copyOf;
        }

        /* renamed from: d */
        public int m26090d() {
            Objects.requireNonNull(this.f33933g);
            for (int size = this.f33933g.size() - 2; size >= 0; size--) {
                if (this.f33934h.compare(this.f33933g.get(size), this.f33933g.get(size + 1)) < 0) {
                    return size;
                }
            }
            return -1;
        }

        /* renamed from: e */
        public int m26091e(int i) {
            Objects.requireNonNull(this.f33933g);
            E e = this.f33933g.get(i);
            for (int size = this.f33933g.size() - 1; size > i; size--) {
                if (this.f33934h.compare(e, this.f33933g.get(size)) < 0) {
                    return size;
                }
            }
            throw new AssertionError("this statement should be unreachable");
        }
    }

    /* renamed from: com.google.common.collect.Collections2$d */
    /* loaded from: classes6.dex */
    public static final class C5784d<E> extends AbstractCollection<List<E>> {

        /* renamed from: e */
        public final ImmutableList<E> f33935e;

        public C5784d(ImmutableList<E> immutableList) {
            this.f33935e = immutableList;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(@CheckForNull Object obj) {
            if (!(obj instanceof List)) {
                return false;
            }
            return Collections2.m26075c(this.f33935e, (List) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<List<E>> iterator() {
            return new C5785e(this.f33935e);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return IntMath.factorial(this.f33935e.size());
        }

        @Override // java.util.AbstractCollection
        public String toString() {
            String valueOf = String.valueOf(this.f33935e);
            StringBuilder sb = new StringBuilder(valueOf.length() + 14);
            sb.append("permutations(");
            sb.append(valueOf);
            sb.append(MotionUtils.f31762d);
            return sb.toString();
        }
    }

    /* renamed from: com.google.common.collect.Collections2$e */
    /* loaded from: classes6.dex */
    public static class C5785e<E> extends AbstractIterator<List<E>> {

        /* renamed from: g */
        public final List<E> f33936g;

        /* renamed from: h */
        public final int[] f33937h;

        /* renamed from: i */
        public final int[] f33938i;

        /* renamed from: j */
        public int f33939j;

        public C5785e(List<E> list) {
            this.f33936g = new ArrayList(list);
            int size = list.size();
            int[] iArr = new int[size];
            this.f33937h = iArr;
            int[] iArr2 = new int[size];
            this.f33938i = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 1);
            this.f33939j = Integer.MAX_VALUE;
        }

        /* renamed from: b */
        public void m26092b() {
            int size = this.f33936g.size() - 1;
            this.f33939j = size;
            if (size == -1) {
                return;
            }
            int i = 0;
            while (true) {
                int[] iArr = this.f33937h;
                int i2 = this.f33939j;
                int i3 = iArr[i2];
                int i4 = this.f33938i[i2] + i3;
                if (i4 < 0) {
                    m26094d();
                } else if (i4 != i2 + 1) {
                    Collections.swap(this.f33936g, (i2 - i3) + i, (i2 - i4) + i);
                    this.f33937h[this.f33939j] = i4;
                    return;
                } else {
                    if (i2 == 0) {
                        return;
                    }
                    i++;
                    m26094d();
                }
            }
        }

        @Override // com.google.common.collect.AbstractIterator
        @CheckForNull
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public List<E> computeNext() {
            if (this.f33939j <= 0) {
                return endOfData();
            }
            ImmutableList copyOf = ImmutableList.copyOf((Collection) this.f33936g);
            m26092b();
            return copyOf;
        }

        /* renamed from: d */
        public void m26094d() {
            int[] iArr = this.f33938i;
            int i = this.f33939j;
            iArr[i] = -iArr[i];
            this.f33939j = i - 1;
        }
    }

    /* renamed from: com.google.common.collect.Collections2$f */
    /* loaded from: classes6.dex */
    public static class C5786f<F, T> extends AbstractCollection<T> {

        /* renamed from: e */
        public final Collection<F> f33940e;

        /* renamed from: f */
        public final Function<? super F, ? extends T> f33941f;

        public C5786f(Collection<F> collection, Function<? super F, ? extends T> function) {
            this.f33940e = (Collection) Preconditions.checkNotNull(collection);
            this.f33941f = (Function) Preconditions.checkNotNull(function);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: c */
        public /* synthetic */ void m26097c(Consumer consumer, Object obj) {
            consumer.accept(this.f33941f.apply(obj));
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: d */
        public /* synthetic */ boolean m26098d(java.util.function.Predicate predicate, Object obj) {
            return predicate.test(this.f33941f.apply(obj));
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.f33940e.clear();
        }

        @Override // java.lang.Iterable
        public void forEach(final Consumer<? super T> consumer) {
            Preconditions.checkNotNull(consumer);
            this.f33940e.forEach(new Consumer() { // from class: com.sunia.HTREnginev2.f1e
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    Collections2.C5786f.this.m26097c(consumer, obj);
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean isEmpty() {
            return this.f33940e.isEmpty();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.transform(this.f33940e.iterator(), this.f33941f);
        }

        @Override // java.util.Collection
        public boolean removeIf(final java.util.function.Predicate<? super T> predicate) {
            Preconditions.checkNotNull(predicate);
            return this.f33940e.removeIf(new java.util.function.Predicate() { // from class: com.sunia.HTREnginev2.e1e
                @Override // java.util.function.Predicate
                public final boolean test(Object obj) {
                    boolean m26098d;
                    m26098d = Collections2.C5786f.this.m26098d(predicate, obj);
                    return m26098d;
                }
            });
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.f33940e.size();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Spliterator<T> spliterator() {
            return vzd.m57903h(this.f33940e.spliterator(), this.f33941f);
        }
    }

    /* renamed from: b */
    public static boolean m26074b(Collection<?> collection, Collection<?> collection2) {
        Iterator<?> it2 = collection2.iterator();
        while (it2.hasNext()) {
            if (!collection.contains(it2.next())) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    public static boolean m26075c(List<?> list, List<?> list2) {
        if (list.size() != list2.size()) {
            return false;
        }
        return HashMultiset.create(list).equals(HashMultiset.create(list2));
    }

    /* renamed from: d */
    public static StringBuilder m26076d(int i) {
        szd.m57279b(i, "size");
        return new StringBuilder((int) Math.min(i * 8, 1073741824L));
    }

    /* renamed from: e */
    public static boolean m26077e(Collection<?> collection, @CheckForNull Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    /* renamed from: f */
    public static boolean m26078f(Collection<?> collection, @CheckForNull Object obj) {
        Preconditions.checkNotNull(collection);
        try {
            return collection.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static <E> Collection<E> filter(Collection<E> collection, Predicate<? super E> predicate) {
        return collection instanceof C5781a ? ((C5781a) collection).m26086d(predicate) : new C5781a((Collection) Preconditions.checkNotNull(collection), (Predicate) Preconditions.checkNotNull(predicate));
    }

    /* renamed from: g */
    public static String m26079g(Collection<?> collection) {
        StringBuilder m26076d = m26076d(collection.size());
        m26076d.append('[');
        boolean z = true;
        for (Object obj : collection) {
            if (!z) {
                m26076d.append(", ");
            }
            if (obj == collection) {
                m26076d.append("(this Collection)");
            } else {
                m26076d.append(obj);
            }
            z = false;
        }
        m26076d.append(']');
        return m26076d.toString();
    }

    @Beta
    public static <E extends Comparable<? super E>> Collection<List<E>> orderedPermutations(Iterable<E> iterable) {
        return orderedPermutations(iterable, Ordering.natural());
    }

    @Beta
    public static <E> Collection<List<E>> permutations(Collection<E> collection) {
        return new C5784d(ImmutableList.copyOf((Collection) collection));
    }

    public static <F, T> Collection<T> transform(Collection<F> collection, Function<? super F, T> function) {
        return new C5786f(collection, function);
    }

    @Beta
    public static <E> Collection<List<E>> orderedPermutations(Iterable<E> iterable, Comparator<? super E> comparator) {
        return new C5782b(iterable, comparator);
    }
}
