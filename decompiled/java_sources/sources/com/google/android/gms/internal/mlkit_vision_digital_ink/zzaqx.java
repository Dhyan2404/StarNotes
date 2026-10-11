package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzaqx extends zzash {
    private final Executor zza;
    final /* synthetic */ zzaqy zzb;

    public zzaqx(zzaqy zzaqyVar, Executor executor) {
        this.zzb = zzaqyVar;
        executor.getClass();
        this.zza = executor;
    }

    public abstract void zzc(Object obj);

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final void zzd(Throwable th) {
        this.zzb.zza = null;
        if (th instanceof ExecutionException) {
            this.zzb.zzt(((ExecutionException) th).getCause());
        } else if (th instanceof CancellationException) {
            this.zzb.cancel(false);
        } else {
            this.zzb.zzt(th);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final void zze(Object obj) {
        this.zzb.zza = null;
        zzc(obj);
    }

    public final void zzf() {
        try {
            this.zza.execute(this);
        } catch (RejectedExecutionException e) {
            this.zzb.zzt(e);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final boolean zzg() {
        return this.zzb.isDone();
    }
}
