package com.google.android.gms.internal.mlkit_vision_digital_ink;

import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaov extends zzaoy {
    final char[] zza;

    private zzaov(zzaou zzaouVar) {
        super(zzaouVar, null);
        char[] cArr;
        this.zza = new char[512];
        cArr = zzaouVar.zze;
        zzagg.zze(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            this.zza[i] = zzaouVar.zza(i >>> 4);
            this.zza[i | 256] = zzaouVar.zza(i & 15);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoy, com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoz
    public final int zza(byte[] bArr, CharSequence charSequence) throws zzaox {
        bArr.getClass();
        if (charSequence.length() % 2 == 1) {
            throw new zzaox("Invalid input length " + charSequence.length());
        }
        int i = 0;
        int i2 = 0;
        while (i < charSequence.length()) {
            bArr[i2] = (byte) ((this.zzb.zzb(charSequence.charAt(i)) << 4) | this.zzb.zzb(charSequence.charAt(i + 1)));
            i += 2;
            i2++;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_digital_ink.zzaoy
    public final zzaoz zzb(zzaou zzaouVar, @CheckForNull Character ch) {
        return new zzaov(zzaouVar);
    }

    public zzaov(String str, String str2) {
        this(new zzaou("base16()", "0123456789ABCDEF".toCharArray()));
    }
}
