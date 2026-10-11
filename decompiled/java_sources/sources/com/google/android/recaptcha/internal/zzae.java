package com.google.android.recaptcha.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* loaded from: classes6.dex */
public final class zzae extends Exception {

    @Nullable
    private final Throwable zza;

    @NotNull
    private final zzpg zzb;

    @NotNull
    private final int zzc;

    @NotNull
    private final int zzd;

    public zzae(@NotNull int i, @NotNull int i2, @Nullable Throwable th) {
        this.zzc = i;
        this.zzd = i2;
        this.zza = th;
        zzpg zzf = zzph.zzf();
        zzf.zze(i2);
        zzf.zzp(i);
        this.zzb = zzf;
    }

    @Override // java.lang.Throwable
    @Nullable
    public final Throwable getCause() {
        return this.zza;
    }

    @NotNull
    public final zzpg zza() {
        return this.zzb;
    }

    @NotNull
    public final int zzb() {
        return this.zzd;
    }
}
