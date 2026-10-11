package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzru implements zzcau {
    private final zzcau zza;
    private final zzcau zzb;
    private final zzcau zzc;
    private final zzcau zzd;
    private final zzcau zze;

    public zzru(zzcau zzcauVar, zzcau zzcauVar2, zzcau zzcauVar3, zzcau zzcauVar4, zzcau zzcauVar5) {
        this.zza = zzcauVar;
        this.zzb = zzcauVar2;
        this.zzc = zzcauVar3;
        this.zzd = zzcauVar4;
        this.zze = zzcauVar5;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcau
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzrt zzb() {
        return new zzrt(((zzse) this.zza).zza(), (zzgs) this.zzb.zzb(), (zzsp) this.zzc.zzb(), (zzagb) this.zzd.zzb(), (Executor) this.zze.zzb(), null);
    }
}
