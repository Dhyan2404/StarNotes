package com.sunia.HTREnginev2;

import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.common.sdkinternal.TaskQueue;
import com.google.mlkit.common.sdkinternal.zzw;
import java.io.Closeable;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes6.dex */
public final class asp implements Closeable {

    /* renamed from: e */
    public final /* synthetic */ TaskQueue f65060e;

    public /* synthetic */ asp(TaskQueue taskQueue, zzw zzwVar) {
        AtomicReference atomicReference;
        this.f65060e = taskQueue;
        atomicReference = taskQueue.f36574d;
        Preconditions.checkState(((Thread) atomicReference.getAndSet(Thread.currentThread())) == null);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        AtomicReference atomicReference;
        atomicReference = this.f65060e.f36574d;
        atomicReference.set(null);
        this.f65060e.m28539c();
    }
}
