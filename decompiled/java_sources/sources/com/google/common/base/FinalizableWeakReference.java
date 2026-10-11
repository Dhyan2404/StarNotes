package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import java.lang.ref.WeakReference;
import javax.annotation.CheckForNull;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public abstract class FinalizableWeakReference<T> extends WeakReference<T> implements FinalizableReference {
    public FinalizableWeakReference(@CheckForNull T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.f33584e);
        finalizableReferenceQueue.m25786j();
    }
}
