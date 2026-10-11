package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.Closeable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes5.dex */
public final class zzzx implements Closeable {
    private final zzzw zza;
    private final long zzb;
    private long zzc = System.currentTimeMillis();
    private final zzwm zzd;

    public zzzx(zzzw zzzwVar, zzwm zzwmVar, long j, TimeUnit timeUnit, byte[] bArr) {
        this.zza = zzzwVar;
        this.zzd = zzwmVar;
        this.zzb = timeUnit.toMillis(10L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.zza.zzc();
    }

    public final void zza(byte[] bArr, int i, int i2) {
        this.zza.zzb(i2);
        if (System.currentTimeMillis() - this.zzc >= this.zzb) {
            this.zza.zzc();
            this.zzc = System.currentTimeMillis();
        }
    }
}
