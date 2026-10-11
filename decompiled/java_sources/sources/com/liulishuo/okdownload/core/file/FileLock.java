package com.liulishuo.okdownload.core.file;

import androidx.annotation.NonNull;
import com.liulishuo.okdownload.core.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes4.dex */
public class FileLock {

    /* renamed from: c */
    public static final String f39466c = "FileLock";

    /* renamed from: d */
    public static final long f39467d = TimeUnit.MILLISECONDS.toNanos(100);

    /* renamed from: a */
    @NonNull
    public final Map<String, AtomicInteger> f39468a;

    /* renamed from: b */
    @NonNull
    public final Map<String, Thread> f39469b;

    public FileLock(@NonNull Map<String, AtomicInteger> map, @NonNull Map<String, Thread> map2) {
        this.f39468a = map;
        this.f39469b = map2;
    }

    /* renamed from: a */
    public boolean m31069a(AtomicInteger atomicInteger) {
        return atomicInteger.get() <= 0;
    }

    /* renamed from: b */
    public void m31070b() {
        LockSupport.park(Long.valueOf(f39467d));
    }

    /* renamed from: c */
    public void m31071c(@NonNull Thread thread) {
        LockSupport.unpark(thread);
    }

    public void decreaseLock(@NonNull String str) {
        AtomicInteger atomicInteger;
        Thread thread;
        synchronized (this.f39468a) {
            atomicInteger = this.f39468a.get(str);
        }
        if (atomicInteger == null || atomicInteger.decrementAndGet() != 0) {
            return;
        }
        Util.m30983d(f39466c, "decreaseLock decrease lock-count to 0 " + str);
        synchronized (this.f39469b) {
            thread = this.f39469b.get(str);
            if (thread != null) {
                this.f39469b.remove(str);
            }
        }
        if (thread != null) {
            Util.m30983d(f39466c, "decreaseLock " + str + " unpark locked thread " + atomicInteger);
            m31071c(thread);
        }
        synchronized (this.f39468a) {
            this.f39468a.remove(str);
        }
    }

    public void increaseLock(@NonNull String str) {
        AtomicInteger atomicInteger;
        synchronized (this.f39468a) {
            atomicInteger = this.f39468a.get(str);
        }
        if (atomicInteger == null) {
            atomicInteger = new AtomicInteger(0);
            synchronized (this.f39468a) {
                this.f39468a.put(str, atomicInteger);
            }
        }
        Util.m30983d(f39466c, "increaseLock increase lock-count to " + atomicInteger.incrementAndGet() + str);
    }

    public void waitForRelease(@NonNull String str) {
        AtomicInteger atomicInteger;
        synchronized (this.f39468a) {
            atomicInteger = this.f39468a.get(str);
        }
        if (atomicInteger == null || atomicInteger.get() <= 0) {
            return;
        }
        synchronized (this.f39469b) {
            this.f39469b.put(str, Thread.currentThread());
        }
        Util.m30983d(f39466c, "waitForRelease start " + str);
        while (!m31069a(atomicInteger)) {
            m31070b();
        }
        Util.m30983d(f39466c, "waitForRelease finish " + str);
    }

    public FileLock() {
        this(new HashMap(), new HashMap());
    }
}
