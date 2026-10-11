package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaqw extends zzaqx {
    final /* synthetic */ zzaqy zza;
    private final Callable zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzaqw(zzaqy zzaqyVar, Callable callable, Executor executor) {
        super(zzaqyVar, executor);
        this.zza = zzaqyVar;
        callable.getClass();
        this.zzc = callable;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final Object zza() throws Exception {
        return this.zzc.call();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final String zzb() {
        return this.zzc.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqx
    public final void zzc(Object obj) {
        this.zza.zzs(obj);
    }
}
