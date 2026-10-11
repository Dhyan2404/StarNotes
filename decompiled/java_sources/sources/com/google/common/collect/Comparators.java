package com.google.common.collect;

import com.google.android.exoplayer2.source.rtsp.C4921e;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.sunia.HTREnginev2.snf;
import com.sunia.HTREnginev2.szd;
import com.sunia.HTREnginev2.xvk;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;
import java.util.stream.Collector;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class Comparators {
    public static <T> Comparator<Optional<T>> emptiesFirst(Comparator<? super T> comparator) {
        Preconditions.checkNotNull(comparator);
        return Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.r5e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object orElse;
                orElse = ((Optional) obj).orElse(null);
                return orElse;
            }
        }, Comparator.nullsFirst(comparator));
    }

    public static <T> Comparator<Optional<T>> emptiesLast(Comparator<? super T> comparator) {
        Preconditions.checkNotNull(comparator);
        return Comparator.comparing(new Function() { // from class: com.sunia.HTREnginev2.s5e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                Object orElse;
                orElse = ((Optional) obj).orElse(null);
                return orElse;
            }
        }, Comparator.nullsLast(comparator));
    }

    public static <T> Collector<T, ?, List<T>> greatest(int i, Comparator<? super T> comparator) {
        return least(i, comparator.reversed());
    }

    public static <T> boolean isInOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        T next = it2.next();
        while (it2.hasNext()) {
            T next2 = it2.next();
            if (comparator.compare(next, next2) > 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public static <T> boolean isInStrictOrder(Iterable<? extends T> iterable, Comparator<T> comparator) {
        Preconditions.checkNotNull(comparator);
        Iterator<? extends T> it2 = iterable.iterator();
        if (!it2.hasNext()) {
            return true;
        }
        T next = it2.next();
        while (it2.hasNext()) {
            T next2 = it2.next();
            if (comparator.compare(next, next2) >= 0) {
                return false;
            }
            next = next2;
        }
        return true;
    }

    public static <T> Collector<T, ?, List<T>> least(final int i, final Comparator<? super T> comparator) {
        szd.m57279b(i, C4921e.f26537n);
        Preconditions.checkNotNull(comparator);
        return Collector.of(new Supplier() { // from class: com.sunia.HTREnginev2.t5e
            @Override // java.util.function.Supplier
            public final Object get() {
                zjn m58700e;
                m58700e = zjn.m58700e(i, comparator);
                return m58700e;
            }
        }, new BiConsumer() { // from class: com.sunia.HTREnginev2.u5e
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                ((zjn) obj).m58702f(obj2);
            }
        }, new BinaryOperator() { // from class: com.sunia.HTREnginev2.v5e
            @Override // java.util.function.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return ((zjn) obj).m58701a((zjn) obj2);
            }
        }, new Function() { // from class: com.sunia.HTREnginev2.w5e
            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                return ((zjn) obj).m58707k();
            }
        }, Collector.Characteristics.UNORDERED);
    }

    public static <T, S extends T> Comparator<Iterable<S>> lexicographical(Comparator<T> comparator) {
        return new LexicographicalOrdering((Comparator) Preconditions.checkNotNull(comparator));
    }

    public static <T extends Comparable<? super T>> T max(T t, T t2) {
        return t.compareTo(t2) >= 0 ? t : t2;
    }

    public static <T extends Comparable<? super T>> T min(T t, T t2) {
        return t.compareTo(t2) <= 0 ? t : t2;
    }

    @xvk
    public static <T> T max(@xvk T t, @xvk T t2, Comparator<T> comparator) {
        return comparator.compare(t, t2) >= 0 ? t : t2;
    }

    @xvk
    public static <T> T min(@xvk T t, @xvk T t2, Comparator<T> comparator) {
        return comparator.compare(t, t2) <= 0 ? t : t2;
    }
}
