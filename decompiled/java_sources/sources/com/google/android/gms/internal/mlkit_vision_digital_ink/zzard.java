package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzard implements zzaqs {
    final /* synthetic */ Callable zza;

    public zzard(zzark zzarkVar, Callable callable) {
        this.zza = callable;
    }

    public final String toString() {
        return this.zza.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
    public final zzasi zza() throws Exception {
        return zzarx.zzh(this.zza.call());
    }
}
