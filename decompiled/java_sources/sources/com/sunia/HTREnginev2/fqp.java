package com.sunia.HTREnginev2;

import com.sunia.HTREnginev2.fqp;
import com.sunia.HTREnginev2.gqp;

/* loaded from: classes5.dex */
public final class fqp implements Runnable {

    /* renamed from: e */
    public long f70276e;

    /* renamed from: f */
    public long f70277f;

    /* renamed from: g */
    public final /* synthetic */ gqp f70278g;

    public fqp(gqp gqpVar, long j, long j2) {
        this.f70278g = gqpVar;
        this.f70276e = j;
        this.f70277f = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f70278g.f71379b.zzl().zzb(new Runnable() { // from class: com.google.android.gms.measurement.internal.zzni
            @Override // java.lang.Runnable
            public final void run() {
                fqp fqpVar = fqp.this;
                gqp gqpVar = fqpVar.f70278g;
                long j = fqpVar.f70276e;
                long j2 = fqpVar.f70277f;
                gqpVar.f71379b.zzt();
                gqpVar.f71379b.zzj().zzc().zza("Application going to the background");
                gqpVar.f71379b.zzk().f72338t.zza(true);
                gqpVar.f71379b.zza(true);
                if (!gqpVar.f71379b.zze().zzw()) {
                    if (gqpVar.f71379b.zze().zza(zzbh.zzcp)) {
                        gqpVar.f71379b.zza(false, false, j2);
                        gqpVar.f71379b.zzb.m22277e(j2);
                    } else {
                        gqpVar.f71379b.zzb.m22277e(j2);
                        gqpVar.f71379b.zza(false, false, j2);
                    }
                }
                gqpVar.f71379b.zzj().zzo().zza("Application backgrounded at: timestamp_millis", Long.valueOf(j));
                if (gqpVar.f71379b.zze().zza(zzbh.zzdd)) {
                    gqpVar.f71379b.zzm().zzam();
                }
            }
        });
    }
}
