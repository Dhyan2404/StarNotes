package com.tencent.qimei.p083d;

import androidx.annotation.NonNull;
import com.tencent.qimei.p093n.C16806a;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* renamed from: com.tencent.qimei.d.d */
/* loaded from: classes10.dex */
public final class ThreadFactoryC16772d implements ThreadFactory {

    /* renamed from: a */
    public final AtomicInteger f93459a = new AtomicInteger(1);

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(@NonNull Runnable runnable) {
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("qm-thread-");
            sb.append(this.f93459a.getAndIncrement());
            return new Thread(runnable, sb.toString());
        } catch (Exception e) {
            C16806a.m59992a(e);
            return null;
        } catch (OutOfMemoryError unused) {
            return null;
        }
    }
}
