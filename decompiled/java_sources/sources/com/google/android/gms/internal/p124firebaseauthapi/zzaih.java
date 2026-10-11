package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzaih extends zzaic {
    private final InputStream zze;
    private final byte[] zzf;
    private int zzg;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private zzaig zzm;

    private final void zzaa() {
        int i = this.zzg + this.zzh;
        this.zzg = i;
        int i2 = this.zzk + i;
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
        if (this.zzi == this.zzg) {
            zzg(1);
        }
        byte[] bArr = this.zzf;
        int i = this.zzi;
        this.zzi = i + 1;
        return bArr[i];
    }

    private final int zzw() throws IOException {
        int i = this.zzi;
        if (this.zzg - i < 4) {
            zzg(4);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
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
            byte[] r2 = r5.zzf
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzaih.zzx():int");
    }

    private final long zzy() throws IOException {
        int i = this.zzi;
        if (this.zzg - i < 8) {
            zzg(8);
            i = this.zzi;
        }
        byte[] bArr = this.zzf;
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.p124firebaseauthapi.zzaih.zzz():long");
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
        return this.zzk + this.zzi;
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
            this.zzj = 0;
            return 0;
        }
        int zzx = zzx();
        this.zzj = zzx;
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
        int zzx = zzx();
        int i = this.zzg;
        int i2 = this.zzi;
        if (zzx <= i - i2 && zzx > 0) {
            zzaho zza = zzaho.zza(this.zzf, i2, zzx);
            this.zzi += zzx;
            return zza;
        }
        if (zzx == 0) {
            return zzaho.zza;
        }
        if (zzx < 0) {
            throw zzajk.zzf();
        }
        byte[] zzj = zzj(zzx);
        if (zzj != null) {
            return zzaho.zza(zzj);
        }
        int i3 = this.zzi;
        int i4 = this.zzg;
        int i5 = i4 - i3;
        this.zzk += i4;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzf = zzf(zzx - i5);
        byte[] bArr = new byte[zzx];
        System.arraycopy(this.zzf, i3, bArr, 0, i5);
        for (byte[] bArr2 : zzf) {
            System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
            i5 += bArr2.length;
        }
        return zzaho.zzb(bArr);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final String zzr() throws IOException {
        int zzx = zzx();
        if (zzx > 0) {
            int i = this.zzg;
            int i2 = this.zzi;
            if (zzx <= i - i2) {
                String str = new String(this.zzf, i2, zzx, zzajh.zza);
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
        if (zzx > this.zzg) {
            return new String(zza(zzx, false), zzajh.zza);
        }
        zzg(zzx);
        String str2 = new String(this.zzf, this.zzi, zzx, zzajh.zza);
        this.zzi += zzx;
        return str2;
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final String zzs() throws IOException {
        byte[] zza;
        int zzx = zzx();
        int i = this.zzi;
        int i2 = this.zzg;
        if (zzx <= i2 - i && zzx > 0) {
            zza = this.zzf;
            this.zzi = i + zzx;
        } else {
            if (zzx == 0) {
                return "";
            }
            if (zzx < 0) {
                throw zzajk.zzf();
            }
            i = 0;
            if (zzx <= i2) {
                zzg(zzx);
                zza = this.zzf;
                this.zzi = zzx;
            } else {
                zza = zza(zzx, false);
            }
        }
        return zzamn.zzb(zza, i, zzx);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final boolean zzt() throws IOException {
        return this.zzi == this.zzg && !zzi(1);
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final boolean zzu() throws IOException {
        return zzz() != 0;
    }

    private zzaih(InputStream inputStream, int i) {
        super();
        this.zzl = Integer.MAX_VALUE;
        this.zzm = null;
        zzajh.zza(inputStream, "input");
        this.zze = inputStream;
        this.zzf = new byte[4096];
        this.zzg = 0;
        this.zzi = 0;
        this.zzk = 0;
    }

    private static int zza(InputStream inputStream) throws IOException {
        try {
            return inputStream.available();
        } catch (zzajk e) {
            e.zzj();
            throw e;
        }
    }

    private final List<byte[]> zzf(int i) throws IOException {
        ArrayList arrayList = new ArrayList();
        while (i > 0) {
            int min = Math.min(i, 4096);
            byte[] bArr = new byte[min];
            int i2 = 0;
            while (i2 < min) {
                int read = this.zze.read(bArr, i2, min - i2);
                if (read != -1) {
                    this.zzk += read;
                    i2 += read;
                } else {
                    throw zzajk.zzi();
                }
            }
            i -= min;
            arrayList.add(bArr);
        }
        return arrayList;
    }

    private final void zzg(int i) throws IOException {
        if (zzi(i)) {
            return;
        }
        if (i > (this.zzc - this.zzk) - this.zzi) {
            throw zzajk.zzh();
        }
        throw zzajk.zzi();
    }

    private final void zzh(int i) throws IOException {
        int i2 = this.zzg;
        int i3 = this.zzi;
        if (i <= i2 - i3 && i >= 0) {
            this.zzi = i3 + i;
            return;
        }
        if (i >= 0) {
            int i4 = this.zzk;
            int i5 = i4 + i3 + i;
            int i6 = this.zzl;
            if (i5 <= i6) {
                this.zzk = i4 + i3;
                int i7 = i2 - i3;
                this.zzg = 0;
                this.zzi = 0;
                while (i7 < i) {
                    try {
                        long j = i - i7;
                        long zza = zza(this.zze, j);
                        if (zza >= 0 && zza <= j) {
                            if (zza == 0) {
                                break;
                            } else {
                                i7 += (int) zza;
                            }
                        } else {
                            throw new IllegalStateException(String.valueOf(this.zze.getClass()) + "#skip returned invalid result: " + zza + "\nThe InputStream implementation is buggy.");
                        }
                    } finally {
                        this.zzk += i7;
                        zzaa();
                    }
                }
                if (i7 >= i) {
                    return;
                }
                int i8 = this.zzg;
                int i9 = i8 - this.zzi;
                this.zzi = i8;
                zzg(1);
                while (true) {
                    int i10 = i - i9;
                    int i11 = this.zzg;
                    if (i10 > i11) {
                        i9 += i11;
                        this.zzi = i11;
                        zzg(1);
                    } else {
                        this.zzi = i10;
                        return;
                    }
                }
            } else {
                zzh((i6 - i4) - i3);
                throw zzajk.zzi();
            }
        } else {
            throw zzajk.zzf();
        }
    }

    private final byte[] zzj(int i) throws IOException {
        if (i == 0) {
            return zzajh.zzb;
        }
        if (i >= 0) {
            int i2 = this.zzk;
            int i3 = this.zzi;
            int i4 = i2 + i3 + i;
            if (i4 - this.zzc <= 0) {
                int i5 = this.zzl;
                if (i4 <= i5) {
                    int i6 = this.zzg - i3;
                    int i7 = i - i6;
                    if (i7 >= 4096 && i7 > zza(this.zze)) {
                        return null;
                    }
                    byte[] bArr = new byte[i];
                    System.arraycopy(this.zzf, this.zzi, bArr, 0, i6);
                    this.zzk += this.zzg;
                    this.zzi = 0;
                    this.zzg = 0;
                    while (i6 < i) {
                        int zza = zza(this.zze, bArr, i6, i - i6);
                        if (zza != -1) {
                            this.zzk += zza;
                            i6 += zza;
                        } else {
                            throw zzajk.zzi();
                        }
                    }
                    return bArr;
                }
                zzh((i5 - i2) - i3);
                throw zzajk.zzi();
            }
            throw zzajk.zzh();
        }
        throw zzajk.zzf();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final int zzb(int i) throws zzajk {
        if (i >= 0) {
            int i2 = i + this.zzk + this.zzi;
            int i3 = this.zzl;
            if (i2 <= i3) {
                this.zzl = i2;
                zzaa();
                return i3;
            }
            throw zzajk.zzi();
        }
        throw zzajk.zzf();
    }

    @Override // com.google.android.gms.internal.p124firebaseauthapi.zzaic
    public final void zzc(int i) throws zzajk {
        if (this.zzj != i) {
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
                    byte[] bArr = this.zzf;
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
            zzh(8);
            return true;
        }
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 == 4) {
                    return false;
                }
                if (i2 == 5) {
                    zzh(4);
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
        zzh(zzx());
        return true;
    }

    private static int zza(InputStream inputStream, byte[] bArr, int i, int i2) throws IOException {
        try {
            return inputStream.read(bArr, i, i2);
        } catch (zzajk e) {
            e.zzj();
            throw e;
        }
    }

    private final boolean zzi(int i) throws IOException {
        do {
            int i2 = this.zzi;
            int i3 = i2 + i;
            int i4 = this.zzg;
            if (i3 > i4) {
                int i5 = this.zzc;
                int i6 = this.zzk;
                if (i > (i5 - i6) - i2 || i6 + i2 + i > this.zzl) {
                    return false;
                }
                if (i2 > 0) {
                    if (i4 > i2) {
                        byte[] bArr = this.zzf;
                        System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                    }
                    this.zzk += i2;
                    this.zzg -= i2;
                    this.zzi = 0;
                }
                InputStream inputStream = this.zze;
                byte[] bArr2 = this.zzf;
                int i7 = this.zzg;
                int zza = zza(inputStream, bArr2, i7, Math.min(bArr2.length - i7, (this.zzc - this.zzk) - i7));
                if (zza == 0 || zza < -1 || zza > this.zzf.length) {
                    throw new IllegalStateException(String.valueOf(this.zze.getClass()) + "#read(byte[]) returned invalid result: " + zza + "\nThe InputStream implementation is buggy.");
                }
                if (zza <= 0) {
                    return false;
                }
                this.zzg += zza;
                zzaa();
            } else {
                throw new IllegalStateException("refillBuffer() called when " + i + " bytes were already available in buffer");
            }
        } while (this.zzg < i);
        return true;
    }

    private static long zza(InputStream inputStream, long j) throws IOException {
        try {
            return inputStream.skip(j);
        } catch (zzajk e) {
            e.zzj();
            throw e;
        }
    }

    private final byte[] zza(int i, boolean z) throws IOException {
        byte[] zzj = zzj(i);
        if (zzj != null) {
            return zzj;
        }
        int i2 = this.zzi;
        int i3 = this.zzg;
        int i4 = i3 - i2;
        this.zzk += i3;
        this.zzi = 0;
        this.zzg = 0;
        List<byte[]> zzf = zzf(i - i4);
        byte[] bArr = new byte[i];
        System.arraycopy(this.zzf, i2, bArr, 0, i4);
        for (byte[] bArr2 : zzf) {
            System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
            i4 += bArr2.length;
        }
        return bArr;
    }
}
