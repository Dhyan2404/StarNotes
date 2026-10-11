package com.google.android.gms.internal.p124firebaseauthapi;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzg extends Handler {

    @Nullable
    private static zzf zza;
    private final Looper zzb;

    public zzg() {
        this.zzb = Looper.getMainLooper();
    }

    public zzg(Looper looper) {
        super(looper);
        this.zzb = Looper.getMainLooper();
    }
}
