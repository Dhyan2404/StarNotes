package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;

/* loaded from: classes5.dex */
final class zzani extends zzann {
    private static final zzani zza = new zzani(zzann.zze());
    private final AtomicReference zzb;

    public zzani(zzann zzannVar) {
        this.zzb = new AtomicReference(zzannVar);
    }

    public static final zzani zzb() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzann
    public final zzamk zza() {
        return ((zzann) this.zzb.get()).zza();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzann
    public final zzaoa zzc() {
        return ((zzann) this.zzb.get()).zzc();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzann
    public final boolean zzd(String str, Level level, boolean z) {
        ((zzann) this.zzb.get()).zzd(str, level, z);
        return false;
    }
}
