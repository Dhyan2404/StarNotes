package com.google.android.gms.internal.p124firebaseauthapi;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzahk {
    public static double zza(byte[] bArr, int i) {
        return Double.longBitsToDouble(zzd(bArr, i));
    }

    public static float zzb(byte[] bArr, int i) {
        return Float.intBitsToFloat(zzc(bArr, i));
    }

    public static int zzc(byte[] bArr, int i) {
        return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
    }

    public static int zzd(byte[] bArr, int i, zzahn zzahnVar) {
        int i2 = i + 1;
        long j = bArr[i];
        if (j >= 0) {
            zzahnVar.zzb = j;
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
        zzahnVar.zzb = j2;
        return i3;
    }

    public static int zza(byte[] bArr, int i, zzahn zzahnVar) throws zzajk {
        int zzc = zzc(bArr, i, zzahnVar);
        int i2 = zzahnVar.zza;
        if (i2 >= 0) {
            if (i2 > bArr.length - zzc) {
                throw zzajk.zzi();
            }
            if (i2 == 0) {
                zzahnVar.zzc = zzaho.zza;
                return zzc;
            }
            zzahnVar.zzc = zzaho.zza(bArr, zzc, i2);
            return zzc + i2;
        }
        throw zzajk.zzf();
    }

    public static int zzb(byte[] bArr, int i, zzahn zzahnVar) throws zzajk {
        int zzc = zzc(bArr, i, zzahnVar);
        int i2 = zzahnVar.zza;
        if (i2 < 0) {
            throw zzajk.zzf();
        }
        if (i2 == 0) {
            zzahnVar.zzc = "";
            return zzc;
        }
        zzahnVar.zzc = zzamn.zzb(bArr, zzc, i2);
        return zzc + i2;
    }

    public static int zzc(byte[] bArr, int i, zzahn zzahnVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b >= 0) {
            zzahnVar.zza = b;
            return i2;
        }
        return zza(b, bArr, i2, zzahnVar);
    }

    public static long zzd(byte[] bArr, int i) {
        return ((bArr[i + 7] & 255) << 56) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48);
    }

    public static int zza(zzalh zzalhVar, byte[] bArr, int i, int i2, int i3, zzahn zzahnVar) throws IOException {
        Object zza = zzalhVar.zza();
        int zza2 = zza(zza, zzalhVar, bArr, i, i2, i3, zzahnVar);
        zzalhVar.zzc(zza);
        zzahnVar.zzc = zza;
        return zza2;
    }

    public static int zza(zzalh zzalhVar, byte[] bArr, int i, int i2, zzahn zzahnVar) throws IOException {
        Object zza = zzalhVar.zza();
        int zza2 = zza(zza, zzalhVar, bArr, i, i2, zzahnVar);
        zzalhVar.zzc(zza);
        zzahnVar.zzc = zza;
        return zza2;
    }

    public static int zza(zzalh<?> zzalhVar, int i, byte[] bArr, int i2, int i3, zzajl<?> zzajlVar, zzahn zzahnVar) throws IOException {
        int zza = zza(zzalhVar, bArr, i2, i3, zzahnVar);
        zzajlVar.add(zzahnVar.zzc);
        while (zza < i3) {
            int zzc = zzc(bArr, zza, zzahnVar);
            if (i != zzahnVar.zza) {
                break;
            }
            zza = zza(zzalhVar, bArr, zzc, i3, zzahnVar);
            zzajlVar.add(zzahnVar.zzc);
        }
        return zza;
    }

    public static int zza(byte[] bArr, int i, zzajl<?> zzajlVar, zzahn zzahnVar) throws IOException {
        zzajf zzajfVar = (zzajf) zzajlVar;
        int zzc = zzc(bArr, i, zzahnVar);
        int i2 = zzahnVar.zza + zzc;
        while (zzc < i2) {
            zzc = zzc(bArr, zzc, zzahnVar);
            zzajfVar.zzc(zzahnVar.zza);
        }
        if (zzc == i2) {
            return zzc;
        }
        throw zzajk.zzi();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzamf zzamfVar, zzahn zzahnVar) throws zzajk {
        if ((i >>> 3) == 0) {
            throw zzajk.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzd = zzd(bArr, i2, zzahnVar);
            zzamfVar.zza(i, Long.valueOf(zzahnVar.zzb));
            return zzd;
        }
        if (i4 == 1) {
            zzamfVar.zza(i, Long.valueOf(zzd(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zzc = zzc(bArr, i2, zzahnVar);
            int i5 = zzahnVar.zza;
            if (i5 >= 0) {
                if (i5 > bArr.length - zzc) {
                    throw zzajk.zzi();
                }
                if (i5 == 0) {
                    zzamfVar.zza(i, zzaho.zza);
                } else {
                    zzamfVar.zza(i, zzaho.zza(bArr, zzc, i5));
                }
                return zzc + i5;
            }
            throw zzajk.zzf();
        }
        if (i4 != 3) {
            if (i4 == 5) {
                zzamfVar.zza(i, Integer.valueOf(zzc(bArr, i2)));
                return i2 + 4;
            }
            throw zzajk.zzc();
        }
        zzamf zzd2 = zzamf.zzd();
        int i6 = (i & (-8)) | 4;
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zzc2 = zzc(bArr, i2, zzahnVar);
            int i8 = zzahnVar.zza;
            i7 = i8;
            if (i8 == i6) {
                i2 = zzc2;
                break;
            }
            int zza = zza(i7, bArr, zzc2, i3, zzd2, zzahnVar);
            i7 = i8;
            i2 = zza;
        }
        if (i2 <= i3 && i7 == i6) {
            zzamfVar.zza(i, zzd2);
            return i2;
        }
        throw zzajk.zzg();
    }

    public static int zza(int i, byte[] bArr, int i2, zzahn zzahnVar) {
        int i3 = i & 127;
        int i4 = i2 + 1;
        byte b = bArr[i2];
        if (b >= 0) {
            zzahnVar.zza = i3 | (b << 7);
            return i4;
        }
        int i5 = i3 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i4 + 1;
        byte b2 = bArr[i4];
        if (b2 >= 0) {
            zzahnVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzahnVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzahnVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzahnVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzajl<?> zzajlVar, zzahn zzahnVar) {
        zzajf zzajfVar = (zzajf) zzajlVar;
        int zzc = zzc(bArr, i2, zzahnVar);
        zzajfVar.zzc(zzahnVar.zza);
        while (zzc < i3) {
            int zzc2 = zzc(bArr, zzc, zzahnVar);
            if (i != zzahnVar.zza) {
                break;
            }
            zzc = zzc(bArr, zzc2, zzahnVar);
            zzajfVar.zzc(zzahnVar.zza);
        }
        return zzc;
    }

    public static int zza(Object obj, zzalh zzalhVar, byte[] bArr, int i, int i2, int i3, zzahn zzahnVar) throws IOException {
        int zza = ((zzakt) zzalhVar).zza((zzakt) obj, bArr, i, i2, i3, zzahnVar);
        zzahnVar.zzc = obj;
        return zza;
    }

    public static int zza(Object obj, zzalh zzalhVar, byte[] bArr, int i, int i2, zzahn zzahnVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zza(i4, bArr, i3, zzahnVar);
            i4 = zzahnVar.zza;
        }
        int i5 = i3;
        if (i4 >= 0 && i4 <= i2 - i5) {
            int i6 = i4 + i5;
            zzalhVar.zza(obj, bArr, i5, i6, zzahnVar);
            zzahnVar.zzc = obj;
            return i6;
        }
        throw zzajk.zzi();
    }

    public static int zza(int i, byte[] bArr, int i2, int i3, zzahn zzahnVar) throws zzajk {
        if ((i >>> 3) == 0) {
            throw zzajk.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzd(bArr, i2, zzahnVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzc(bArr, i2, zzahnVar) + zzahnVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzajk.zzc();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzc(bArr, i2, zzahnVar);
            i6 = zzahnVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zza(i6, bArr, i2, i3, zzahnVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzajk.zzg();
        }
        return i2;
    }
}
