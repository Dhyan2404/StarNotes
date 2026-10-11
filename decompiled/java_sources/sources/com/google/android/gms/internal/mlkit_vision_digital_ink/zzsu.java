package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzsu implements zzcau {
    private final zzcau zza;
    private final zzcau zzb;
    private final zzcau zzc;
    private final zzcau zzd;
    private final zzcau zze;
    private final zzcau zzf;

    public zzsu(zzcau zzcauVar, zzcau zzcauVar2, zzcau zzcauVar3, zzcau zzcauVar4, zzcau zzcauVar5, zzcau zzcauVar6) {
        this.zza = zzcauVar;
        this.zzb = zzcauVar2;
        this.zzc = zzcauVar3;
        this.zzd = zzcauVar4;
        this.zze = zzcauVar5;
        this.zzf = zzcauVar6;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcau
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzse) this.zza).zza();
        zzgs zzgsVar = (zzgs) this.zzb.zzb();
        zzsp zzspVar = (zzsp) this.zzc.zzb();
        zzaaw zzaawVar = (zzaaw) this.zzd.zzb();
        Executor executor = (Executor) this.zze.zzb();
        return new zzpr(zza, zzgsVar, zzspVar, zzaawVar, executor, null);
    }
}
