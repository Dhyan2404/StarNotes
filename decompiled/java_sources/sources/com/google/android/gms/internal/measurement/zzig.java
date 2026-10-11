package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjt;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzig {
    private static volatile int zza = 100;

    public static double zza(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzd(bArr, i));
    }

    public static float zzb(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzc(bArr, i));
    }

    public static int zzc(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzd(byte[] bArr, int i, zzij zzijVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzijVar.zzb = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            i4 += 7;
            j2 |= (r10 & Byte.MAX_VALUE) << i4;
            b = bArr[i3];
            i3 = i5;
        }
        zzijVar.zzb = j2;
        return i3;
    }

    public static int zza(byte[] bArr, int i, zzij zzijVar) throws zzkb {
        int zzc = zzc(bArr, i, zzijVar);
        int i2 = zzijVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zzc) {
                throw zzkb.zzi();
            }
            if (i2 == 0) {
                zzijVar.zzc = zzik.zza;
                return zzc;
            }
            zzijVar.zzc = zzik.zza(bArr, zzc, i2);
            return zzc + i2;
        }
        throw zzkb.zzf();
    }

    public static int zzb(zzlu<?> zzluVar, int i, byte[] bArr, int i2, int i3, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int zza2 = zza(zzluVar, bArr, i2, i3, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (zza2 < i3) {
            int zzc = zzc(bArr, zza2, zzijVar);
            if (i != zzijVar.zza) {
                break;
            }
            zza2 = zza(zzluVar, bArr, zzc, i3, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return zza2;
    }

    public static int zzc(byte[] bArr, int i, zzij zzijVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzijVar.zza = b;
            return i2;
        }
        return zza(b, bArr, i2, zzijVar);
    }

    public static long zzd(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int zzb(byte[] bArr, int i, zzij zzijVar) throws zzkb {
        int zzc = zzc(bArr, i, zzijVar);
        int i2 = zzijVar.zza;
        if (i2 < 0) {
            throw zzkb.zzf();
        }
        if (i2 == 0) {
            zzijVar.zzc = "";
            return zzc;
        }
        zzijVar.zzc = zzmp.zzb(bArr, zzc, i2);
        return zzc + i2;
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, Object obj, zzlc zzlcVar, zzmk<zzmj, zzmj> zzmkVar, zzij zzijVar) throws IOException {
        if (zzijVar.zzd.zza(zzlcVar, i >>> 3) == null) {
            return zza(i, bArr, i2, i3, zzlg.zzc(obj), zzijVar);
        }
        zzjt.zzd zzdVar = (zzjt.zzd) obj;
        zzdVar.zza();
        zzjm<zzjt.zzc> zzjmVar = zzdVar.zzc;
        throw new NoSuchMethodError();
    }

    private static int zza(zzlu zzluVar, byte[] bArr, int i, int i2, int i3, zzij zzijVar) throws IOException {
        Object zza2 = zzluVar.zza();
        int zza3 = zza(zza2, zzluVar, bArr, i, i2, i3, zzijVar);
        zzluVar.zzd(zza2);
        zzijVar.zzc = zza2;
        return zza3;
    }

    public static int zza(zzlu zzluVar, int i, byte[] bArr, int i2, int i3, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        int i4 = (i & (-8)) | 4;
        int zza2 = zza(zzluVar, bArr, i2, i3, i4, zzijVar);
        zzkcVar.add(zzijVar.zzc);
        while (zza2 < i3) {
            int zzc = zzc(bArr, zza2, zzijVar);
            if (i != zzijVar.zza) {
                break;
            }
            zza2 = zza(zzluVar, bArr, zzc, i3, i4, zzijVar);
            zzkcVar.add(zzijVar.zzc);
        }
        return zza2;
    }

    public static int zza(zzlu zzluVar, byte[] bArr, int i, int i2, zzij zzijVar) throws IOException {
        Object zza2 = zzluVar.zza();
        int zza3 = zza(zza2, zzluVar, bArr, i, i2, zzijVar);
        zzluVar.zzd(zza2);
        zzijVar.zzc = zza2;
        return zza3;
    }

    public static int zza(byte[] bArr, int i, zzkc<?> zzkcVar, zzij zzijVar) throws IOException {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int zzc = zzc(bArr, i, zzijVar);
        int i2 = zzijVar.zza + zzc;
        while (zzc < i2) {
            zzc = zzc(bArr, zzc, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        if (zzc == i2) {
            return zzc;
        }
        throw zzkb.zzi();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzmj zzmjVar, zzij zzijVar) throws zzkb {
        if ((i >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzd = zzd(bArr, i2, zzijVar);
            zzmjVar.zza(i, Long.valueOf(zzijVar.zzb));
            return zzd;
        }
        if (i4 == 1) {
            zzmjVar.zza(i, Long.valueOf(zzd(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zzc = zzc(bArr, i2, zzijVar);
            int i5 = zzijVar.zza;
            if (i5 >= 0) {
                if (i5 > bArr.length - zzc) {
                    throw zzkb.zzi();
                }
                if (i5 == 0) {
                    zzmjVar.zza(i, zzik.zza);
                } else {
                    zzmjVar.zza(i, zzik.zza(bArr, zzc, i5));
                }
                return zzc + i5;
            }
            throw zzkb.zzf();
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzmjVar.zza(i, Integer.valueOf(zzc(bArr, i2)));
                return i2 + 4;
            }
            throw zzkb.zzc();
        }
        zzmj zzd2 = zzmj.zzd();
        int i6 = (i & (-8)) | 4;
        int i7 = zzijVar.zze + 1;
        zzijVar.zze = i7;
        zza(i7);
        int i8 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zzc2 = zzc(bArr, i2, zzijVar);
            int i9 = zzijVar.zza;
            i8 = i9;
            if (i9 == i6) {
                i2 = zzc2;
                break;
            }
            int zza2 = zza(i8, bArr, zzc2, i3, zzd2, zzijVar);
            i8 = i9;
            i2 = zza2;
        }
        zzijVar.zze--;
        if (i2 <= i3 && i8 == i6) {
            zzmjVar.zza(i, zzd2);
            return i2;
        }
        throw zzkb.zzg();
    }

    public static int zza(int i, byte[] bArr, int i2, zzij zzijVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzijVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzijVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzijVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzijVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzijVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzkc<?> zzkcVar, zzij zzijVar) {
        zzjw zzjwVar = (zzjw) zzkcVar;
        int zzc = zzc(bArr, i2, zzijVar);
        zzjwVar.zzd(zzijVar.zza);
        while (zzc < i3) {
            int zzc2 = zzc(bArr, zzc, zzijVar);
            if (i != zzijVar.zza) {
                break;
            }
            zzc = zzc(bArr, zzc2, zzijVar);
            zzjwVar.zzd(zzijVar.zza);
        }
        return zzc;
    }

    public static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i, int i2, int i3, zzij zzijVar) throws IOException {
        zzlg zzlgVar = (zzlg) zzluVar;
        int i4 = zzijVar.zze + 1;
        zzijVar.zze = i4;
        zza(i4);
        int zza2 = zzlgVar.zza((zzlg) obj, bArr, i, i2, i3, zzijVar);
        zzijVar.zze--;
        zzijVar.zzc = obj;
        return zza2;
    }

    public static int zza(Object obj, zzlu zzluVar, byte[] bArr, int i, int i2, zzij zzijVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zza(i4, bArr, i3, zzijVar);
            i4 = zzijVar.zza;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = zzijVar.zze + 1;
            zzijVar.zze = i6;
            zza(i6);
            int i7 = i4 + i5;
            zzluVar.zza(obj, bArr, i5, i7, zzijVar);
            zzijVar.zze--;
            zzijVar.zzc = obj;
            return i7;
        }
        throw zzkb.zzi();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzij zzijVar) throws zzkb {
        if ((i >>> 3) == 0) {
            throw zzkb.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzd(bArr, i2, zzijVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzc(bArr, i2, zzijVar) + zzijVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzkb.zzc();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzc(bArr, i2, zzijVar);
            i6 = zzijVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zza(i6, bArr, i2, i3, zzijVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzkb.zzg();
        }
        return i2;
    }

    private static void zza(int i) throws zzkb {
        if (i >= zza) {
            throw zzkb.zzh();
        }
    }
}
