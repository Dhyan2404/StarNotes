package com.google.common.base;

import com.google.common.annotations.GwtIncompatible;
import com.sunia.HTREnginev2.aof;
import java.lang.ref.SoftReference;
import javax.annotation.CheckForNull;

@GwtIncompatible
@aof
/* loaded from: classes6.dex */
public abstract class FinalizableSoftReference<T> extends SoftReference<T> implements FinalizableReference {
    public FinalizableSoftReference(@CheckForNull T t, FinalizableReferenceQueue finalizableReferenceQueue) {
        super(t, finalizableReferenceQueue.f33584e);
        finalizableReferenceQueue.m25786j();
    }
}
