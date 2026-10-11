package com.sunia.HTREnginev2;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.collect.Ordering;
import java.util.Comparator;
import java.util.SortedSet;

@snf
@GwtCompatible
/* loaded from: classes6.dex */
public final class tvm {
    /* renamed from: a */
    public static <E> Comparator<? super E> m57464a(SortedSet<E> sortedSet) {
        Comparator<? super E> comparator = sortedSet.comparator();
        return comparator == null ? Ordering.natural() : comparator;
    }

    /* renamed from: b */
    public static boolean m57465b(Comparator<?> comparator, Iterable<?> iterable) {
        Comparator comparator2;
        Preconditions.checkNotNull(comparator);
        Preconditions.checkNotNull(iterable);
        if (iterable instanceof SortedSet) {
            comparator2 = m57464a((SortedSet) iterable);
        } else {
            if (!(iterable instanceof svm)) {
                return false;
            }
            comparator2 = ((svm) iterable).comparator();
        }
        return comparator.equals(comparator2);
    }
}
