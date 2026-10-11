package com.google.mlkit.common.sdkinternal;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import com.sunia.HTREnginev2.asp;
import com.sunia.HTREnginev2.trp;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicReference;

@KeepForSdk
/* loaded from: classes6.dex */
public class TaskQueue {

    /* renamed from: b */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public boolean f36572b;

    /* renamed from: a */
    public final Object f36571a = new Object();

    /* renamed from: c */
    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    public final Queue f36573c = new ArrayDeque();

    /* renamed from: d */
    public final AtomicReference f36574d = new AtomicReference();

    /* renamed from: c */
    public final void m28539c() {
        synchronized (this.f36571a) {
            if (this.f36573c.isEmpty()) {
                this.f36572b = false;
            } else {
                trp trpVar = (trp) this.f36573c.remove();
                m28540d(trpVar.f85690a, trpVar.f85691b);
            }
        }
    }

    @KeepForSdk
    public void checkIsRunningOnCurrentThread() {
        Preconditions.checkState(Thread.currentThread().equals(this.f36574d.get()));
    }

    /* renamed from: d */
    public final void m28540d(Executor executor, final Runnable runnable) {
        try {
            executor.execute(new Runnable() { // from class: com.google.mlkit.common.sdkinternal.zzt
                @Override // java.lang.Runnable
                public final void run() {
                    asp aspVar = new asp(TaskQueue.this, null);
                    try {
                        runnable.run();
                        aspVar.close();
                    } catch (Throwable th) {
                        try {
                            aspVar.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            });
        } catch (RejectedExecutionException unused) {
            m28539c();
        }
    }

    @KeepForSdk
    public void submit(@NonNull Executor executor, @NonNull Runnable runnable) {
        synchronized (this.f36571a) {
            if (this.f36572b) {
                this.f36573c.add(new trp(executor, runnable, null));
            } else {
                this.f36572b = true;
                m28540d(executor, runnable);
            }
        }
    }
}
