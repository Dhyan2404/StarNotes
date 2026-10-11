package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes5.dex */
public final class zzamf {
    private static final zzamf zza = new zzamf(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzamf() {
        this(0, new int[8], new Object[8], true);
    }

    public static zzamf zzc() {
        return zza;
    }

    public static zzamf zzd() {
        return new zzamf();
    }

    private final void zzf() {
        if (!this.zzf) {
            throw new UnsupportedOperationException();
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzamf)) {
            return false;
        }
        zzamf zzamfVar = (zzamf) obj;
        int i = this.zzb;
        if (i == zzamfVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzamfVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 >= i) {
                    z = true;
                    break;
                }
                if (iArr[i2] != iArr2[i2]) {
                    z = false;
                    break;
                }
                i2++;
            }
            if (z) {
                Object[] objArr = this.zzd;
                Object[] objArr2 = zzamfVar.zzd;
                int i3 = this.zzb;
                int i4 = 0;
                while (true) {
                    if (i4 >= i3) {
                        z2 = true;
                        break;
                    }
                    if (!objArr[i4].equals(objArr2[i4])) {
                        z2 = false;
                        break;
                    }
                    i4++;
                }
                if (z2) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zze;
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            int i4 = this.zzc[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 == 0) {
                zze = zzaim.zze(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 1) {
                zze = zzaim.zza(i5, ((Long) this.zzd[i3]).longValue());
            } else if (i6 == 2) {
                zze = zzaim.zza(i5, (zzaho) this.zzd[i3]);
            } else if (i6 == 3) {
                zze = (zzaim.zzi(i5) << 1) + ((zzamf) this.zzd[i3]).zza();
            } else if (i6 == 5) {
                zze = zzaim.zzc(i5, ((Integer) this.zzd[i3]).intValue());
            } else {
                throw new IllegalStateException(zzajk.zza());
            }
            i2 += zze;
        }
        this.zze = i2;
        return i2;
    }

    public final int zzb() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            i2 += zzaim.zzb(this.zzc[i3] >>> 3, (zzaho) this.zzd[i3]);
        }
        this.zze = i2;
        return i2;
    }

    public final void zze() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    private zzamf(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public final void zzb(zzanc zzancVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzancVar.zza() == zzanf.zza) {
            for (int i = 0; i < this.zzb; i++) {
                zza(this.zzc[i], this.zzd[i], zzancVar);
            }
            return;
        }
        for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
            zza(this.zzc[i2], this.zzd[i2], zzancVar);
        }
    }

    public final zzamf zza(zzamf zzamfVar) {
        if (zzamfVar.equals(zza)) {
            return this;
        }
        zzf();
        int i = this.zzb + zzamfVar.zzb;
        zza(i);
        System.arraycopy(zzamfVar.zzc, 0, this.zzc, this.zzb, zzamfVar.zzb);
        System.arraycopy(zzamfVar.zzd, 0, this.zzd, this.zzb, zzamfVar.zzb);
        this.zzb = i;
        return this;
    }

    public static zzamf zza(zzamf zzamfVar, zzamf zzamfVar2) {
        int i = zzamfVar.zzb + zzamfVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzamfVar.zzc, i);
        System.arraycopy(zzamfVar2.zzc, 0, copyOf, zzamfVar.zzb, zzamfVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzamfVar.zzd, i);
        System.arraycopy(zzamfVar2.zzd, 0, copyOf2, zzamfVar.zzb, zzamfVar2.zzb);
        return new zzamf(i, copyOf, copyOf2, true);
    }

    private final void zza(int i) {
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

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzakq.zza(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zza(int i, Object obj) {
        zzf();
        zza(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zza(zzanc zzancVar) throws IOException {
        if (zzancVar.zza() == zzanf.zzb) {
            for (int i = this.zzb - 1; i >= 0; i--) {
                zzancVar.zza(this.zzc[i] >>> 3, this.zzd[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzancVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
        }
    }

    private static void zza(int i, Object obj, zzanc zzancVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzancVar.zzb(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 1) {
            zzancVar.zza(i2, ((Long) obj).longValue());
            return;
        }
        if (i3 == 2) {
            zzancVar.zza(i2, (zzaho) obj);
            return;
        }
        if (i3 != 3) {
            if (i3 == 5) {
                zzancVar.zzb(i2, ((Integer) obj).intValue());
                return;
            }
            throw new RuntimeException(zzajk.zza());
        }
        if (zzancVar.zza() == zzanf.zza) {
            zzancVar.zzb(i2);
            ((zzamf) obj).zzb(zzancVar);
            zzancVar.zza(i2);
        } else {
            zzancVar.zza(i2);
            ((zzamf) obj).zzb(zzancVar);
            zzancVar.zzb(i2);
        }
    }
}
