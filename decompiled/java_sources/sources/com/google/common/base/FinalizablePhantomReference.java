package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import java.lang.ref.PhantomReference;
import javax.annotation.CheckForNull;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public abstract class FinalizablePhantomReference<T> extends PhantomReference<T> implements FinalizableReference {
    public FinalizablePhantomReference(@CheckForNull T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.f33584e);
        finalizableReferenceQueue.m25786j();
    }
}
