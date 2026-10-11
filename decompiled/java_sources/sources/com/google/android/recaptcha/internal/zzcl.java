package com.google.android.recaptcha.internal;

import java.util.HashMap;
import org.jetbrains.annotations.NotNull;

/* loaded from: classes6.dex */
public final class zzcl {

    @NotNull
    private final zzaa zza;

    @NotNull
    private final zzck zzb;

    @NotNull
    private final HashMap zzc;

    @NotNull
    private final zzcd zzd;

    @NotNull
    private final zzag zze;

    public zzcl(@NotNull zzcd zzcdVar, @NotNull zzag zzagVar, @NotNull zzaa zzaaVar) {
        this.zzd = zzcdVar;
        this.zze = zzagVar;
        this.zza = zzaaVar;
        zzck zzckVar = new zzck();
        this.zzb = zzckVar;
        HashMap hashMap = new HashMap();
        this.zzc = hashMap;
        zzckVar.zze(173, hashMap);
    }

    @NotNull
    public final zzaa zza() {
        return this.zza;
    }

    @NotNull
    public final zzck zzb() {
        return this.zzb;
    }

    public final void zzc() {
        this.zzb.zzd();
        this.zzb.zze(173, this.zzc);
    }

    @NotNull
    public final zzag zzd() {
        return this.zze;
    }

    @NotNull
    public final zzcd zze() {
        return this.zzd;
    }

    public final void zzf(@NotNull int i, @NotNull Object obj) {
        this.zzc.put(Integer.valueOf(i - 2), obj);
    }
}
