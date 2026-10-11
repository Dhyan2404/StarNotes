package com.google.android.gms.common.api.internal;

import androidx.annotation.VisibleForTesting;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.sunia.HTREnginev2.a9p;
import java.lang.ref.WeakReference;

/* loaded from: classes5.dex */
public final class zab extends ActivityLifecycleObserver {

    /* renamed from: a */
    public final WeakReference f29206a;

    @VisibleForTesting(otherwise = 2)
    public zab(a9p a9pVar) {
        this.f29206a = new WeakReference(a9pVar);
    }

    @Override // com.google.android.gms.common.api.internal.ActivityLifecycleObserver
    @CanIgnoreReturnValue
    public final ActivityLifecycleObserver onStopCallOnce(Runnable runnable) {
        a9p a9pVar = (a9p) this.f29206a.get();
        if (a9pVar == null) {
            throw new IllegalStateException("The target activity has already been GC'd");
        }
        a9pVar.m52985c(runnable);
        return this;
    }
}
