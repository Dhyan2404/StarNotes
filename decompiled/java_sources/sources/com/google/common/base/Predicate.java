package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.fwk;
import javax.annotation.CheckForNull;

@FunctionalInterface
@GwtCompatible
@aof
/* loaded from: classes6.dex */
public interface Predicate<T> extends java.util.function.Predicate<T> {
    @CanIgnoreReturnValue
    boolean apply(@fwk T t);

    boolean equals(@CheckForNull Object obj);

    @Override // java.util.function.Predicate
    default boolean test(@fwk T t) {
        return apply(t);
    }
}
