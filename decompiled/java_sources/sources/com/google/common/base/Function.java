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
public interface Function<F, T> extends java.util.function.Function<F, T> {
    @Override // java.util.function.Function
    @CanIgnoreReturnValue
    @fwk
    T apply(@fwk F f);

    boolean equals(@CheckForNull Object obj);
}
