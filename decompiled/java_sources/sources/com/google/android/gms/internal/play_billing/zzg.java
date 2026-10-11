package com.google.android.gms.internal.play_billing;

import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzg {
    static final zzg zza;
    static final zzg zzb;

    @Nullable
    final Throwable zzc;

    static {
        if (zzq.zza) {
            zzb = null;
            zza = null;
        } else {
            zzb = new zzg(false, null);
            zza = new zzg(true, null);
        }
    }

    public zzg(boolean z, @Nullable Throwable th) {
        this.zzc = th;
    }
}
