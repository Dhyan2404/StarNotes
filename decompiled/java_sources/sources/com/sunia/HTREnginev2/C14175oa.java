package com.sunia.HTREnginev2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.sunia.HTREnginev2.oa */
/* loaded from: classes3.dex */
public final class C14175oa {

    /* renamed from: b */
    public static final C14175oa f79491b = new C14175oa();

    /* renamed from: c */
    public static final int f79492c;

    /* renamed from: d */
    public static final int f79493d;

    /* renamed from: e */
    public static final int f79494e;

    /* renamed from: f */
    public static final long f79495f = 1;

    /* renamed from: a */
    public final Executor f79496a = new b();

    /* renamed from: com.sunia.HTREnginev2.oa$b */
    /* loaded from: classes3.dex */
    public static class b implements Executor {
        public b() {
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            new Handler(Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        f79492c = availableProcessors;
        f79493d = availableProcessors + 1;
        f79494e = (availableProcessors * 2) + 1;
    }

    @SuppressLint({"NewApi"})
    /* renamed from: a */
    public static void m55924a(ThreadPoolExecutor threadPoolExecutor, boolean z) {
        threadPoolExecutor.allowCoreThreadTimeOut(z);
    }

    /* renamed from: b */
    public static ExecutorService m55925b() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f79493d, f79494e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        m55924a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    /* renamed from: c */
    public static ExecutorService m55926c(ThreadFactory threadFactory) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(f79493d, f79494e, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        m55924a(threadPoolExecutor, true);
        return threadPoolExecutor;
    }

    /* renamed from: d */
    public static Executor m55927d() {
        return f79491b.f79496a;
    }
}
