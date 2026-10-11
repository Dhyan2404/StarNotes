package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzasy extends zzash {
    final /* synthetic */ zzasz zza;
    private final Callable zzb;

    public zzasy(zzasz zzaszVar, Callable callable) {
        this.zza = zzaszVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final Object zza() throws Exception {
        return this.zzb.call();
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
    public final void zze(Object obj) {
        this.zza.zzs(obj);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzash
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
