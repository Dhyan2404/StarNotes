package com.google.android.gms.internal.mlkit_vision_digital_ink;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes5.dex */
public final class zzbrp {
    Object zza;
    zzbrs zzb;
    private zzbru zzc = zzbru.zzd();
    private boolean zzd;

    private final void zze() {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    public final void finalize() {
        zzbru zzbruVar;
        zzbrs zzbrsVar = this.zzb;
        if (zzbrsVar != null && !zzbrsVar.isDone()) {
            zzbrsVar.zzb(new zzbrq("The completer object was garbage collected - this future would otherwise never complete. The tag was: ".concat(String.valueOf(this.zza))));
        }
        if (this.zzd || (zzbruVar = this.zzc) == null) {
            return;
        }
        zzbruVar.zzc(null);
    }

    public final void zza(@NonNull Runnable runnable, @NonNull Executor executor) {
        zzbru zzbruVar = this.zzc;
        if (zzbruVar != null) {
            zzbruVar.zzp(runnable, executor);
        }
    }

    public final void zzb() {
        this.zza = null;
        this.zzb = null;
        this.zzc.zzc(null);
    }

    public final boolean zzc(Object obj) {
        this.zzd = true;
        zzbrs zzbrsVar = this.zzb;
        boolean z = zzbrsVar != null && zzbrsVar.zza(null);
        if (z) {
            zze();
        }
        return z;
    }

    public final boolean zzd(@NonNull Throwable th) {
        this.zzd = true;
        zzbrs zzbrsVar = this.zzb;
        boolean z = zzbrsVar != null && zzbrsVar.zzb(th);
        if (z) {
            zze();
        }
        return z;
    }
}
