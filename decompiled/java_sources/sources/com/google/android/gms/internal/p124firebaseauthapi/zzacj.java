package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzacj {

    @Nullable
    private String zza;

    @Nullable
    private String zzb;

    private zzacj() {
    }

    public static zzacj zza(String str) {
        zzacj zzacjVar = new zzacj();
        zzacjVar.zza = str;
        return zzacjVar;
    }

    public static zzacj zzb(String str) {
        zzacj zzacjVar = new zzacj();
        zzacjVar.zzb = str;
        return zzacjVar;
    }

    @Nullable
    public final String zza() {
        return this.zza;
    }

    @Nullable
    public final String zzb() {
        return this.zzb;
    }
}
