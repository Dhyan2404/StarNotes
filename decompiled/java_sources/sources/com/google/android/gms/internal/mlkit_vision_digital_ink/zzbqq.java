package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbqq implements zzarr {
    public zzbqq(zzbqt zzbqtVar) {
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final void zza(Throwable th) {
        Log.i("MddModelManager", "Failed to register file groups.", th);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzarr
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Log.i("MddModelManager", "File groups registered: ".concat(String.valueOf((Boolean) obj)));
    }
}
