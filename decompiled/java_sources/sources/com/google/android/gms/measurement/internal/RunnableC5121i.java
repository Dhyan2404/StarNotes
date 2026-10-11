package com.google.android.gms.measurement.internal;

/* renamed from: com.google.android.gms.measurement.internal.i */
/* loaded from: classes5.dex */
public final class RunnableC5121i implements Runnable {

    /* renamed from: e */
    public final /* synthetic */ com.google.android.gms.internal.measurement.zzdo f29684e;

    /* renamed from: f */
    public final /* synthetic */ zzjq f29685f;

    public RunnableC5121i(zzjq zzjqVar, com.google.android.gms.internal.measurement.zzdo zzdoVar) {
        this.f29684e = zzdoVar;
        this.f29685f = zzjqVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0069 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r7 = this;
            com.google.android.gms.measurement.internal.zzjq r0 = r7.f29685f
            com.google.android.gms.measurement.internal.zznb r0 = r0.zzp()
            com.sunia.HTREnginev2.hlp r1 = r0.zzk()
            com.google.android.gms.measurement.internal.zzje r1 = r1.m54580o()
            boolean r1 = r1.zzh()
            r2 = 0
            if (r1 != 0) goto L24
            com.google.android.gms.measurement.internal.zzgo r0 = r0.zzj()
            com.google.android.gms.measurement.internal.zzgq r0 = r0.zzv()
            java.lang.String r1 = "Analytics storage consent denied; will not get session id"
            r0.zza(r1)
        L22:
            r0 = r2
            goto L55
        L24:
            com.sunia.HTREnginev2.hlp r1 = r0.zzk()
            com.google.android.gms.common.util.Clock r3 = r0.zzb()
            long r3 = r3.currentTimeMillis()
            boolean r1 = r1.m54569d(r3)
            if (r1 != 0) goto L22
            com.sunia.HTREnginev2.hlp r1 = r0.zzk()
            com.google.android.gms.measurement.internal.zzhb r1 = r1.f72336r
            long r3 = r1.zza()
            r5 = 0
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 != 0) goto L47
            goto L22
        L47:
            com.sunia.HTREnginev2.hlp r0 = r0.zzk()
            com.google.android.gms.measurement.internal.zzhb r0 = r0.f72336r
            long r0 = r0.zza()
            java.lang.Long r0 = java.lang.Long.valueOf(r0)
        L55:
            if (r0 == 0) goto L69
            com.google.android.gms.measurement.internal.zzjq r1 = r7.f29685f
            com.google.android.gms.measurement.internal.zzhy r1 = r1.zzu
            com.google.android.gms.measurement.internal.zzos r1 = r1.zzt()
            com.google.android.gms.internal.measurement.zzdo r7 = r7.f29684e
            long r2 = r0.longValue()
            r1.zza(r7, r2)
            return
        L69:
            com.google.android.gms.internal.measurement.zzdo r0 = r7.f29684e     // Catch: android.os.RemoteException -> L6f
            r0.zza(r2)     // Catch: android.os.RemoteException -> L6f
            return
        L6f:
            r0 = move-exception
            com.google.android.gms.measurement.internal.zzjq r7 = r7.f29685f
            com.google.android.gms.measurement.internal.zzhy r7 = r7.zzu
            com.google.android.gms.measurement.internal.zzgo r7 = r7.zzj()
            com.google.android.gms.measurement.internal.zzgq r7 = r7.zzg()
            java.lang.String r1 = "getSessionId failed with exception"
            r7.zza(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.RunnableC5121i.run():void");
    }
}
