package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.File;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes5.dex */
public final class zzaaa implements zzyf {
    private static final AtomicInteger zza = new AtomicInteger();
    private boolean zzb = false;

    private zzaaa() {
    }

    public static zzaaa zza() {
        return new zzaaa();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzyf
    public final /* bridge */ /* synthetic */ Object zzb(zzye zzyeVar) throws IOException {
        if (this.zzb) {
            if (zzyeVar.zzh()) {
                throw new zzzm("Short circuit would skip transforms.");
            }
            return zzyeVar.zzd().zzf(zzyeVar.zza());
        }
        zzzl zza2 = zzzl.zza(zzaab.zza().zzb(zzyeVar));
        try {
            if (!(zza2.zzb() instanceof zzzg)) {
                throw new IOException("Not convertible and fallback to pipe is disabled.");
            }
            File zza3 = ((zzzg) zza2.zzb()).zza();
            zza2.close();
            return zza3;
        } catch (Throwable th) {
            try {
                zza2.close();
            } catch (Throwable th2) {
                try {
                    Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                } catch (Exception unused) {
                }
            }
            throw th;
        }
    }

    public final zzaaa zzc() {
        this.zzb = true;
        return this;
    }
}
