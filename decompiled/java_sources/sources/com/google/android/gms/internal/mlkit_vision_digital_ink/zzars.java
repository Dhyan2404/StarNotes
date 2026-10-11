package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzars implements Runnable {
    final Future zza;
    final zzarr zzb;

    public zzars(Future future, zzarr zzarrVar) {
        this.zza = future;
        this.zzb = zzarrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Object obj = this.zza;
        if ((obj instanceof zzata) && (zza = zzatb.zza((zzata) obj)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzarx.zzp(this.zza));
        } catch (Error | RuntimeException e) {
            this.zzb.zza(e);
        } catch (ExecutionException e2) {
            this.zzb.zza(e2.getCause());
        }
    }

    public final String toString() {
        zzafy zzb = zzafz.zzb(this);
        zzb.zzc(this.zzb);
        return zzb.toString();
    }
}
