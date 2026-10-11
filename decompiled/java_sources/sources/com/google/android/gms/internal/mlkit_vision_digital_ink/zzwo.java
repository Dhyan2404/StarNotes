package com.google.android.gms.internal.mlkit_vision_digital_ink;

import android.content.Context;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes5.dex */
final class zzwo implements zzzw {
    private final Context zza;
    private final zzux zzb;
    private final zzdl zzc;
    private final AtomicLong zzd = new AtomicLong();
    private final AtomicLong zze = new AtomicLong();

    public zzwo(Context context, zzux zzuxVar, zzdl zzdlVar) {
        this.zza = context;
        this.zzb = zzuxVar;
        this.zzc = zzdlVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0047  */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzw
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzb(int r8) {
        /*
            r7 = this;
            java.lang.String r0 = "NetworkUsageMonitor"
            android.content.Context r1 = r7.zza
            r2 = 0
            java.lang.String r3 = "connectivity"
            java.lang.Object r1 = r1.getSystemService(r3)     // Catch: java.lang.SecurityException -> Le
            android.net.ConnectivityManager r1 = (android.net.ConnectivityManager) r1     // Catch: java.lang.SecurityException -> Le
            goto L14
        Le:
            java.lang.String r1 = "%s: Couldn't retrieve ConnectivityManager."
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzf(r1, r0)
            r1 = r2
        L14:
            if (r1 != 0) goto L17
            goto L1b
        L17:
            android.net.NetworkInfo r2 = r1.getActiveNetworkInfo()
        L1b:
            r1 = 1
            r3 = 0
            if (r2 != 0) goto L26
            java.lang.String r2 = "%s: Fail to get network type "
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzf(r2, r0)
        L24:
            r2 = r3
            goto L3e
        L26:
            int r4 = r2.getType()
            if (r4 == r1) goto L24
            int r4 = r2.getType()
            r5 = 9
            if (r4 == r5) goto L24
            int r2 = r2.getType()
            r4 = 17
            if (r2 != r4) goto L3d
            goto L24
        L3d:
            r2 = r1
        L3e:
            if (r2 == 0) goto L47
            java.util.concurrent.atomic.AtomicLong r4 = r7.zze
            long r5 = (long) r8
            r4.getAndAdd(r5)
            goto L4d
        L47:
            java.util.concurrent.atomic.AtomicLong r4 = r7.zzd
            long r5 = (long) r8
            r4.getAndAdd(r5)
        L4d:
            r4 = 6
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r3] = r0
            if (r1 == r2) goto L57
            java.lang.String r0 = "wifi"
            goto L59
        L57:
            java.lang.String r0 = "cellular"
        L59:
            r4[r1] = r0
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzdl r0 = r7.zzc
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzdu r0 = r0.zzh()
            java.lang.String r0 = r0.zzg()
            r1 = 2
            r4[r1] = r0
            r0 = 3
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)
            r4[r0] = r8
            java.util.concurrent.atomic.AtomicLong r8 = r7.zzd
            long r0 = r8.get()
            java.lang.Long r8 = java.lang.Long.valueOf(r0)
            r0 = 4
            r4[r0] = r8
            java.util.concurrent.atomic.AtomicLong r7 = r7.zze
            long r7 = r7.get()
            java.lang.Long r7 = java.lang.Long.valueOf(r7)
            r8 = 5
            r4[r8] = r7
            java.lang.String r7 = "%s: Received data (%s) for fileGroup = %s, len = %d, wifiCounter = %d, cellularCounter = %d"
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzuw.zzl(r7, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzwo.zzb(int):void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzzw
    public final void zzc() {
        zzux zzuxVar = this.zzb;
        zzdk zzdkVar = (zzdk) this.zzc.zzO();
        zzdkVar.zzb(this.zze.getAndSet(0L));
        zzdkVar.zzg(this.zzd.getAndSet(0L));
        zzasi zzc = zzuxVar.zzc((zzdl) zzdkVar.zzx());
        zzwn zzwnVar = new zzwn(this);
        zzarx.zzr(zzc, zzaeq.zzd(zzwnVar), zzasq.zzb());
    }
}
