package com.sunia.HTREnginev2;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes3.dex */
public class c8e {

    /* renamed from: a */
    public static final int f66596a = 15;

    @RequiresApi(28)
    /* renamed from: com.sunia.HTREnginev2.c8e$a */
    /* loaded from: classes3.dex */
    public static class C13555a {
        @DoNotInline
        /* renamed from: a */
        public static Handler m53411a(Looper looper) {
            return Handler.createAsync(looper);
        }
    }

    @NonNull
    @Deprecated
    /* renamed from: b */
    public static Executor m53407b(@NonNull Handler handler) {
        Objects.requireNonNull(handler);
        return new b8e(handler);
    }

    /* renamed from: c */
    public static ThreadPoolExecutor m53408c(@NonNull final String str) {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), new ThreadFactory() { // from class: com.sunia.HTREnginev2.a8e
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                Thread m53409d;
                m53409d = c8e.m53409d(str, runnable);
                return m53409d;
            }
        });
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }

    /* renamed from: d */
    public static /* synthetic */ Thread m53409d(String str, Runnable runnable) {
        Thread thread = new Thread(runnable, str);
        thread.setPriority(10);
        return thread;
    }

    /* renamed from: e */
    public static Handler m53410e() {
        return C13555a.m53411a(Looper.getMainLooper());
    }
}
