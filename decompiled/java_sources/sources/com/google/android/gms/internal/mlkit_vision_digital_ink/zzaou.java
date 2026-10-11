package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.math.RoundingMode;
import java.util.Arrays;
import javax.annotation.CheckForNull;

/* loaded from: classes5.dex */
final class zzaou {
    final int zza;
    final int zzb;
    final int zzc;
    private final String zzd;
    private final char[] zze;
    private final byte[] zzf;
    private final boolean[] zzg;
    private final boolean zzh;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzaou(java.lang.String r10, char[] r11) {
        /*
            r9 = this;
            r0 = 128(0x80, float:1.794E-43)
            byte[] r1 = new byte[r0]
            r2 = -1
            java.util.Arrays.fill(r1, r2)
            r3 = 0
            r4 = r3
        La:
            int r5 = r11.length
            if (r4 >= r5) goto L2b
            char r5 = r11[r4]
            r6 = 1
            if (r5 >= r0) goto L14
            r7 = r6
            goto L15
        L14:
            r7 = r3
        L15:
            java.lang.String r8 = "Non-ASCII character: %s"
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzagg.zzg(r7, r8, r5)
            r7 = r1[r5]
            if (r7 != r2) goto L1f
            goto L20
        L1f:
            r6 = r3
        L20:
            java.lang.String r7 = "Duplicate character: %s"
            com.google.android.gms.internal.mlkit_vision_digital_ink.zzagg.zzg(r6, r7, r5)
            byte r6 = (byte) r4
            r1[r5] = r6
            int r4 = r4 + 1
            goto La
        L2b:
            r9.<init>(r10, r11, r1, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_vision_digital_ink.zzaou.<init>(java.lang.String, char[]):void");
    }

    public final boolean equals(@CheckForNull Object obj) {
        if (obj instanceof zzaou) {
            zzaou zzaouVar = (zzaou) obj;
            if (this.zzh == zzaouVar.zzh && Arrays.equals(this.zze, zzaouVar.zze)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.zze) + (true != this.zzh ? 1237 : 1231);
    }

    public final String toString() {
        return this.zzd;
    }

    public final char zza(int i) {
        return this.zze[i];
    }

    public final int zzb(char c) throws zzaox {
        if (c > 127) {
            throw new zzaox("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c))));
        }
        byte b = this.zzf[c];
        if (b != -1) {
            return b;
        }
        if (c <= ' ' || c == 127) {
            throw new zzaox("Unrecognized character: 0x".concat(String.valueOf(Integer.toHexString(c))));
        }
        throw new zzaox("Unrecognized character: " + c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v12 */
    public final zzaou zzc() {
        boolean z;
        int i = 0;
        for (char c : this.zze) {
            if (zzafd.zze(c)) {
                char[] cArr = this.zze;
                int length = cArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 >= length) {
                        z = false;
                        break;
                    }
                    if (zzafd.zzd(cArr[i2])) {
                        z = true;
                        break;
                    }
                    i2++;
                }
                zzagg.zzk(!z, "Cannot call lowerCase() on a mixed-case alphabet");
                char[] cArr2 = new char[this.zze.length];
                while (true) {
                    char[] cArr3 = this.zze;
                    if (i >= cArr3.length) {
                        break;
                    }
                    char c2 = cArr3[i];
                    if (zzafd.zze(c2)) {
                        c2 ^= 32;
                    }
                    cArr2[i] = (char) c2;
                    i++;
                }
                zzaou zzaouVar = new zzaou(this.zzd.concat(".lowerCase()"), cArr2);
                if (!this.zzh || zzaouVar.zzh) {
                    return zzaouVar;
                }
                byte[] bArr = zzaouVar.zzf;
                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                for (int i3 = 65; i3 <= 90; i3++) {
                    int i4 = i3 | 32;
                    byte[] bArr2 = zzaouVar.zzf;
                    byte b = bArr2[i3];
                    byte b2 = bArr2[i4];
                    if (b == -1) {
                        copyOf[i3] = b2;
                    } else {
                        char c3 = (char) i3;
                        char c4 = (char) i4;
                        if (b2 != -1) {
                            throw new IllegalStateException(zzagz.zzb("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                        }
                        copyOf[i4] = b;
                    }
                }
                return new zzaou(zzaouVar.zzd.concat(".ignoreCase()"), zzaouVar.zze, copyOf, true);
            }
        }
        return this;
    }

    public final boolean zzd(int i) {
        return this.zzg[i % this.zzb];
    }

    public final boolean zze(char c) {
        byte[] bArr = this.zzf;
        return bArr.length > 61 && bArr[61] != -1;
    }

    private zzaou(String str, char[] cArr, byte[] bArr, boolean z) {
        this.zzd = str;
        cArr.getClass();
        this.zze = cArr;
        try {
            int zzb = zzapr.zzb(cArr.length, RoundingMode.UNNECESSARY);
            this.zza = zzb;
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(zzb);
            int i = 1 << (3 - numberOfTrailingZeros);
            this.zzb = i;
            this.zzc = zzb >> numberOfTrailingZeros;
            this.zzf = bArr;
            boolean[] zArr = new boolean[i];
            for (int i2 = 0; i2 < this.zzc; i2++) {
                zArr[zzapr.zza(i2 * 8, this.zza, RoundingMode.CEILING)] = true;
            }
            this.zzg = zArr;
            this.zzh = z;
        } catch (ArithmeticException e) {
            throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
        }
    }
}
