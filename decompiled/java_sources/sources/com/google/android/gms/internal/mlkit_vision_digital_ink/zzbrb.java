package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbrb implements Runnable {
    final /* synthetic */ zzbrc zza;
    private final Runnable zzb;

    public zzbrb(zzbrc zzbrcVar, Runnable runnable) {
        this.zza = zzbrcVar;
        this.zzb = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.zzb.run();
        } finally {
            this.zza.zzb();
        }
    }
}
