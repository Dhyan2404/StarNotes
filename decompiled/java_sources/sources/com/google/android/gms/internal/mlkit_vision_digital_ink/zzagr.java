package com.google.android.gms.internal.mlkit_vision_digital_ink;

/* loaded from: classes5.dex */
final class zzagr extends zzagu {
    final /* synthetic */ zzags zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzagr(zzags zzagsVar, zzagw zzagwVar, CharSequence charSequence) {
        super(zzagwVar, charSequence);
        this.zza = zzagsVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagu
    public final int zzc(int i) {
        return i + this.zza.zza.length();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0026, code lost:
    
        r6 = r6 + 1;
     */
    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzagu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzd(int r6) {
        /*
            r5 = this;
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzags r0 = r5.zza
            java.lang.String r0 = r0.zza
            int r0 = r0.length()
            java.lang.CharSequence r1 = r5.zzb
            int r1 = r1.length()
            int r1 = r1 - r0
        Lf:
            if (r6 > r1) goto L2d
            r2 = 0
        L12:
            if (r2 >= r0) goto L2c
            java.lang.CharSequence r3 = r5.zzb
            int r4 = r2 + r6
            char r3 = r3.charAt(r4)
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzags r4 = r5.zza
            java.lang.String r4 = r4.zza
            char r4 = r4.charAt(r2)
            if (r3 == r4) goto L29
            int r6 = r6 + 1
            goto Lf
        L29:
            int r2 = r2 + 1
            goto L12
        L2c:
            return r6
        L2d:
            r5 = -1
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzagr.zzd(int):int");
    }
}
