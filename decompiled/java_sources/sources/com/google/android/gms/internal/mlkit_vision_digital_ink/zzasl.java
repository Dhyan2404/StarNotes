package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzasl implements Executor {
    final /* synthetic */ Executor zza;
    final /* synthetic */ zzaqa zzb;

    public zzasl(Executor executor, zzaqa zzaqaVar) {
        this.zza = executor;
        this.zzb = zzaqaVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        try {
            this.zza.execute(runnable);
        } catch (RejectedExecutionException e) {
            this.zzb.zzt(e);
        }
    }
}
