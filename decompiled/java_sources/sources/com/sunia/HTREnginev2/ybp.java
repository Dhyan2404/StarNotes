package com.sunia.HTREnginev2;

import com.google.android.gms.common.api.internal.C5053a;
import java.util.concurrent.locks.Lock;

/* loaded from: classes5.dex */
public final class ybp implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ C5053a f90574e;

    public ybp(C5053a c5053a) {
        this.f90574e = c5053a;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        Lock lock2;
        lock = this.f90574e.f29166m;
        lock.lock();
        try {
            C5053a.m22019p(this.f90574e);
        } finally {
            lock2 = this.f90574e.f29166m;
            lock2.unlock();
        }
    }
}
