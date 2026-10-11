package com.google.android.gms.internal.p124firebaseauthapi;

/* loaded from: classes5.dex */
final class zzade implements Runnable {
    private final /* synthetic */ zzadh zza;
    private final /* synthetic */ zzadb zzb;

    public zzade(zzadb zzadbVar, zzadh zzadhVar) {
        this.zza = zzadhVar;
        this.zzb = zzadbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.zzb.zza.zzh) {
            if (!this.zzb.zza.zzh.isEmpty()) {
                this.zza.zza(this.zzb.zza.zzh.get(0), new Object[0]);
            }
        }
    }
}
