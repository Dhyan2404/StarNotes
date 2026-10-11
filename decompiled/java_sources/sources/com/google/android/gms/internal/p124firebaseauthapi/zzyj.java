package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.zzf;

/* loaded from: classes5.dex */
public final class zzyj {
    private final Status zza;
    private final zzf zzb;
    private final String zzc;
    private final String zzd;

    @SafeParcelable.Constructor
    public zzyj(Status status, zzf zzfVar, String str, @Nullable String str2) {
        this.zza = status;
        this.zzb = zzfVar;
        this.zzc = str;
        this.zzd = str2;
    }

    public final Status zza() {
        return this.zza;
    }

    public final zzf zzb() {
        return this.zzb;
    }

    public final String zzc() {
        return this.zzc;
    }

    public final String zzd() {
        return this.zzd;
    }
}
