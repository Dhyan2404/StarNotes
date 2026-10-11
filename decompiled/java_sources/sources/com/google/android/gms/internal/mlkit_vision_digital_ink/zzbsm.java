package com.google.android.gms.internal.mlkit_vision_digital_ink;

import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public final class zzbsm {
    public static int zza(byte[] bArr, int i, zzbsl zzbslVar) throws zzbut {
        int zzj = zzj(bArr, i, zzbslVar);
        int i2 = zzbslVar.zza;
        if (i2 < 0) {
            throw zzbut.zzf();
        }
        if (i2 > bArr.length - zzj) {
            throw zzbut.zzj();
        }
        if (i2 == 0) {
            zzbslVar.zzc = zzbsz.zzb;
            return zzj;
        }
        zzbslVar.zzc = zzbsz.zzm(bArr, zzj, i2);
        return zzj + i2;
    }

    public static int zzb(byte[] bArr, int i) {
        int i2 = bArr[i] & 255;
        int i3 = bArr[i + 1] & 255;
        int i4 = bArr[i + 2] & 255;
        return ((bArr[i + 3] & 255) << 24) | (i3 << 8) | i2 | (i4 << 16);
    }

    public static int zzc(zzbwi zzbwiVar, byte[] bArr, int i, int i2, int i3, zzbsl zzbslVar) throws IOException {
        Object zze = zzbwiVar.zze();
        int zzn = zzn(zze, zzbwiVar, bArr, i, i2, i3, zzbslVar);
        zzbwiVar.zzf(zze);
        zzbslVar.zzc = zze;
        return zzn;
    }

    public static int zzd(zzbwi zzbwiVar, byte[] bArr, int i, int i2, zzbsl zzbslVar) throws IOException {
        Object zze = zzbwiVar.zze();
        int zzo = zzo(zze, zzbwiVar, bArr, i, i2, zzbslVar);
        zzbwiVar.zzf(zze);
        zzbslVar.zzc = zze;
        return zzo;
    }

    public static int zze(zzbwi zzbwiVar, int i, byte[] bArr, int i2, int i3, zzbuq zzbuqVar, zzbsl zzbslVar) throws IOException {
        int zzd = zzd(zzbwiVar, bArr, i2, i3, zzbslVar);
        zzbuqVar.add(zzbslVar.zzc);
        while (zzd < i3) {
            int zzj = zzj(bArr, zzd, zzbslVar);
            if (i != zzbslVar.zza) {
                break;
            }
            zzd = zzd(zzbwiVar, bArr, zzj, i3, zzbslVar);
            zzbuqVar.add(zzbslVar.zzc);
        }
        return zzd;
    }

    public static int zzf(byte[] bArr, int i, zzbuq zzbuqVar, zzbsl zzbslVar) throws IOException {
        zzbuj zzbujVar = (zzbuj) zzbuqVar;
        int zzj = zzj(bArr, i, zzbslVar);
        int i2 = zzbslVar.zza + zzj;
        while (zzj < i2) {
            zzj = zzj(bArr, zzj, zzbslVar);
            zzbujVar.zzh(zzbslVar.zza);
        }
        if (zzj == i2) {
            return zzj;
        }
        throw zzbut.zzj();
    }

    public static int zzg(byte[] bArr, int i, zzbsl zzbslVar) throws zzbut {
        int zzj = zzj(bArr, i, zzbslVar);
        int i2 = zzbslVar.zza;
        if (i2 < 0) {
            throw zzbut.zzf();
        }
        if (i2 == 0) {
            zzbslVar.zzc = "";
            return zzj;
        }
        zzbslVar.zzc = new String(bArr, zzj, i2, zzbur.zzb);
        return zzj + i2;
    }

    public static int zzh(byte[] bArr, int i, zzbsl zzbslVar) throws zzbut {
        int zzj = zzj(bArr, i, zzbslVar);
        int i2 = zzbslVar.zza;
        if (i2 < 0) {
            throw zzbut.zzf();
        }
        if (i2 == 0) {
            zzbslVar.zzc = "";
            return zzj;
        }
        zzbslVar.zzc = zzbxr.zzd(bArr, zzj, i2);
        return zzj + i2;
    }

    public static int zzi(int i, byte[] bArr, int i2, int i3, zzbxd zzbxdVar, zzbsl zzbslVar) throws zzbut {
        if ((i >>> 3) == 0) {
            throw zzbut.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            int zzm = zzm(bArr, i2, zzbslVar);
            zzbxdVar.zzj(i, Long.valueOf(zzbslVar.zzb));
            return zzm;
        }
        if (i4 == 1) {
            zzbxdVar.zzj(i, Long.valueOf(zzq(bArr, i2)));
            return i2 + 8;
        }
        if (i4 == 2) {
            int zzj = zzj(bArr, i2, zzbslVar);
            int i5 = zzbslVar.zza;
            if (i5 < 0) {
                throw zzbut.zzf();
            }
            if (i5 > bArr.length - zzj) {
                throw zzbut.zzj();
            }
            if (i5 == 0) {
                zzbxdVar.zzj(i, zzbsz.zzb);
            } else {
                zzbxdVar.zzj(i, zzbsz.zzm(bArr, zzj, i5));
            }
            return zzj + i5;
        }
        if (i4 != 3) {
            if (i4 != 5) {
                throw zzbut.zzc();
            }
            zzbxdVar.zzj(i, Integer.valueOf(zzb(bArr, i2)));
            return i2 + 4;
        }
        int i6 = (i & (-8)) | 4;
        zzbxd zzf = zzbxd.zzf();
        int i7 = 0;
        while (true) {
            if (i2 >= i3) {
                break;
            }
            int zzj2 = zzj(bArr, i2, zzbslVar);
            int i8 = zzbslVar.zza;
            i7 = i8;
            if (i8 == i6) {
                i2 = zzj2;
                break;
            }
            int zzi = zzi(i7, bArr, zzj2, i3, zzf, zzbslVar);
            i7 = i8;
            i2 = zzi;
        }
        if (i2 > i3 || i7 != i6) {
            throw zzbut.zzg();
        }
        zzbxdVar.zzj(i, zzf);
        return i2;
    }

    public static int zzj(byte[] bArr, int i, zzbsl zzbslVar) {
        int i2 = i + 1;
        byte b = bArr[i];
        if (b < 0) {
            return zzk(b, bArr, i2, zzbslVar);
        }
        zzbslVar.zza = b;
        return i2;
    }

    public static int zzk(int i, byte[] bArr, int i2, zzbsl zzbslVar) {
        byte b = bArr[i2];
        int i3 = i2 + 1;
        int i4 = i & 127;
        if (b >= 0) {
            zzbslVar.zza = i4 | (b << 7);
            return i3;
        }
        int i5 = i4 | ((b & Byte.MAX_VALUE) << 7);
        int i6 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            zzbslVar.zza = i5 | (b2 << 14);
            return i6;
        }
        int i7 = i5 | ((b2 & Byte.MAX_VALUE) << 14);
        int i8 = i6 + 1;
        byte b3 = bArr[i6];
        if (b3 >= 0) {
            zzbslVar.zza = i7 | (b3 << 21);
            return i8;
        }
        int i9 = i7 | ((b3 & Byte.MAX_VALUE) << 21);
        int i10 = i8 + 1;
        byte b4 = bArr[i8];
        if (b4 >= 0) {
            zzbslVar.zza = i9 | (b4 << 28);
            return i10;
        }
        int i11 = i9 | ((b4 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i12 = i10 + 1;
            if (bArr[i10] >= 0) {
                zzbslVar.zza = i11;
                return i12;
            }
            i10 = i12;
        }
    }

    public static int zzl(int i, byte[] bArr, int i2, int i3, zzbuq zzbuqVar, zzbsl zzbslVar) {
        zzbuj zzbujVar = (zzbuj) zzbuqVar;
        int zzj = zzj(bArr, i2, zzbslVar);
        zzbujVar.zzh(zzbslVar.zza);
        while (zzj < i3) {
            int zzj2 = zzj(bArr, zzj, zzbslVar);
            if (i != zzbslVar.zza) {
                break;
            }
            zzj = zzj(bArr, zzj2, zzbslVar);
            zzbujVar.zzh(zzbslVar.zza);
        }
        return zzj;
    }

    public static int zzm(byte[] bArr, int i, zzbsl zzbslVar) {
        long j = bArr[i];
        int i2 = i + 1;
        if (j >= 0) {
            zzbslVar.zzb = j;
            return i2;
        }
        int i3 = i2 + 1;
        byte b = bArr[i2];
        long j2 = (j & 127) | ((b & Byte.MAX_VALUE) << 7);
        int i4 = 7;
        while (b < 0) {
            int i5 = i3 + 1;
            byte b2 = bArr[i3];
            i4 += 7;
            j2 |= (b2 & Byte.MAX_VALUE) << i4;
            i3 = i5;
            b = b2;
        }
        zzbslVar.zzb = j2;
        return i3;
    }

    public static int zzn(Object obj, zzbwi zzbwiVar, byte[] bArr, int i, int i2, int i3, zzbsl zzbslVar) throws IOException {
        int zzc = ((zzbvx) zzbwiVar).zzc(obj, bArr, i, i2, i3, zzbslVar);
        zzbslVar.zzc = obj;
        return zzc;
    }

    public static int zzo(Object obj, zzbwi zzbwiVar, byte[] bArr, int i, int i2, zzbsl zzbslVar) throws IOException {
        int i3 = i + 1;
        int i4 = bArr[i];
        if (i4 < 0) {
            i3 = zzk(i4, bArr, i3, zzbslVar);
            i4 = zzbslVar.zza;
        }
        int i5 = i3;
        if (i4 < 0 || i4 > i2 - i5) {
            throw zzbut.zzj();
        }
        int i6 = i4 + i5;
        zzbwiVar.zzi(obj, bArr, i5, i6, zzbslVar);
        zzbslVar.zzc = obj;
        return i6;
    }

    public static int zzp(int i, byte[] bArr, int i2, int i3, zzbsl zzbslVar) throws zzbut {
        if ((i >>> 3) == 0) {
            throw zzbut.zzc();
        }
        int i4 = i & 7;
        if (i4 == 0) {
            return zzm(bArr, i2, zzbslVar);
        }
        if (i4 == 1) {
            return i2 + 8;
        }
        if (i4 == 2) {
            return zzj(bArr, i2, zzbslVar) + zzbslVar.zza;
        }
        if (i4 != 3) {
            if (i4 == 5) {
                return i2 + 4;
            }
            throw zzbut.zzc();
        }
        int i5 = (i & (-8)) | 4;
        int i6 = 0;
        while (i2 < i3) {
            i2 = zzj(bArr, i2, zzbslVar);
            i6 = zzbslVar.zza;
            if (i6 == i5) {
                break;
            }
            i2 = zzp(i6, bArr, i2, i3, zzbslVar);
        }
        if (i2 > i3 || i6 != i5) {
            throw zzbut.zzg();
        }
        return i2;
    }

    public static long zzq(byte[] bArr, int i) {
        return (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
    }
}
