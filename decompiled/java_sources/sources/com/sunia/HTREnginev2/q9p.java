package com.sunia.HTREnginev2;

import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.internal.zaaw;
import com.google.android.gms.common.api.internal.zabi;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public abstract class q9p implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ zaaw f81798e;

    @WorkerThread
    /* renamed from: a */
    public abstract void mo55407a();

    @Override // java.lang.Runnable
    @WorkerThread
    public final void run() {
        Lock lock;
        Lock lock2;
        zabi zabiVar;
        lock = this.f81798e.f29185b;
        lock.lock();
        try {
            try {
                if (!Thread.interrupted()) {
                    mo55407a();
                }
            } catch (RuntimeException e) {
                zabiVar = this.f81798e.f29184a;
                zabiVar.m22082g(e);
            }
        } finally {
            lock2 = this.f81798e.f29185b;
            lock2.unlock();
        }
    }
}
