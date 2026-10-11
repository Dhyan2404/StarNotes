package com.tencent.beacon.p059a.p061b;

import androidx.annotation.NonNull;
import com.tencent.beacon.base.util.C14954c;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.beacon.a.b.m */
/* loaded from: classes10.dex */
public final class ThreadFactoryC14885m implements ThreadFactory {

    /* renamed from: a */
    private final AtomicInteger f92585a = new AtomicInteger(1);

    /* renamed from: a */
    public String m58971a() {
        return "beacon-thread-" + this.f92585a.getAndIncrement();
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull Runnable runnable) {
        try {
            return new Thread(runnable, m58971a());
        } catch (Exception e) {
            C14954c.m59393a(e);
            return null;
        } catch (OutOfMemoryError unused) {
            C14954c.m59395b("[task] memory not enough, create thread failed.", new Object[0]);
            return null;
        }
    }
}
