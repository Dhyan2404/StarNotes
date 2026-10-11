package com.google.android.gms.internal.play_billing;

import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzfc implements Runnable {

    @CheckForNull
    zzff zza;

    public zzfc(zzff zzffVar) {
        this.zza = zzffVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
    
        r1 = r0.zzc;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            com.google.android.gms.internal.play_billing.zzff r0 = r9.zza
            if (r0 != 0) goto L6
            goto L84
        L6:
            com.google.android.gms.internal.play_billing.zzeu r1 = com.google.android.gms.internal.play_billing.zzff.zzr(r0)
            if (r1 == 0) goto L84
            r2 = 0
            r9.zza = r2
            boolean r9 = r1.isDone()
            if (r9 == 0) goto L19
            r0.zzp(r1)
            return
        L19:
            r9 = 1
            java.util.concurrent.ScheduledFuture r3 = com.google.android.gms.internal.play_billing.zzff.zzt(r0)     // Catch: java.lang.Throwable -> L7f
            com.google.android.gms.internal.play_billing.zzff.zzu(r0, r2)     // Catch: java.lang.Throwable -> L7f
            java.lang.String r4 = "Timed out"
            if (r3 == 0) goto L52
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L50
            long r5 = r3.getDelay(r5)     // Catch: java.lang.Throwable -> L50
            long r5 = java.lang.Math.abs(r5)     // Catch: java.lang.Throwable -> L50
            r7 = 10
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L52
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r3.<init>()     // Catch: java.lang.Throwable -> L50
            r3.append(r4)     // Catch: java.lang.Throwable -> L50
            java.lang.String r7 = " (timeout delayed by "
            r3.append(r7)     // Catch: java.lang.Throwable -> L50
            r3.append(r5)     // Catch: java.lang.Throwable -> L50
            java.lang.String r5 = " ms after scheduled time)"
            r3.append(r5)     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = r3.toString()     // Catch: java.lang.Throwable -> L50
            r4 = r3
            goto L52
        L50:
            r3 = move-exception
            goto L76
        L52:
            java.lang.String r3 = r1.toString()     // Catch: java.lang.Throwable -> L50
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L50
            r5.<init>()     // Catch: java.lang.Throwable -> L50
            r5.append(r4)     // Catch: java.lang.Throwable -> L50
            java.lang.String r6 = ": "
            r5.append(r6)     // Catch: java.lang.Throwable -> L50
            r5.append(r3)     // Catch: java.lang.Throwable -> L50
            java.lang.String r3 = r5.toString()     // Catch: java.lang.Throwable -> L50
            com.google.android.gms.internal.play_billing.zzfd r4 = new com.google.android.gms.internal.play_billing.zzfd     // Catch: java.lang.Throwable -> L7f
            r4.<init>(r3, r2)     // Catch: java.lang.Throwable -> L7f
            r0.zzo(r4)     // Catch: java.lang.Throwable -> L7f
            r1.cancel(r9)
            return
        L76:
            com.google.android.gms.internal.play_billing.zzfd r5 = new com.google.android.gms.internal.play_billing.zzfd     // Catch: java.lang.Throwable -> L7f
            r5.<init>(r4, r2)     // Catch: java.lang.Throwable -> L7f
            r0.zzo(r5)     // Catch: java.lang.Throwable -> L7f
            throw r3     // Catch: java.lang.Throwable -> L7f
        L7f:
            r0 = move-exception
            r1.cancel(r9)
            throw r0
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzfc.run():void");
    }
}
