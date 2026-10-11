package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzwn implements zzarr {
    final /* synthetic */ zzwo zza;

    public zzwn(zzwo zzwoVar) {
        this.zza = zzwoVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final void zza(Throwable th) {
        zzdl zzdlVar;
        zzdlVar = this.zza.zzc;
        zzuw.zzj(th, "%s: Unable to increment LoggingStateStore network usage for %s", "NetworkUsageMonitor", zzdlVar.zzh().zzg());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdl zzdlVar;
        zzdlVar = this.zza.zzc;
        zzuw.zzc("%s: Successfully incremented LoggingStateStore network usage for %s", "NetworkUsageMonitor", zzdlVar.zzh().zzg());
    }
}
