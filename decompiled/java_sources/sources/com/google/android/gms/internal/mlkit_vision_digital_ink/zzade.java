package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzade implements Runnable {
    private zzaqs zza;
    private Executor zzb;

    public zzade(zzaqs zzaqsVar, Executor executor) {
        zzaqsVar.getClass();
        this.zza = zzaqsVar;
        executor.getClass();
        this.zzb = executor;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza = null;
        this.zzb = null;
    }
}
