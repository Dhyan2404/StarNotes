package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* loaded from: classes5.dex */
public final class zzblp extends zzblm {
    final zzbht zza;
    private final zzbie zzb;
    private final zzbhx zzc;
    private final zzbnw zzd;
    private final zzblo zze = new zzblo(this, null);
    private final boolean zzf;
    private volatile zzbio zzg;

    public zzblp(zzbie zzbieVar, zzbhx zzbhxVar, zzbht zzbhtVar, zzbnw zzbnwVar, zzbip zzbipVar, boolean z) {
        this.zzb = zzbieVar;
        this.zzc = zzbhxVar;
        this.zza = zzbhtVar;
        this.zzd = zzbnwVar;
        this.zzf = z;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final Object zza(zzbny zzbnyVar) throws IOException {
        if (this.zzc == null) {
            zzbio zzbioVar = this.zzg;
            if (zzbioVar == null) {
                zzbioVar = this.zza.zzb(null, this.zzd);
                this.zzg = zzbioVar;
            }
            return zzbioVar.zza(zzbnyVar);
        }
        zzbhy zza = zzbkk.zza(zzbnyVar);
        if (this.zzf && (zza instanceof zzbia)) {
            return null;
        }
        zzbhx zzbhxVar = this.zzc;
        this.zzd.zzd();
        return zzbhxVar.zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzbio
    public final void zzb(zzboa zzboaVar, Object obj) throws IOException {
        throw null;
    }
}
