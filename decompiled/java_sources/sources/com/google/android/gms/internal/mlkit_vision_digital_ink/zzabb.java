package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzabb {
    private Executor zza;
    private zzyg zzb;
    private final zzacw zzd = zzacw.zza;
    private final HashMap zzc = new HashMap();

    public final zzaba zza() {
        return new zzaba(this.zza, this.zzb, this.zzd, this.zzc, null, null);
    }

    public final zzabb zzb(zzacs zzacsVar) {
        zzagg.zzh(!this.zzc.containsKey("singleproc"), "There is already a factory registered for the ID %s", "singleproc");
        this.zzc.put("singleproc", zzacsVar);
        return this;
    }

    public final zzabb zzc(Executor executor) {
        this.zza = executor;
        return this;
    }

    public final zzabb zzd(zzyg zzygVar) {
        this.zzb = zzygVar;
        return this;
    }
}
