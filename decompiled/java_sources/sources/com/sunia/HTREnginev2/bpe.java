package com.sunia.HTREnginev2;

import android.os.Process;
import android.os.StrictMode;
import java.util.Locale;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.Nullable;

/* loaded from: classes6.dex */
public class bpe implements ThreadFactory {

    /* renamed from: i */
    public static final ThreadFactory f65970i = Executors.defaultThreadFactory();

    /* renamed from: e */
    public final AtomicLong f65971e = new AtomicLong();

    /* renamed from: f */
    public final String f65972f;

    /* renamed from: g */
    public final int f65973g;

    /* renamed from: h */
    public final StrictMode.ThreadPolicy f65974h;

    public bpe(String str, int i, @Nullable StrictMode.ThreadPolicy threadPolicy) {
        this.f65972f = str;
        this.f65973g = i;
        this.f65974h = threadPolicy;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public /* synthetic */ void m53292b(Runnable runnable) {
        Process.setThreadPriority(this.f65973g);
        StrictMode.ThreadPolicy threadPolicy = this.f65974h;
        if (threadPolicy != null) {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        runnable.run();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(final Runnable runnable) {
        Thread newThread = f65970i.newThread(new Runnable() { // from class: com.sunia.HTREnginev2.ape
            @Override // java.lang.Runnable
            public final void run() {
                bpe.this.m53292b(runnable);
            }
        });
        newThread.setName(String.format(Locale.ROOT, "%s Thread #%d", this.f65972f, Long.valueOf(this.f65971e.getAndIncrement())));
        return newThread;
    }
}
