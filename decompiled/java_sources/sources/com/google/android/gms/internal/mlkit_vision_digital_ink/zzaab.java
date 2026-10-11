package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes5.dex */
public final class zzaab implements zzyf {
    private boolean zza = false;

    private zzaab() {
    }

    public static zzaab zza() {
        return new zzaab();
    }

    public final zzaab zzc() {
        this.zza = true;
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    /* renamed from: zzd, reason: merged with bridge method [inline-methods] */
    public final InputStream zzb(zzye zzyeVar) throws IOException {
        InputStream zzg = zzyeVar.zzd().zzg(zzyeVar.zza());
        if (this.zza) {
            zzg = new BufferedInputStream(zzg);
        }
        return (InputStream) zzyeVar.zzf(zzg).get(0);
    }
}
