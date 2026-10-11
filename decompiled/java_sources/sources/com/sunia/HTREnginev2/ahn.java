package com.sunia.HTREnginev2;

import java.time.Duration;
import onyx.org.apache.commons.io.ThreadUtils;

/* loaded from: classes11.dex */
public final class ahn implements Runnable {

    /* renamed from: e */
    public final Thread f64707e;

    /* renamed from: f */
    public final Duration f64708f;

    public ahn(Thread thread, Duration duration) {
        this.f64707e = thread;
        this.f64708f = duration;
    }

    /* renamed from: a */
    public static Thread m53017a(Thread thread, Duration duration) {
        if (duration.isZero() || duration.isNegative()) {
            return null;
        }
        Thread thread2 = new Thread(new ahn(thread, duration), ahn.class.getSimpleName());
        thread2.setDaemon(true);
        thread2.start();
        return thread2;
    }

    /* renamed from: b */
    public static Thread m53018b(Duration duration) {
        return m53017a(Thread.currentThread(), duration);
    }

    /* renamed from: c */
    public static void m53019c(Thread thread) {
        if (thread != null) {
            thread.interrupt();
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            ThreadUtils.sleep(this.f64708f);
            this.f64707e.interrupt();
        } catch (InterruptedException unused) {
        }
    }
}
