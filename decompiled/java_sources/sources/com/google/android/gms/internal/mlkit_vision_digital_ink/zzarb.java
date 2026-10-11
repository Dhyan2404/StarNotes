package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
public final class zzarb {
    private static final Logger zza = Logger.getLogger(zzarb.class.getName());

    @CheckForNull
    private zzara zzb;
    private boolean zzc;

    private static void zzc(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e) {
            zza.logp(Level.SEVERE, "com.google.common.util.concurrent.ExecutionList", "executeListener", "RuntimeException while executing runnable " + String.valueOf(runnable) + " with executor " + String.valueOf(executor), (Throwable) e);
        }
    }

    public final void zza(Runnable runnable, Executor executor) {
        zzagg.zzc(runnable, "Runnable was null.");
        zzagg.zzc(executor, "Executor was null.");
        synchronized (this) {
            if (this.zzc) {
                zzc(runnable, executor);
            } else {
                this.zzb = new zzara(runnable, executor, this.zzb);
            }
        }
    }

    public final void zzb() {
        synchronized (this) {
            if (this.zzc) {
                return;
            }
            this.zzc = true;
            zzara zzaraVar = this.zzb;
            zzara zzaraVar2 = null;
            this.zzb = null;
            while (zzaraVar != null) {
                zzara zzaraVar3 = zzaraVar.zzc;
                zzaraVar.zzc = zzaraVar2;
                zzaraVar2 = zzaraVar;
                zzaraVar = zzaraVar3;
            }
            while (zzaraVar2 != null) {
                zzc(zzaraVar2.zza, zzaraVar2.zzb);
                zzaraVar2 = zzaraVar2.zzc;
            }
        }
    }
}
