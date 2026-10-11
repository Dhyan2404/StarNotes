package com.sunia.HTREnginev2;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes12.dex */
public class zgn implements ThreadFactory {

    /* renamed from: e */
    public final String f91730e;

    /* renamed from: f */
    public final ThreadGroup f91731f;

    /* renamed from: g */
    public final AtomicLong f91732g;

    public zgn(String str, ThreadGroup threadGroup) {
        this.f91730e = str;
        this.f91731f = threadGroup;
        this.f91732g = new AtomicLong();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(this.f91731f, runnable, this.f91730e + "-" + this.f91732g.incrementAndGet());
    }

    public zgn(String str) {
        this(str, null);
    }
}
