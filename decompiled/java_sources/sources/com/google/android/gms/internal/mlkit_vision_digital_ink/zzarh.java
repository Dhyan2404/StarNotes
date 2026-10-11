package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzarh extends AtomicReference implements Executor, Runnable {

    @CheckForNull
    zzark zza;

    @CheckForNull
    Executor zzb;

    @CheckForNull
    Runnable zzc;

    @CheckForNull
    Thread zzd;

    public /* synthetic */ zzarh(Executor executor, zzark zzarkVar, zzarg zzargVar) {
        super(zzarf.NOT_RUN);
        this.zzb = executor;
        this.zza = zzarkVar;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        if (get() == zzarf.CANCELLED) {
            this.zzb = null;
            this.zza = null;
            return;
        }
        this.zzd = Thread.currentThread();
        try {
            zzark zzarkVar = this.zza;
            zzarkVar.getClass();
            zzarj zza = zzark.zza(zzarkVar);
            if (zza.zza == this.zzd) {
                this.zza = null;
                zzagg.zzj(zza.zzb == null);
                zza.zzb = runnable;
                Executor executor = this.zzb;
                executor.getClass();
                zza.zzc = executor;
                this.zzb = null;
            } else {
                Executor executor2 = this.zzb;
                executor2.getClass();
                this.zzb = null;
                this.zzc = runnable;
                executor2.execute(this);
            }
        } finally {
            this.zzd = null;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        Executor executor;
        Thread currentThread = Thread.currentThread();
        if (currentThread != this.zzd) {
            Runnable runnable = this.zzc;
            runnable.getClass();
            this.zzc = null;
            runnable.run();
            return;
        }
        zzarj zzarjVar = new zzarj(null);
        zzarjVar.zza = currentThread;
        zzark zzarkVar = this.zza;
        zzarkVar.getClass();
        zzark.zze(zzarkVar, zzarjVar);
        this.zza = null;
        try {
            Runnable runnable2 = this.zzc;
            runnable2.getClass();
            this.zzc = null;
            runnable2.run();
            while (true) {
                Runnable runnable3 = zzarjVar.zzb;
                if (runnable3 == null || (executor = zzarjVar.zzc) == null) {
                    break;
                }
                zzarjVar.zzb = null;
                zzarjVar.zzc = null;
                executor.execute(runnable3);
            }
        } finally {
            zzarjVar.zza = null;
        }
    }
}
