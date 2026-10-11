package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.pnf;
import com.sunia.HTREnginev2.uvk;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;

@GwtIncompatible
@pnf
/* loaded from: classes6.dex */
public final class Atomics {
    public static <V> AtomicReference<V> newReference() {
        return new AtomicReference<>();
    }

    public static <E> AtomicReferenceArray<E> newReferenceArray(int i) {
        return new AtomicReferenceArray<>(i);
    }

    public static <V> AtomicReference<V> newReference(@uvk V v) {
        return new AtomicReference<>(v);
    }

    public static <E> AtomicReferenceArray<E> newReferenceArray(E[] eArr) {
        return new AtomicReferenceArray<>(eArr);
    }
}
