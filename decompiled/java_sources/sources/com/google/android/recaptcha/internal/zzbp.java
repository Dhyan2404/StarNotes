package com.google.android.recaptcha.internal;

import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzbp {

    @NotNull
    public static final zzbp zza = new zzbp();

    private zzbp() {
    }

    @NotNull
    public static final zzno zza(@NotNull zzz zzzVar, @NotNull zzz zzzVar2) {
        zznn zzf = zzno.zzf();
        zzf.zzp(zzmg.zzb(zzzVar.zzb()));
        TimeUnit timeUnit = TimeUnit.NANOSECONDS;
        zzf.zzq(zzme.zza(zzzVar.zza(timeUnit)));
        zzf.zzd(zzmg.zzb(zzzVar2.zzb()));
        zzf.zze(zzme.zza(zzzVar2.zza(timeUnit)));
        return (zzno) zzf.zzj();
    }
}
