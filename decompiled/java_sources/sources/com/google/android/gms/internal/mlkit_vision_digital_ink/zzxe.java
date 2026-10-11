package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.Nullable;

/* loaded from: classes5.dex */
public final class zzxe {
    private final int zza;

    @Nullable
    private final String zzb;

    @Nullable
    private final Throwable zzc;
    private final int zzd;

    private zzxe(int i, int i2, @Nullable String str, @Nullable String str2, @Nullable Throwable th) {
        this.zzd = i;
        this.zza = i2;
        this.zzb = str;
        this.zzc = th;
    }

    public static zzxe zzb(int i, @Nullable String str) {
        return new zzxe(4, i, null, null, null);
    }

    public static zzxe zzf(int i, Throwable th) {
        return new zzxe(i, -1, th.getMessage(), null, th);
    }

    public static zzxe zzg(int i) {
        return new zzxe(2, -1, null, null, null);
    }

    public static zzxe zzh(int i, @Nullable String str) {
        return new zzxe(3, -1, str, null, null);
    }

    public final int zza() {
        return this.zza;
    }

    @Nullable
    public final String zzc() {
        return this.zzb;
    }

    @Nullable
    public final Throwable zzd() {
        return this.zzc;
    }

    public final int zze() {
        return this.zzd;
    }
}
