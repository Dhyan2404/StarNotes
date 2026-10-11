package com.sunia.HTREnginev2;

import java.util.Locale;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: com.sunia.HTREnginev2.ct */
/* loaded from: classes3.dex */
public final class C13585ct {

    /* renamed from: d */
    public static final C13585ct f67148d = new C13585ct();

    /* renamed from: a */
    public final ExecutorService f67149a;

    /* renamed from: b */
    public final ScheduledExecutorService f67150b;

    /* renamed from: c */
    public final Executor f67151c;

    /* renamed from: com.sunia.HTREnginev2.ct$b */
    /* loaded from: classes3.dex */
    public static class b implements Executor {

        /* renamed from: f */
        public static final int f67152f = 15;

        /* renamed from: e */
        public ThreadLocal<Integer> f67153e;

        public b() {
            this.f67153e = new ThreadLocal<>();
        }

        /* renamed from: a */
        public final int m53509a() {
            Integer num = this.f67153e.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f67153e.remove();
            } else {
                this.f67153e.set(Integer.valueOf(intValue));
            }
            return intValue;
        }

        /* renamed from: b */
        public final int m53510b() {
            Integer num = this.f67153e.get();
            if (num == null) {
                num = 0;
            }
            int intValue = num.intValue() + 1;
            this.f67153e.set(Integer.valueOf(intValue));
            return intValue;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            try {
                if (m53510b() <= 15) {
                    runnable.run();
                } else {
                    C13585ct.m53505a().execute(runnable);
                }
            } finally {
                m53509a();
            }
        }
    }

    public C13585ct() {
        this.f67149a = !m53507c() ? Executors.newCachedThreadPool() : C14175oa.m55925b();
        this.f67150b = Executors.newSingleThreadScheduledExecutor();
        this.f67151c = new b();
    }

    /* renamed from: a */
    public static ExecutorService m53505a() {
        return f67148d.f67149a;
    }

    /* renamed from: b */
    public static Executor m53506b() {
        return f67148d.f67151c;
    }

    /* renamed from: c */
    public static boolean m53507c() {
        String property = System.getProperty("java.runtime.name");
        if (property == null) {
            return false;
        }
        return property.toLowerCase(Locale.US).contains("android");
    }

    /* renamed from: d */
    public static ScheduledExecutorService m53508d() {
        return f67148d.f67150b;
    }
}
