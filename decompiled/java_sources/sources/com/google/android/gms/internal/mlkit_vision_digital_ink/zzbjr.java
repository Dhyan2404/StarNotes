package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
final class zzbjr extends zzbio {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzbht zzb;
    final /* synthetic */ zzbnw zzc;
    final /* synthetic */ zzbjs zzd;
    private zzbio zze;

    public zzbjr(zzbjs zzbjsVar, boolean z, boolean z2, zzbht zzbhtVar, zzbnw zzbnwVar) {
        this.zzd = zzbjsVar;
        this.zza = z;
        this.zzb = zzbhtVar;
        this.zzc = zzbnwVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        if (this.zza) {
            zzbnyVar.zzp();
            return null;
        }
        zzbio zzbioVar = this.zze;
        if (zzbioVar == null) {
            zzbioVar = this.zzb.zzb(this.zzd, this.zzc);
            this.zze = zzbioVar;
        }
        return zzbioVar.zza(zzbnyVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
