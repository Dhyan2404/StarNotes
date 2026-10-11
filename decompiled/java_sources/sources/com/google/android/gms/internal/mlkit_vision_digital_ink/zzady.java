package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
public final class zzady implements Runnable, zzaei {
    private zzaeh zza;
    private zzaeh zzb;
    private final boolean zzc = zzxz.zzb(null);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzady(zzaeh zzaehVar, boolean z) {
        this.zzf = false;
        this.zza = zzaehVar;
        this.zzb = zzaehVar;
        this.zzf = z;
    }

    private final void zzb() {
        this.zzd = true;
        this.zza.zzh(this.zzc && !this.zze && zzxz.zzb(Thread.currentThread()));
        this.zza = null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaei, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        zzaeh zzaehVar = this.zzb;
        try {
            this.zzb = null;
            if (!this.zze) {
                if (this.zzd) {
                    throw new IllegalStateException("Span was already closed!");
                }
                zzb();
            }
            if (zzaehVar != null) {
                zzaehVar.close();
            }
            if (this.zzf) {
                zzaeu.zzc(zzadw.zza);
            }
        } catch (Throwable th) {
            if (zzaehVar != null) {
                try {
                    zzaehVar.close();
                } catch (Throwable th2) {
                    try {
                        Throwable.class.getDeclaredMethod("addSuppressed", Throwable.class).invoke(th, th2);
                    } catch (Exception unused) {
                    }
                }
            }
            throw th;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzd && this.zze) {
            zzb();
        } else {
            zzxz.zza().post(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzadx
                @Override // java.lang.Runnable
                public final void run() {
                    throw new IllegalStateException("Span was closed by an invalid call to SpanEndSignal.run()");
                }
            });
        }
    }

    public final zzasi zza(zzasi zzasiVar) {
        if (this.zzd) {
            throw new IllegalStateException("Span was already closed. Did you attach it to a future after calling Tracer.endSpan()?");
        }
        if (this.zze) {
            throw new IllegalStateException("Signal is already attached to future");
        }
        this.zze = true;
        this.zza.zzi(3);
        zzasiVar.zzp(this, zzasq.zzb());
        return zzasiVar;
    }
}
