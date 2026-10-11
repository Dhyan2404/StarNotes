package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;
import org.apache.commons.collections4.IteratorUtils;

/* loaded from: classes5.dex */
abstract class zzapy extends zzarl implements Runnable {

    @CheckForNull
    zzasi zza;

    @CheckForNull
    Class zzb;

    @CheckForNull
    Object zzc;

    public zzapy(zzasi zzasiVar, Class cls, Object obj) {
        this.zza = zzasiVar;
        this.zzb = cls;
        this.zzc = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007e  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r9 = this;
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasi r0 = r9.zza
            java.lang.Class r1 = r9.zzb
            java.lang.Object r2 = r9.zzc
            r3 = 1
            r4 = 0
            if (r0 != 0) goto Lc
            r5 = r3
            goto Ld
        Lc:
            r5 = r4
        Ld:
            if (r1 != 0) goto L11
            r6 = r3
            goto L12
        L11:
            r6 = r4
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            goto L17
        L16:
            r3 = r4
        L17:
            r3 = r3 | r5
            if (r3 != 0) goto La5
            boolean r3 = r9.isCancelled()
            if (r3 == 0) goto L22
            goto La5
        L22:
            r3 = 0
            r9.zza = r3
            boolean r4 = r0 instanceof com.google.android.gms.internal.mlkit_vision_digital_ink.zzata     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            if (r4 == 0) goto L31
            r4 = r0
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzata r4 = (com.google.android.gms.internal.mlkit_vision_digital_ink.zzata) r4     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            java.lang.Throwable r4 = r4.zzk()     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L32
        L31:
            r4 = r3
        L32:
            if (r4 != 0) goto L3a
            java.lang.Object r5 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzarx.zzp(r0)     // Catch: java.lang.Throwable -> L39 java.util.concurrent.ExecutionException -> L3c
            goto L78
        L39:
            r4 = move-exception
        L3a:
            r5 = r3
            goto L78
        L3c:
            r4 = move-exception
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L76
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Future type "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = " threw "
            r7.append(r6)
            r7.append(r4)
            java.lang.String r4 = " without a cause"
            r7.append(r4)
            java.lang.String r4 = r7.toString()
            r5.<init>(r4)
        L76:
            r4 = r5
            goto L3a
        L78:
            if (r4 != 0) goto L7e
            r9.zzs(r5)
            return
        L7e:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto La2
            java.lang.Object r0 = r9.zzd(r2, r4)     // Catch: java.lang.Throwable -> L90
            r9.zzb = r3
            r9.zzc = r3
            r9.zze(r0)
            return
        L90:
            r0 = move-exception
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzasr.zza(r0)     // Catch: java.lang.Throwable -> L9c
            r9.zzt(r0)     // Catch: java.lang.Throwable -> L9c
            r9.zzb = r3
            r9.zzc = r3
            return
        L9c:
            r0 = move-exception
            r9.zzb = r3
            r9.zzc = r3
            throw r0
        La2:
            r9.zzc(r0)
        La5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzapy.run():void");
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    @CheckForNull
    public final String zza() {
        String str;
        zzasi zzasiVar = this.zza;
        Class cls = this.zzb;
        Object obj = this.zzc;
        String zza = super.zza();
        if (zzasiVar != null) {
            str = "inputFuture=[" + zzasiVar.toString() + "], ";
        } else {
            str = "";
        }
        if (cls == null || obj == null) {
            if (zza != null) {
                return str.concat(zza);
            }
            return null;
        }
        return str + "exceptionType=[" + cls.toString() + "], fallback=[" + obj.toString() + IteratorUtils.f104924b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaqa
    public final void zzb() {
        zzr(this.zza);
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
    }

    public abstract Object zzd(Object obj, Throwable th) throws Exception;

    public abstract void zze(Object obj);
}
