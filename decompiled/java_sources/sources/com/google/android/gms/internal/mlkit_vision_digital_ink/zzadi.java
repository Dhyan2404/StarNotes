package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes5.dex */
public final class zzadi {
    private final zzade zza;
    private final AtomicLong zzb = new AtomicLong(zzi(Integer.MIN_VALUE, Integer.MIN_VALUE));
    private final AtomicReference zzc = new AtomicReference(null);
    private final AtomicReference zzd = new AtomicReference(null);
    private final Executor zze = zzasq.zzc(zzasq.zzb());
    private final zzasw zzf;

    public zzadi(zzaqs zzaqsVar, Executor executor) {
        zzasw zzd = zzasw.zzd();
        this.zzf = zzd;
        zzade zzadeVar = new zzade(zzaqsVar, executor);
        this.zza = zzadeVar;
        zzd.zzp(zzadeVar, zzasq.zzb());
    }

    public static /* bridge */ /* synthetic */ boolean zzg(zzadi zzadiVar) {
        long j;
        int i;
        int i2;
        boolean z;
        do {
            j = zzadiVar.zzb.get();
            i = (int) j;
            long j2 = j >>> 32;
            if (i == Integer.MIN_VALUE) {
                throw new AssertionError("Refcount is: " + j);
            }
            i2 = (int) j2;
            z = i == -2147483647;
            if (z) {
                i2++;
            }
        } while (!zzadiVar.zzb.compareAndSet(j, zzi(i2, i - 1)));
        return z;
    }

    private static long zzi(int i, int i2) {
        return (i2 & 4294967295L) | (i << 32);
    }

    /* renamed from: zzj */
    public final zzasi zzc(int i) {
        zzadh zzadhVar;
        zzaqs zzaqsVar;
        Executor executor;
        int i2;
        if (((int) (this.zzb.get() >>> 32)) > i) {
            return zzarx.zzf();
        }
        zzadh zzadhVar2 = new zzadh(i);
        do {
            zzadhVar = (zzadh) this.zzc.get();
            if (zzadhVar != null) {
                i2 = zzadhVar.zza;
                if (i2 > i) {
                    return zzarx.zzf();
                }
            }
        } while (!zzada.zza(this.zzc, zzadhVar, zzadhVar2));
        if (((int) (this.zzb.get() >>> 32)) > i) {
            zzadhVar2.cancel(true);
            zzada.zza(this.zzc, zzadhVar2, null);
            return zzadhVar2;
        }
        zzade zzadeVar = this.zza;
        zzaqsVar = zzadeVar.zza;
        executor = zzadeVar.zzb;
        if (zzaqsVar == null || executor == null) {
            zzadhVar2.zzc(this.zzf);
        } else {
            zzadhVar2.zzc(zzarx.zzm(zzaeq.zzb(zzaqsVar), executor));
        }
        return zzadhVar2;
    }

    public final zzasi zzb() {
        long j;
        final int i;
        if (this.zzf.isDone()) {
            return this.zzf;
        }
        do {
            j = this.zzb.get();
            i = (int) (j >>> 32);
        } while (!this.zzb.compareAndSet(j, zzi(i, ((int) j) + 1)));
        final zzasw zzd = zzasw.zzd();
        zzasi zzasiVar = (zzasi) this.zzd.getAndSet(zzd);
        zzd.zzc(zzasiVar == null ? zzarx.zzm(zzaeq.zzb(new zzaqs() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzadc
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqs
            public final zzasi zza() {
                return zzadi.this.zzc(i);
            }
        }), zzasq.zzb()) : zzarx.zze(zzasiVar, Throwable.class, zzaeq.zzc(new zzaqt() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzadd
            @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqt
            public final zzasi zza(Object obj) {
                return zzadi.this.zzd(i, (Throwable) obj);
            }
        }), this.zze));
        final zzadg zzadgVar = new zzadg(this, i, null);
        zzd.zzp(new Runnable() { // from class: com.google.android.gms.internal.mlkit_vision_digital_ink.zzadb
            @Override // java.lang.Runnable
            public final void run() {
                zzadi.this.zzf(zzd, zzadgVar);
            }
        }, zzasq.zzb());
        return zzadgVar;
    }

    public final /* synthetic */ zzasi zzd(int i, Throwable th) throws Exception {
        return zzc(i);
    }

    public final /* synthetic */ void zzf(zzasw zzaswVar, zzadg zzadgVar) {
        try {
            this.zzf.zzs(zzarx.zzp(zzaswVar));
            zzadgVar.zzc(this.zzf);
        } catch (Throwable unused) {
            zzadgVar.zzc(zzaswVar);
        }
    }

    public final boolean zzh() {
        return this.zzf.isDone();
    }
}
