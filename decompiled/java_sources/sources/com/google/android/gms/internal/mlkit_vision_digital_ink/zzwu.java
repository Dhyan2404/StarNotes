package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzwu extends zzarp {
    private zzwu(zzasi zzasiVar) {
        super(zzasiVar);
    }

    public static zzwu zzc(zzasi zzasiVar) {
        return zzasiVar instanceof zzwu ? (zzwu) zzasiVar : new zzwu(zzasiVar);
    }

    public final zzwu zza(Class cls, zzaft zzaftVar, Executor executor) {
        return new zzwu(zzarx.zzd(zzi(), cls, zzaeq.zza(zzaftVar), executor));
    }

    public final zzwu zzb(Class cls, zzaqt zzaqtVar, Executor executor) {
        return new zzwu(zzarx.zze(zzi(), cls, zzaeq.zzc(zzaqtVar), executor));
    }

    public final zzwu zzd(zzaft zzaftVar, Executor executor) {
        return new zzwu(zzarx.zzn(zzi(), zzaeq.zza(zzaftVar), executor));
    }

    public final zzwu zze(zzaqt zzaqtVar, Executor executor) {
        return new zzwu(zzarx.zzo(zzi(), zzaeq.zzc(zzaqtVar), executor));
    }

    public final void zzf(zzarr zzarrVar, Executor executor) {
        zzarx.zzr(zzi(), zzaeq.zzd(zzarrVar), executor);
    }
}
