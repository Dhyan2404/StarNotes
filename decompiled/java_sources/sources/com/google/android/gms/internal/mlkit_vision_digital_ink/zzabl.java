package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.SharedPreferences;

/* loaded from: classes5.dex */
public final class zzabl {
    private final SharedPreferences zza;

    public final long zza(String str, long j) {
        return this.zza.getLong(str, 0L);
    }

    public final zzajp zzb() {
        return zzajp.zzd(this.zza.getAll());
    }
}
