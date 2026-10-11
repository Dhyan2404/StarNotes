package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Future;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzart implements Runnable {

    @CheckForNull
    zzasi zza;

    @CheckForNull
    Future zzb;

    public zzart(zzasi zzasiVar, Future future) {
        this.zza = zzasiVar;
        this.zzb = future;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzarx.zzt(this.zza, this.zzb);
        this.zza = null;
        this.zzb = null;
    }
}
