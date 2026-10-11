package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Log;
import com.onyx.android.sdk.data.account.bean.DevicePushAction;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import javax.annotation.concurrent.GuardedBy;

/* loaded from: classes5.dex */
public final class zzbrc implements Executor {
    private final Executor zza;
    private final Object zzb = new Object();

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private int zzc = 0;

    @GuardedBy(DevicePushAction.LOCK_DEVICE)
    private final Queue zzd = new ArrayDeque();

    public zzbrc(Executor executor, int i) {
        this.zza = executor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb() {
        synchronized (this.zzb) {
            Runnable runnable = (Runnable) this.zzd.poll();
            if (runnable == null) {
                this.zzc--;
                return;
            }
            try {
                this.zza.execute(new zzbrb(this, runnable));
            } catch (RejectedExecutionException e) {
                Log.e("ThrottlingExecutor", String.format("Task submission failed: %s", runnable), e);
                synchronized (this.zzb) {
                    this.zzc--;
                }
            }
        }
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.getClass();
        synchronized (this.zzb) {
            int i = this.zzc;
            if (i >= 2) {
                this.zzd.add(runnable);
                return;
            }
            this.zzc = i + 1;
            try {
                this.zza.execute(new zzbrb(this, runnable));
            } catch (Throwable th) {
                synchronized (this.zzb) {
                    this.zzc--;
                    throw th;
                }
            }
        }
    }
}
