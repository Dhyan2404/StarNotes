package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaif extends zzaic {
    private final byte[] zze;
    private final boolean zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;

    private final void zzaa() {
        int i = this.zzg + this.zzh;
        this.zzg = i;
        int i2 = i - this.zzj;
        int i3 = this.zzl;
        if (i2 <= i3) {
            this.zzh = 0;
            return;
        }
        int i4 = i2 - i3;
        this.zzh = i4;
        this.zzg = i - i4;
    }

    private final byte zzv() throws IOException {
        int i = this.zzi;
        if (i == this.zzg) {
            throw zzajk.zzi();
        }
        byte[] bArr = this.zze;
        this.zzi = i + 1;
        return bArr[i];
    }

    private final int zzw() throws IOException {
        int i = this.zzi;
        if (this.zzg - i < 4) {
            throw zzajk.zzi();
        }
        byte[] bArr = this.zze;
        this.zzi = i + 4;
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24);
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzx() throws java.io.IOException {
        /*
            r5 = this;
            int r0 = r5.zzi
            int r1 = r5.zzg
            if (r1 == r0) goto L6b
            byte[] r2 = r5.zze
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.zzi = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.zzi = r1
            return r0
        L6b:
            long r0 = r5.zzm()
            int r5 = (int) r0
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzaif.zzx():int");
    }

    private final long zzy() throws IOException {
        int i = this.zzi;
        if (this.zzg - i < 8) {
            throw zzajk.zzi();
        }
        byte[] bArr = this.zze;
        this.zzi = i + 8;
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L40;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long zzz() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 189
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzaif.zzz():long");
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final double zza() throws IOException {
        return Double.longBitsToDouble(zzy());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final float zzb() throws IOException {
        return Float.intBitsToFloat(zzw());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzc() {
        return this.zzi - this.zzj;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzd() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zze() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzf() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzg() throws IOException {
        return zzw();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzh() throws IOException {
        return zzaic.zza(zzx());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzi() throws IOException {
        if (zzt()) {
            this.zzk = 0;
            return 0;
        }
        int zzx = zzx();
        this.zzk = zzx;
        if ((zzx >>> 3) != 0) {
            return zzx;
        }
        throw zzajk.zzc();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzj() throws IOException {
        return zzx();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzk() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzl() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzm() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            j |= (r3 & Byte.MAX_VALUE) << i;
            if ((zzv() & 128) == 0) {
                return j;
            }
        }
        throw zzajk.zze();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzn() throws IOException {
        return zzy();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzo() throws IOException {
        return zzaic.zza(zzz());
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final long zzp() throws IOException {
        return zzz();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final zzaho zzq() throws IOException {
        byte[] bArr;
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzx <= i - i2) {
                zzaho zza = zzaho.zza(this.zze, i2, zzx);
                this.zzi += zzx;
                return zza;
            }
        }
        if (zzx == 0) {
            return zzaho.zza;
        }
        if (zzx > 0) {
            int i3 = this.zzg;
            int i4 = this.zzi;
            if (zzx <= i3 - i4) {
                int i5 = zzx + i4;
                this.zzi = i5;
                bArr = Arrays.copyOfRange(this.zze, i4, i5);
                return zzaho.zzb(bArr);
            }
        }
        if (zzx > 0) {
            throw zzajk.zzi();
        }
        if (zzx != 0) {
            throw zzajk.zzf();
        }
        bArr = zzajh.zzb;
        return zzaho.zzb(bArr);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final String zzr() throws IOException {
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzx <= i - i2) {
                String str = new String(this.zze, i2, zzx, zzajh.zza);
                this.zzi += zzx;
                return str;
            }
        }
        if (zzx == 0) {
            return "";
        }
        if (zzx < 0) {
            throw zzajk.zzf();
        }
        throw zzajk.zzi();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final String zzs() throws IOException {
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzx <= i - i2) {
                String zzb = zzamn.zzb(this.zze, i2, zzx);
                this.zzi += zzx;
                return zzb;
            }
        }
        if (zzx == 0) {
            return "";
        }
        if (zzx <= 0) {
            throw zzajk.zzf();
        }
        throw zzajk.zzi();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final boolean zzt() throws IOException {
        return this.zzi == this.zzg;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final boolean zzu() throws IOException {
        return zzz() != 0;
    }

    private zzaif(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.zzl = Integer.MAX_VALUE;
        this.zze = bArr;
        this.zzg = i2 + i;
        this.zzi = i;
        this.zzj = i;
        this.zzf = z;
    }

    private final void zzf(int i) throws IOException {
        if (i >= 0) {
            int i2 = this.zzg;
            int i3 = this.zzi;
            if (i <= i2 - i3) {
                this.zzi = i3 + i;
                return;
            }
        }
        if (i < 0) {
            throw zzajk.zzf();
        }
        throw zzajk.zzi();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzb(int i) throws zzajk {
        if (i >= 0) {
            int zzc = i + zzc();
            if (zzc >= 0) {
                int i2 = this.zzl;
                if (zzc <= i2) {
                    this.zzl = zzc;
                    zzaa();
                    return i2;
                }
                throw zzajk.zzi();
            }
            throw zzajk.zzg();
        }
        throw zzajk.zzf();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final void zzc(int i) throws zzajk {
        if (this.zzk != i) {
            throw zzajk.zzb();
        }
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final void zzd(int i) {
        this.zzl = i;
        zzaa();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final boolean zze(int i) throws IOException {
        int zzi;
        int i2 = i & 7;
        int i3 = 0;
        if (i2 == 0) {
            if (this.zzg - this.zzi >= 10) {
                while (i3 < 10) {
                    byte[] bArr = this.zze;
                    int i4 = this.zzi;
                    this.zzi = i4 + 1;
                    if (bArr[i4] < 0) {
                        i3++;
                    }
                }
                throw zzajk.zze();
            }
            while (i3 < 10) {
                if (zzv() < 0) {
                    i3++;
                }
            }
            throw zzajk.zze();
            return true;
        }
        if (i2 == 1) {
            zzf(8);
            return true;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 == 5) {
                    zzf(4);
                    return true;
                }
                throw zzajk.zza();
            }
            do {
                zzi = zzi();
                if (zzi == 0) {
                    break;
                }
            } while (zze(zzi));
            zzc(((i >>> 3) << 3) | 4);
            return true;
        }
        zzf(zzx());
        return true;
    }
}
