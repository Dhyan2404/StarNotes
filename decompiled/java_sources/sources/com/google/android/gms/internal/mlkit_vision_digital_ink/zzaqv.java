package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaqv extends zzaqx {
    final /* synthetic */ zzaqy zza;
    private final zzaqs zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaqv(zzaqy zzaqyVar, zzaqs zzaqsVar, Executor executor) {
        super(zzaqyVar, executor);
        this.zza = zzaqyVar;
        this.zzc = zzaqsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final /* bridge */ /* synthetic */ Object zza() throws Exception {
        zzasi zza = this.zzc.zza();
        zzagg.zzd(zza, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s", this.zzc);
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqx
    public final /* synthetic */ void zzc(Object obj) {
        this.zza.zzc((zzasi) obj);
    }
}
