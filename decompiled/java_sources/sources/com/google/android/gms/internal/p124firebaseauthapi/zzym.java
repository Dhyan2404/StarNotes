package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.firebase.auth.MultiFactorInfo;
import com.google.firebase.auth.internal.zzbh;
import com.google.firebase.auth.zzf;
import java.util.List;

/* loaded from: classes5.dex */
public final class zzym {

    @SafeParcelable.Field(getter = "getMfaPendingCredential", m22176id = 1)
    private String zza;

    @SafeParcelable.Field(getter = "getMfaInfoList", m22176id = 2)
    private List<zzafq> zzb;

    @SafeParcelable.Field(getter = "getDefaultOAuthCredential", m22176id = 3)
    private zzf zzc;

    @SafeParcelable.Constructor
    public zzym(String str, List<zzafq> list, @Nullable zzf zzfVar) {
        this.zza = str;
        this.zzb = list;
        this.zzc = zzfVar;
    }

    public final zzf zza() {
        return this.zzc;
    }

    public final String zzb() {
        return this.zza;
    }

    public final List<MultiFactorInfo> zzc() {
        return zzbh.zza(this.zzb);
    }
}
