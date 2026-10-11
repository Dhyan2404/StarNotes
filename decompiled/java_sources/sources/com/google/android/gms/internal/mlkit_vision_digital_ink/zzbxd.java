package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzbxd {
    private static final zzbxd zza = new zzbxd(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzbxd(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzbxd zzc() {
        return zza;
    }

    public static zzbxd zze(zzbxd zzbxdVar, zzbxd zzbxdVar2) {
        int i = zzbxdVar.zzb + zzbxdVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzbxdVar.zzc, i);
        System.arraycopy(zzbxdVar2.zzc, 0, copyOf, zzbxdVar.zzb, zzbxdVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzbxdVar.zzd, i);
        System.arraycopy(zzbxdVar2.zzd, 0, copyOf2, zzbxdVar.zzb, zzbxdVar2.zzb);
        return new zzbxd(i, copyOf, copyOf2, true);
    }

    public static zzbxd zzf() {
        return new zzbxd(0, new int[8], new Object[8], true);
    }

    private final void zzm(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = i2 + (i2 / 2);
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzbxd)) {
            return false;
        }
        zzbxd zzbxdVar = (zzbxd) obj;
        int i = this.zzb;
        if (i == zzbxdVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzbxdVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzbxdVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
                if (iArr[i2] != iArr2[i2]) {
                    break;
                }
                i2++;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = i + 527;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 * 31) + i4;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return (i6 * 31) + i3;
    }

    public final int zza() {
        int zzN;
        int zzM;
        int i;
        int i2 = this.zze;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.zzb; i4++) {
            int i5 = this.zzc[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 != 0) {
                if (i7 == 1) {
                    ((Long) this.zzd[i4]).longValue();
                    i = zzbtm.zzM(i6 << 3) + 8;
                } else if (i7 == 2) {
                    zzbsz zzbszVar = (zzbsz) this.zzd[i4];
                    int i8 = zzbtm.zzf;
                    int zzd = zzbszVar.zzd();
                    i = zzbtm.zzM(i6 << 3) + zzbtm.zzM(zzd) + zzd;
                } else if (i7 == 3) {
                    int zzL = zzbtm.zzL(i6);
                    zzN = ((zzbxd) this.zzd[i4]).zza();
                    zzM = zzL + zzL;
                } else {
                    if (i7 != 5) {
                        throw new IllegalStateException(zzbut.zza());
                    }
                    ((Integer) this.zzd[i4]).intValue();
                    i = zzbtm.zzM(i6 << 3) + 4;
                }
                i3 += i;
            } else {
                int i9 = i6 << 3;
                zzN = zzbtm.zzN(((Long) this.zzd[i4]).longValue());
                zzM = zzbtm.zzM(i9);
            }
            i = zzM + zzN;
            i3 += i;
        }
        this.zze = i3;
        return i3;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3] >>> 3;
            zzbsz zzbszVar = (zzbsz) this.zzd[i3];
            int i5 = zzbtm.zzf;
            int zzd = zzbszVar.zzd();
            int zzM = zzbtm.zzM(zzd) + zzd;
            int zzM2 = zzbtm.zzM(16);
            int zzM3 = zzbtm.zzM(i4);
            int zzM4 = zzbtm.zzM(8);
            i2 += zzM4 + zzM4 + zzM2 + zzM3 + zzbtm.zzM(24) + zzM;
        }
        this.zze = i2;
        return i2;
    }

    public final zzbxd zzd(zzbxd zzbxdVar) {
        if (zzbxdVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzbxdVar.zzb;
        zzm(i);
        System.arraycopy(zzbxdVar.zzc, 0, this.zzc, this.zzb, zzbxdVar.zzb);
        System.arraycopy(zzbxdVar.zzd, 0, this.zzd, this.zzb, zzbxdVar.zzb);
        this.zzb = i;
        return this;
    }

    public final void zzg() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        this.zzf = false;
    }

    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzbvw.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzj(int i, Object obj) {
        zzg();
        zzm(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzk(zzbxu zzbxuVar) throws IOException {
        for (int i = 0; i < this.zzb; i++) {
            zzbxuVar.zzx(this.zzc[i] >>> 3, this.zzd[i]);
        }
    }

    public final void zzl(zzbxu zzbxuVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 == 0) {
                    zzbxuVar.zzt(i4, ((Long) obj).longValue());
                } else if (i3 == 1) {
                    zzbxuVar.zzm(i4, ((Long) obj).longValue());
                } else if (i3 == 2) {
                    zzbxuVar.zzd(i4, (zzbsz) obj);
                } else if (i3 == 3) {
                    zzbxuVar.zzG(i4);
                    ((zzbxd) obj).zzl(zzbxuVar);
                    zzbxuVar.zzh(i4);
                } else {
                    if (i3 != 5) {
                        throw new RuntimeException(zzbut.zza());
                    }
                    zzbxuVar.zzk(i4, ((Integer) obj).intValue());
                }
            }
        }
    }

    private zzbxd() {
        this(0, new int[8], new Object[8], true);
    }
}
