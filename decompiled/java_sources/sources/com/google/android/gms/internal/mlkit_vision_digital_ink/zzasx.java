package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzasx extends zzash {
    final /* synthetic */ zzasz zza;
    private final zzaqs zzb;

    public zzasx(zzasz zzaszVar, zzaqs zzaqsVar) {
        this.zza = zzaszVar;
        this.zzb = zzaqsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzasi zza = this.zzb.zza();
        zzagg.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzb);
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final void zzd(Throwable th) {
        this.zza.zzt(th);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final /* synthetic */ void zze(Object obj) {
        this.zza.zzc((zzasi) obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
