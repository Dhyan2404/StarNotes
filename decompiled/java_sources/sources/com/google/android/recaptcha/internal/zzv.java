package com.google.android.recaptcha.internal;

import java.util.concurrent.ConcurrentHashMap;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzv {

    @NotNull
    public static final zzv zza = new zzv();

    @NotNull
    private static final ConcurrentHashMap zzb = new ConcurrentHashMap();

    private zzv() {
    }

    public static final void zza(int i, long j) {
        ConcurrentHashMap concurrentHashMap = zzb;
        Integer valueOf = Integer.valueOf(i);
        Object obj = concurrentHashMap.get(valueOf);
        if (obj == null) {
            obj = new zzu();
        }
        zzu zzuVar = (zzu) obj;
        zzuVar.zzg(zzuVar.zzb() + 1);
        zzuVar.zzf(zzuVar.zzd() + j);
        zzuVar.zze(Math.max(j, zzuVar.zzc()));
        concurrentHashMap.put(valueOf, zzuVar);
    }
}
