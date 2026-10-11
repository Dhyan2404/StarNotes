package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.util.Set;
import java.util.logging.Level;

/* loaded from: classes5.dex */
public final class zzanj implements zzand {
    private final String zza;
    private final Level zzb;
    private final Set zzc;
    private final zzamt zzd;

    private zzanj(String str, boolean z, boolean z2, Level level, boolean z3, Set set, zzamt zzamtVar) {
        this.zza = "";
        this.zzb = level;
        this.zzc = set;
        this.zzd = zzamtVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzand
    public final zzami zza(String str) {
        return new zzanm(this.zza, str, true, false, this.zzb, this.zzc, this.zzd, null);
    }

    public final zzanj zzb(boolean z) {
        return new zzanj(this.zza, true, false, Level.OFF, false, this.zzc, this.zzd);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzanj() {
        /*
            r8 = this;
            java.util.logging.Level r4 = java.util.logging.Level.ALL
            java.util.Set r6 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzanm.zzc()
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzamt r7 = com.google.android.gms.internal.mlkit_vision_digital_ink.zzanm.zzb()
            java.lang.String r1 = ""
            r2 = 1
            r3 = 0
            r5 = 0
            r0 = r8
            r0.<init>(r1, r2, r3, r4, r5, r6, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzanj.<init>():void");
    }
}
