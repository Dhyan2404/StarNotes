package com.google.common.collect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Optional;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.google.errorprone.annotations.InlineMe;
import com.sunia.HTREnginev2.AbstractC14531v3;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.xvk;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.SortedSet;
import java.util.stream.Stream;
import javax.annotation.CheckForNull;

@snf
@GwtCompatible(emulated = true)
/* loaded from: classes6.dex */
public abstract class FluentIterable<E> implements Iterable<E> {

    /* renamed from: e */
    public final Optional<Iterable<E>> f33982e;

    /* renamed from: com.google.common.collect.FluentIterable$a */
    /* loaded from: classes6.dex */
    public class C5814a extends FluentIterable<E> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f33983f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5814a(Iterable iterable, Iterable iterable2) {
            super(iterable);
            this.f33983f = iterable2;
        }

        @Override // java.lang.Iterable
        public Iterator<E> iterator() {
            return this.f33983f.iterator();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.FluentIterable$b */
    /* loaded from: classes6.dex */
    public class C5815b<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable f33984f;

        public C5815b(Iterable iterable) {
            this.f33984f = iterable;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.concat(Iterators.transform(this.f33984f.iterator(), Iterables.m26330f()));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* renamed from: com.google.common.collect.FluentIterable$c */
    /* loaded from: classes6.dex */
    public class C5816c<T> extends FluentIterable<T> {

        /* renamed from: f */
        public final /* synthetic */ Iterable[] f33985f;

        /* renamed from: com.google.common.collect.FluentIterable$c$a */
        /* loaded from: classes6.dex */
        public class a extends AbstractC14531v3<Iterator<? extends T>> {
            public a(int i) {
                super(i);
            }

            @Override // com.sunia.HTREnginev2.AbstractC14531v3
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public Iterator<? extends T> mo26054a(int i) {
                return C5816c.this.f33985f[i].iterator();
            }
        }

        public C5816c(Iterable[] iterableArr) {
            this.f33985f = iterableArr;
        }

        @Override // java.lang.Iterable
        public Iterator<T> iterator() {
            return Iterators.concat(new a(this.f33985f.length));
        }
    }

    /* renamed from: com.google.common.collect.FluentIterable$d */
    /* loaded from: classes6.dex */
    public static class C5817d<E> implements Function<Iterable<E>, FluentIterable<E>> {
        @Override // com.google.common.base.Function, java.util.function.Function
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public FluentIterable<E> apply(Iterable<E> iterable) {
            return FluentIterable.from(iterable);
        }
    }

    public FluentIterable() {
        this.f33982e = Optional.absent();
    }

    /* renamed from: a */
    public static <T> FluentIterable<T> m26128a(Iterable<? extends T>... iterableArr) {
        for (Iterable<? extends T> iterable : iterableArr) {
            Preconditions.checkNotNull(iterable);
        }
        return new C5816c(iterableArr);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2) {
        return m26128a(iterable, iterable2);
    }

    public static <E> FluentIterable<E> from(Iterable<E> iterable) {
        if (iterable instanceof FluentIterable) {
            return (FluentIterable) iterable;
        }
        return new C5814a(iterable, iterable);
    }

    @Beta
    /* renamed from: of */
    public static <E> FluentIterable<E> m26129of() {
        return from(Collections.emptyList());
    }

    public final boolean allMatch(Predicate<? super E> predicate) {
        return Iterables.all(m26131b(), predicate);
    }

    public final boolean anyMatch(Predicate<? super E> predicate) {
        return Iterables.any(m26131b(), predicate);
    }

    @Beta
    public final FluentIterable<E> append(Iterable<? extends E> iterable) {
        return concat(m26131b(), iterable);
    }

    /* renamed from: b */
    public final Iterable<E> m26131b() {
        return this.f33982e.mo25761or((Optional<Iterable<E>>) this);
    }

    public final boolean contains(@CheckForNull Object obj) {
        return Iterables.contains(m26131b(), obj);
    }

    @CanIgnoreReturnValue
    public final <C extends Collection<? super E>> C copyInto(C c) {
        Preconditions.checkNotNull(c);
        Iterable<E> m26131b = m26131b();
        if (m26131b instanceof Collection) {
            c.addAll((Collection) m26131b);
        } else {
            Iterator<E> it2 = m26131b.iterator();
            while (it2.hasNext()) {
                c.add(it2.next());
            }
        }
        return c;
    }

    public final FluentIterable<E> cycle() {
        return from(Iterables.cycle(m26131b()));
    }

    public final FluentIterable<E> filter(Predicate<? super E> predicate) {
        return from(Iterables.filter(m26131b(), predicate));
    }

    public final Optional<E> first() {
        Iterator<E> it2 = m26131b().iterator();
        return it2.hasNext() ? Optional.m25808of(it2.next()) : Optional.absent();
    }

    public final Optional<E> firstMatch(Predicate<? super E> predicate) {
        return Iterables.tryFind(m26131b(), predicate);
    }

    @xvk
    public final E get(int i) {
        return (E) Iterables.get(m26131b(), i);
    }

    public final <K> ImmutableListMultimap<K, E> index(Function<? super E, K> function) {
        return Multimaps.index(m26131b(), function);
    }

    public final boolean isEmpty() {
        return !m26131b().iterator().hasNext();
    }

    @Beta
    public final String join(Joiner joiner) {
        return joiner.join(this);
    }

    public final Optional<E> last() {
        E next;
        Iterable<E> m26131b = m26131b();
        if (m26131b instanceof List) {
            List list = (List) m26131b;
            return list.isEmpty() ? Optional.absent() : Optional.m25808of(list.get(list.size() - 1));
        }
        Iterator<E> it2 = m26131b.iterator();
        if (!it2.hasNext()) {
            return Optional.absent();
        }
        if (m26131b instanceof SortedSet) {
            return Optional.m25808of(((SortedSet) m26131b).last());
        }
        do {
            next = it2.next();
        } while (it2.hasNext());
        return Optional.m25808of(next);
    }

    public final FluentIterable<E> limit(int i) {
        return from(Iterables.limit(m26131b(), i));
    }

    public final int size() {
        return Iterables.size(m26131b());
    }

    public final FluentIterable<E> skip(int i) {
        return from(Iterables.skip(m26131b(), i));
    }

    public final Stream<E> stream() {
        return Streams.stream(m26131b());
    }

    @GwtIncompatible
    public final E[] toArray(Class<E> cls) {
        return (E[]) Iterables.toArray(m26131b(), cls);
    }

    public final ImmutableList<E> toList() {
        return ImmutableList.copyOf(m26131b());
    }

    public final <V> ImmutableMap<E, V> toMap(Function<? super E, V> function) {
        return Maps.toMap(m26131b(), function);
    }

    public final ImmutableMultiset<E> toMultiset() {
        return ImmutableMultiset.copyOf(m26131b());
    }

    public final ImmutableSet<E> toSet() {
        return ImmutableSet.copyOf(m26131b());
    }

    public final ImmutableList<E> toSortedList(Comparator<? super E> comparator) {
        return Ordering.from(comparator).immutableSortedCopy(m26131b());
    }

    public final ImmutableSortedSet<E> toSortedSet(Comparator<? super E> comparator) {
        return ImmutableSortedSet.copyOf(comparator, m26131b());
    }

    public String toString() {
        return Iterables.toString(m26131b());
    }

    public final <T> FluentIterable<T> transform(Function<? super E, T> function) {
        return from(Iterables.transform(m26131b(), function));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> FluentIterable<T> transformAndConcat(Function<? super E, ? extends Iterable<? extends T>> function) {
        return concat(transform(function));
    }

    public final <K> ImmutableMap<K, E> uniqueIndex(Function<? super E, K> function) {
        return Maps.uniqueIndex(m26131b(), function);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3) {
        return m26128a(iterable, iterable2, iterable3);
    }

    @Beta
    /* renamed from: of */
    public static <E> FluentIterable<E> m26130of(@xvk E e, E... eArr) {
        return from(Lists.asList(e, eArr));
    }

    @Beta
    public final FluentIterable<E> append(E... eArr) {
        return concat(m26131b(), Arrays.asList(eArr));
    }

    @GwtIncompatible
    public final <T> FluentIterable<T> filter(Class<T> cls) {
        return from(Iterables.filter((Iterable<?>) m26131b(), (Class) cls));
    }

    public FluentIterable(Iterable<E> iterable) {
        this.f33982e = Optional.m25808of(iterable);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T> iterable, Iterable<? extends T> iterable2, Iterable<? extends T> iterable3, Iterable<? extends T> iterable4) {
        return m26128a(iterable, iterable2, iterable3, iterable4);
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends T>... iterableArr) {
        return m26128a((Iterable[]) Arrays.copyOf(iterableArr, iterableArr.length));
    }

    @Beta
    public static <E> FluentIterable<E> from(E[] eArr) {
        return from(Arrays.asList(eArr));
    }

    @Beta
    public static <T> FluentIterable<T> concat(Iterable<? extends Iterable<? extends T>> iterable) {
        Preconditions.checkNotNull(iterable);
        return new C5815b(iterable);
    }

    @InlineMe(replacement = "checkNotNull(iterable)", staticImports = {"com.google.common.base.Preconditions.checkNotNull"})
    @Deprecated
    public static <E> FluentIterable<E> from(FluentIterable<E> fluentIterable) {
        return (FluentIterable) Preconditions.checkNotNull(fluentIterable);
    }
}
