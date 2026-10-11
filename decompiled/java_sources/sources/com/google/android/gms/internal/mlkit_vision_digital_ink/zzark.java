package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class zzark {
    private final AtomicReference zza = new AtomicReference(zzasc.zza);
    private zzarj zzb = new zzarj(null);

    private zzark() {
    }

    public static zzark zzb() {
        return new zzark();
    }

    public final zzasi zzc(Callable callable, Executor executor) {
        executor.getClass();
        return zzd(new zzard(this, callable), executor);
    }

    public final zzasi zzd(zzaqs zzaqsVar, Executor executor) {
        zzaqsVar.getClass();
        executor.getClass();
        final zzarh zzarhVar = new zzarh(executor, this, null);
        zzare zzareVar = new zzare(this, zzarhVar, zzaqsVar);
        final zzasw zzd = zzasw.zzd();
        final zzasi zzasiVar = (zzasi) this.zza.getAndSet(zzd);
        final zzasz zzaszVar = new zzasz(zzareVar);
        zzasiVar.zzp(zzaszVar, zzarhVar);
        final zzasi zzj = zzarx.zzj(zzaszVar);
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzarc
            @Override // java.lang.Runnable
            public final void run() {
                zzasz zzaszVar2 = zzasz.this;
                zzasw zzaswVar = zzd;
                zzasi zzasiVar2 = zzasiVar;
                zzasi zzasiVar3 = zzj;
                zzarh zzarhVar2 = zzarhVar;
                if (zzaszVar2.isDone()) {
                    zzaswVar.zzc(zzasiVar2);
                } else if (zzasiVar3.isCancelled() && zzarhVar2.compareAndSet(zzarf.NOT_RUN, zzarf.CANCELLED)) {
                    zzaszVar2.cancel(false);
                }
            }
        };
        zzaqz zzaqzVar = zzaqz.INSTANCE;
        zzj.zzp(runnable, zzaqzVar);
        zzaszVar.zzp(runnable, zzaqzVar);
        return zzj;
    }
}
