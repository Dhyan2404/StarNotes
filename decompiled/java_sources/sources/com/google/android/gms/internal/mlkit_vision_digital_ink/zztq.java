package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import android.net.Uri;

/* loaded from: classes5.dex */
public final class zztq implements zzcau {
    private final zzcau zza;
    private final zzcau zzb;

    public zztq(zzcau zzcauVar, zzcau zzcauVar2) {
        this.zza = zzcauVar;
        this.zzb = zzcauVar2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzcau
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzse) this.zza).zza();
        zzagb zzagbVar = (zzagb) this.zzb.zzb();
        zzyq zza2 = zzyr.zza(zza);
        zza2.zzc("mdd_pds_config");
        zza2.zzd(zzvm.zzc("DiagFileGroups", "pb", zzagbVar));
        Uri zza3 = zza2.zza();
        zzcat.zza(zza3);
        return zza3;
    }
}
