package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.UUID;

/* loaded from: classes5.dex */
abstract class zzadj implements zzaeh {
    private final zzaeh zza;
    private final UUID zzb;
    private final String zzc;

    public zzadj(String str, UUID uuid, Thread thread) {
        this.zzc = str;
        this.zza = null;
        this.zzb = uuid;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaei, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzaeu.zzh(this);
    }

    public final String toString() {
        return zzaeu.zzf(this);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final zzaeh zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final String zzb() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaeh
    public final UUID zzc() {
        return this.zzb;
    }

    public zzadj(String str, zzaeh zzaehVar, Thread thread) {
        this.zzc = str;
        this.zza = zzaehVar;
        this.zzb = zzaehVar.zzc();
    }
}
