package com.sunia.HTREnginev2;

import com.android.billingclient.api.C1783a;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class wgp implements ThreadFactory {

    /* renamed from: e */
    public final ThreadFactory f88618e = Executors.defaultThreadFactory();

    /* renamed from: f */
    public final AtomicInteger f88619f = new AtomicInteger(1);

    public wgp(C1783a c1783a) {
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        AtomicInteger atomicInteger = this.f88619f;
        Thread newThread = this.f88618e.newThread(runnable);
        newThread.setName("PlayBillingLibrary-" + atomicInteger.getAndIncrement());
        return newThread;
    }
}
