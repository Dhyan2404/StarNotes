package com.tencent.beacon.p059a.p061b;

import android.os.Handler;
import androidx.annotation.NonNull;
import java.util.concurrent.ScheduledExecutorService;

/* renamed from: com.tencent.beacon.a.b.b */
/* loaded from: classes10.dex */
public abstract class AbstractC14874b {

    /* renamed from: a */
    protected static volatile AbstractC14874b f92543a;

    /* renamed from: b */
    protected int f92544b = 0;

    /* renamed from: c */
    private boolean f92545c = false;

    /* renamed from: com.tencent.beacon.a.b.b$a */
    /* loaded from: classes10.dex */
    public static class a {

        /* renamed from: a */
        static final AbstractC14874b f92546a = new C14884l();
    }

    /* renamed from: b */
    public static AbstractC14874b m58934b() {
        return a.f92546a;
    }

    /* renamed from: a */
    public abstract Handler mo58935a(int i);

    /* renamed from: a */
    public abstract void mo58936a(int i, long j, int i2);

    /* renamed from: a */
    public abstract void mo58937a(int i, long j, long j2, @NonNull Runnable runnable);

    /* renamed from: a */
    public abstract void mo58938a(int i, boolean z, int i2);

    /* renamed from: a */
    public abstract void mo58939a(long j, int i);

    /* renamed from: a */
    public abstract void mo58940a(long j, @NonNull Runnable runnable);

    /* renamed from: a */
    public abstract void mo58941a(@NonNull Runnable runnable);

    /* renamed from: a */
    public abstract void mo58942a(boolean z, int i);

    /* renamed from: a */
    public static synchronized AbstractC14874b m58931a() {
        AbstractC14874b abstractC14874b;
        synchronized (AbstractC14874b.class) {
            if (f92543a == null) {
                f92543a = new C14884l();
            }
            abstractC14874b = f92543a;
        }
        return abstractC14874b;
    }

    /* renamed from: b */
    public synchronized void m58943b(int i) {
        if (this.f92545c) {
            return;
        }
        mo58942a(true, 1);
        mo58940a(i, new RunnableC14873a(this));
        this.f92545c = true;
    }

    /* renamed from: a */
    public static synchronized void m58932a(@NonNull ScheduledExecutorService scheduledExecutorService) {
        synchronized (AbstractC14874b.class) {
            if (f92543a == null) {
                f92543a = new C14884l(scheduledExecutorService);
            }
        }
    }
}
