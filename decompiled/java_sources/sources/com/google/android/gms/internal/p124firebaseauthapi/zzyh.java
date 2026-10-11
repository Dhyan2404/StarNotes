package com.google.android.gms.internal.p124firebaseauthapi;

import androidx.annotation.Nullable;
import com.google.firebase.auth.PhoneMultiFactorInfo;

/* loaded from: classes5.dex */
public final class zzyh {
    private PhoneMultiFactorInfo zza;
    private final String zzb;

    @Nullable
    private final String zzc;
    private final long zzd;
    private final boolean zze;
    private final boolean zzf;

    @Nullable
    private final String zzg;

    @Nullable
    private final String zzh;
    private final boolean zzi;

    public zzyh(PhoneMultiFactorInfo phoneMultiFactorInfo, String str, @Nullable String str2, long j, boolean z, boolean z2, @Nullable String str3, @Nullable String str4, boolean z3) {
        this.zza = phoneMultiFactorInfo;
        this.zzb = str;
        this.zzc = str2;
        this.zzd = j;
        this.zze = z;
        this.zzf = z2;
        this.zzg = str3;
        this.zzh = str4;
        this.zzi = z3;
    }

    public final long zza() {
        return this.zzd;
    }

    public final PhoneMultiFactorInfo zzb() {
        return this.zza;
    }

    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    public final String zzd() {
        return this.zzb;
    }

    @Nullable
    public final String zze() {
        return this.zzh;
    }

    @Nullable
    public final String zzf() {
        return this.zzg;
    }

    public final boolean zzg() {
        return this.zze;
    }

    public final boolean zzh() {
        return this.zzi;
    }
}
