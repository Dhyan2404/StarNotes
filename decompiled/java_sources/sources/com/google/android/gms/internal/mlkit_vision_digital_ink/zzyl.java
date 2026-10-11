package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;

/* loaded from: classes5.dex */
public final class zzyl {
    private final Context zza;
    private final zzzj zzb = new zzzj();

    public /* synthetic */ zzyl(Context context, zzyk zzykVar) {
        zzzt.zza(context != null, "Context cannot be null", new Object[0]);
        this.zza = context.getApplicationContext();
    }

    public final zzyn zzb() {
        return new zzyn(this, null);
    }
}
