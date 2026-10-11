package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes5.dex */
public final class zzamo {
    private static final zzams zza = new zzaml();
    private static final zzamr zzb = new zzamm();
    private final zzams zze;
    private final Map zzc = new HashMap();
    private final Map zzd = new HashMap();
    private zzamr zzf = null;

    public final zzamo zza(zzamr zzamrVar) {
        this.zzf = zzamrVar;
        return this;
    }

    public final zzamt zzd() {
        return new zzamq(this, null);
    }

    public final void zzg(zzamf zzamfVar) {
        zzaoc.zza(zzamfVar, "key");
        if (!zzamfVar.zzb()) {
            zzams zzamsVar = zza;
            zzaoc.zza(zzamfVar, "key");
            this.zzd.remove(zzamfVar);
            this.zzc.put(zzamfVar, zzamsVar);
            return;
        }
        zzamr zzamrVar = zzb;
        zzaoc.zza(zzamfVar, "key");
        if (!zzamfVar.zzb()) {
            throw new IllegalArgumentException("key must be repeating");
        }
        this.zzc.remove(zzamfVar);
        this.zzd.put(zzamfVar, zzamrVar);
    }
}
