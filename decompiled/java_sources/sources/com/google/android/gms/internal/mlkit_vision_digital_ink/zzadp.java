package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class zzadp extends zzadj {
    private final zzaeb zza;

    public zzadp(String str, zzaeh zzaehVar, zzaeb zzaebVar, Thread thread) {
        super(str, zzaehVar, (Thread) null);
        zzagg.zze(zzaebVar.zzb());
        this.zza = zzaebVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final zzaeb zzf() {
        return this.zza;
    }

    public zzadp(String str, UUID uuid, zzaeb zzaebVar, Thread thread) {
        super(str, uuid, (Thread) null);
        zzagg.zze(zzaebVar.zzb());
        this.zza = zzaebVar;
    }
}
