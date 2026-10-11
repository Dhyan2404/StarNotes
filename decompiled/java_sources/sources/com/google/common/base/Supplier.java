package com.google.common.base;

import com.google.common.annotations.GwtCompatible;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.aof;
import com.sunia.HTREnginev2.fwk;

@FunctionalInterface
@GwtCompatible
@aof
/* loaded from: classes6.dex */
public interface Supplier<T> extends java.util.function.Supplier<T> {
    @Override // java.util.function.Supplier
    @CanIgnoreReturnValue
    @fwk
    T get();
}
