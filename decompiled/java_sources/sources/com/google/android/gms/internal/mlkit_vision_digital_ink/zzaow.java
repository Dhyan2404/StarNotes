package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaow extends zzaoy {
    private zzaow(zzaou zzaouVar, @CheckForNull Character ch) {
        super(zzaouVar, ch);
        char[] cArr;
        cArr = zzaouVar.zze;
        zzagg.zze(cArr.length == 64);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoy, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzaox {
        bArr.getClass();
        CharSequence zze = zze(charSequence);
        if (!this.zzb.zzd(zze.length())) {
            throw new zzaox("Invalid input length " + zze.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < zze.length()) {
            int i3 = i + 1;
            int i4 = i2 + 1;
            int zzb = (this.zzb.zzb(zze.charAt(i)) << 18) | (this.zzb.zzb(zze.charAt(i3)) << 12);
            bArr[i2] = (byte) (zzb >>> 16);
            int i5 = i3 + 1;
            if (i5 < zze.length()) {
                int i6 = i5 + 1;
                int zzb2 = zzb | (this.zzb.zzb(zze.charAt(i5)) << 6);
                i2 = i4 + 1;
                bArr[i4] = (byte) ((zzb2 >>> 8) & 255);
                if (i6 < zze.length()) {
                    bArr[i2] = (byte) ((zzb2 | this.zzb.zzb(zze.charAt(i6))) & 255);
                    i2++;
                    i = i6 + 1;
                } else {
                    i = i6;
                }
            } else {
                i = i5;
                i2 = i4;
            }
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoy
    public final zzaoz zzb(zzaou zzaouVar, @CheckForNull Character ch) {
        return new zzaow(zzaouVar, ch);
    }

    public zzaow(String str, String str2, @CheckForNull Character ch) {
        this(new zzaou(str, str2.toCharArray()), ch);
    }
}
