package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzare implements zzaqs {
    final /* synthetic */ zzarh zza;
    final /* synthetic */ zzaqs zzb;

    public zzare(zzark zzarkVar, zzarh zzarhVar, zzaqs zzaqsVar) {
        this.zza = zzarhVar;
        this.zzb = zzaqsVar;
    }

    public final String toString() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
    public final zzasi zza() throws Exception {
        return !this.zza.compareAndSet(zzarf.NOT_RUN, zzarf.STARTED) ? zzarx.zzf() : this.zzb.zza();
    }
}
