package com.miui.penengine.p013c;

import com.miui.penengine.p013c.EnumC6984a;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.miui.penengine.c.a */
/* loaded from: classes7.dex */
public enum EnumC6984a {
    INSTANCE;


    /* renamed from: a */
    public final ExecutorService f39596a = new ThreadPoolExecutor(0, 2, 60, TimeUnit.SECONDS, new ArrayBlockingQueue(10), m31263b());

    EnumC6984a() {
    }

    /* renamed from: b */
    public static ThreadFactory m31263b() {
        final AtomicInteger atomicInteger = new AtomicInteger(1);
        return new ThreadFactory() { // from class: com.sunia.HTREnginev2.xxo
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return EnumC6984a.m31261a(atomicInteger, runnable);
            }
        };
    }

    /* renamed from: a */
    public static /* synthetic */ Thread m31261a(AtomicInteger atomicInteger, Runnable runnable) {
        Thread thread = new Thread(runnable);
        thread.setName("PenEngine-GlobalThreadPool-" + atomicInteger.getAndIncrement());
        return thread;
    }

    /* renamed from: a */
    public void m31264a(Runnable runnable) {
        this.f39596a.submit(runnable);
    }
}
